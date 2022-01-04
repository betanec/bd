--1 запрос на вытягивание тех кто осуществлял перелет в аэропорту OVB летя бизнес классом
select	
		passenger_name,
		contact_data::json->'phone' as client_phone,
		contact_data::json->'email' as client_email 
		FROM tickets
		where passenger_id in (SELECT DISTINCT passenger_id
FROM bookings b
LEFT JOIN tickets AS t
    ON t.book_ref = b.book_ref
LEFT JOIN boarding_passes AS bp
    ON bp.ticket_no = t.ticket_no
LEFT JOIN ticket_flights AS tf
	ON tf.ticket_no = t.ticket_no
LEFT JOIN flights AS f
    ON f.flight_id = bp.flight_id
WHERE
tf.fare_conditions = 'Business'
AND f.departure_airport = 'OVB'
AND f.scheduled_departure::date = bookings.now()::date - INTERVAL '2 day');
--description 
1.	Aggregate (rows=18271 loops=1)	18271	1		2.	Nested Loop Inner Join (rows=26492 loops=1)	26492	1		3.	Nested Loop Left Join (rows=26492 loops=1)
Filter: ((((tf.fare_conditions)::text = 'Business'::text) AND (f.arrival_airport = 'OVB'::bpchar)) OR ((f.departure_airport = 'OVB'::bpchar) AND ((f.scheduled_departure)::date = (('2017-08-15 18:00:00+03'::timestamp with time zone)::date - '2 days'::interval))))
Rows Removed by Filter: 247182
26492	1		4.	Nested Loop Inner Join (rows=88360 loops=1)	88360	1		5.	Hash Inner Join (rows=88360 loops=1)
Hash Cond: (bp.flight_id = f.flight_id)
88360	1		6.	Seq Scan on boarding_passes as bp (rows=1894295 loops=1)	1894295	1		7.	Hash (rows=2108 loops=1)
Buckets: 4096 Batches: 1 Memory Usage: 148 kB
2108	1		8.	Seq Scan on flights as f (rows=2108 loops=1)
Filter: ((arrival_airport = 'OVB'::bpchar) OR ((departure_airport = 'OVB'::bpchar) AND ((scheduled_departure)::date = (('2017-08-15 18:00:00+03'::timestamp with time zone)::date - '2 days'::interval))))
Rows Removed by Filter: 63556
2108	1		9.	Index Scan using tickets_pkey on tickets as t (rows=1 loops=88360)
Index Cond: (ticket_no = bp.ticket_no)
1	88360		10.	Index Scan using ticket_flights_pkey on ticket_flights as tf (rows=3 loops=88360)
Index Cond: (ticket_no = t.ticket_no)
3	88360		11.	Index Only Scan using bookings_pkey on bookings as b (rows=1 loops=26492)
Index Cond: (book_ref = t.book_ref)
1	26492
Total query runtime: 2 secs 78 msec.

--2 Anton: Сколько мест оставалось свободными на рейсе PG0404 вчера?
SELECT f.flight_no,
f.scheduled_departure,
f.actual_departure,
f.actual_departure - f.scheduled_departure
AS delay
FROM flights f
WHERE f.actual_departure IS NOT NULL
ORDER BY f.actual_departure - f.scheduled_departure
DESC
LIMIT 10;
--3 Матвей: Как добраться из Усть-Кута (UKX) в Нерюнгри (CNN) с минимальным количеством стыковок, и каково будет время полета?
WITH RECURSIVE p(last_arrival, destination, hops, flights, found) AS (
SELECT a_from.airport_code,
         a_to.airport_code,
         ARRAY[a_from.airport_code],
         ARRAY[]::char(6)[],
         a_from.airport_code = a_to.airport_code
  FROM   airports a_from, airports a_to
  WHERE  a_from.airport_code = 'UKX'
  AND    a_to.airport_code = 'CNN'
  UNION ALL
  SELECT r.arrival_airport,
         p.destination,
         (p.hops || r.arrival_airport)::char(3)[],
         (p.flights || r.flight_no)::char(6)[],
         bool_or(r.arrival_airport = p.destination) OVER ()
  FROM   routes r, p
  WHERE  r.departure_airport = p.last_arrival
  AND    NOT r.arrival_airport = ANY(p.hops)
  AND    NOT p.found
)
SELECT hops,
       flights
FROM   p
WHERE  p.last_arrival = p.destination;

--4 Кто вчера путешествовал из Москвы (SVO) в Новосибирск (OVB) на сиденье 1A и когда был забронирован билет?
SELECT 
  t.passenger_name, 
  b.book_date 
FROM 
  bookings b 
  JOIN tickets t ON t.book_ref = b.book_ref 
  JOIN boarding_passes bp ON bp.ticket_no = t.ticket_no 
  JOIN flights f ON f.flight_id = bp.flight_id 
WHERE 
  f.departure_airport = 'SVO' 
  AND f.arrival_airport = 'OVB' 
  AND f.scheduled_departure :: date = bookings.now():: date - INTERVAL '2 day' 
  AND bp.seat_no = '1A';

--5 Matvey Сколько мест оставалось свободными на рейсе PG0404 вчера?
SELECT 
  count(*) 
FROM 
  (
    SELECT 
      s.seat_no 
    FROM 
      seats s 
    WHERE 
      s.aircraft_code = (
        SELECT 
          aircraft_code 
        FROM 
          flights 
        WHERE 
          flight_no = 'PG0404' 
          AND scheduled_departure :: date = bookings.now():: date - INTERVAL '1 day'
      ) 
    EXCEPT 
    SELECT 
      bp.seat_no 
    FROM 
      boarding_passes bp 
    WHERE 
      bp.flight_id = (
        SELECT 
          flight_id 
        FROM 
          flights 
        WHERE 
          flight_no = 'PG0404' 
          AND scheduled_departure :: date = bookings.now():: date - INTERVAL '1 day'
      )
  ) t;
--Какова кратчайшая продолжительность полета для каждого возможного рейса из Москвы в Санкт-Петербург и сколько
--раз рейс задерживался более чем на час?
--6 Вам нужно учитывать только те рейсы, которые уже прибыли.
  SELECT 
  f.flight_no, 
  f.scheduled_duration, 
  min(f.actual_duration), 
  max(f.actual_duration), 
  sum(
    CASE WHEN f.actual_departure > f.scheduled_departure + INTERVAL '1 hour' THEN 1 ELSE 0 END
  ) delays 
FROM 
  flights_v f 
WHERE 
  f.departure_city = 'Moscow' 
  AND f.arrival_city = 'St. Petersburg' 
  AND f.status = 'Arrived' 
GROUP BY 
  f.flight_no, 
  f.scheduled_duration;

--7 Anton Сколько человек может быть включено в одно бронирование в соответствии с имеющимися данными?
SELECT 
  tt.cnt, 
  count(*) 
FROM 
  (
    SELECT 
      t.book_ref, 
      count(*) cnt 
    FROM 
      tickets t 
    GROUP BY 
      t.book_ref
  ) tt 
GROUP BY 
  tt.cnt 
ORDER BY 
  tt.cnt;
--8 Для каждого билета отобразите все включенные сегменты рейса вместе со временем стыковки. 
SELECT 
  tf.ticket_no, 
  f.departure_airport, 
  f.arrival_airport, 
  f.scheduled_arrival, 
  lead(f.scheduled_departure) OVER w AS next_departure, 
  lead(f.scheduled_departure) OVER w - f.scheduled_arrival AS gap 
FROM 
  bookings b 
  JOIN tickets t ON t.book_ref = b.book_ref 
  JOIN ticket_flights tf ON tf.ticket_no = t.ticket_no 
  JOIN flights f ON tf.flight_id = f.flight_id 
WHERE 
  b.book_date = bookings.now():: date - INTERVAL '7 day' WINDOW w AS (
    PARTITION BY tf.ticket_no 
    ORDER BY 
      f.scheduled_departure
  );


--9 Антон Какие сочетания имени и фамилии встречаются чаще всего? Каково соотношение пассажиров с такими именами к общему числу пассажиров?
SELECT 
  passenger_name, 
  round(
    100.0 * cnt / sum(cnt) OVER (), 
    2
  ) AS percent 
FROM 
  (
    SELECT 
      passenger_name, 
      count(*) cnt 
    FROM 
      tickets 
    GROUP BY 
      passenger_name
  ) t 
ORDER BY 
  percent DESC;

--10 Матвей: Какие сочетания имени и фамилии встречаются чаще всегодля имен и фамилий отдельно 
WITH p AS (
  SELECT 
    left(
      passenger_name, 
      position(' ' IN passenger_name)
    ) AS passenger_name 
  FROM 
    tickets
) 
SELECT 
  passenger_name, 
  round(
    100.0 * cnt / sum(cnt) OVER (), 
    2
  ) AS percent 
FROM 
  (
    SELECT 
      passenger_name, 
      count(*) cnt 
    FROM 
      p 
    GROUP BY 
      passenger_name
  ) t 
ORDER BY 
  percent DESC;

--11 аэропорты отправления и назначения для каждого билета, игнорируя стыковки, и решите, является ли это билетом
в оба конца.
  WITH t AS (
  SELECT 
    ticket_no, 
    a, 
    a[1] departure, 
    a[cardinality(a) ] last_arrival, 
    a[cardinality(a)/ 2 + 1] middle 
  FROM 
    (
      SELECT 
        t.ticket_no, 
        array_agg(
          f.departure_airport 
          ORDER BY 
            f.scheduled_departure
        ) || (
          array_agg(
            f.arrival_airport 
            ORDER BY 
              f.scheduled_departure DESC
          )
        ) [1] AS a 
      FROM 
        tickets t 
        JOIN ticket_flights tf ON tf.ticket_no = t.ticket_no 
        JOIN flights f ON f.flight_id = tf.flight_id 
      GROUP BY 
        t.ticket_no
    ) t
) 
SELECT 
  t.ticket_no, 
  t.a, 
  t.departure, 
  CASE WHEN t.departure = t.last_arrival THEN t.middle ELSE t.last_arrival END arrival, 
  (t.departure = t.last_arrival) return_ticket 
FROM 
  t;

--12 Антон: Каково максимальное количество стыковок, которое может потребоваться, чтобы добраться из любого аэропорта в любой другой аэропорт?
WITH RECURSIVE p(
  departure, last_arrival, destination, 
  hops, found
) AS (
  SELECT 
    a_from.airport_code, 
    a_from.airport_code, 
    a_to.airport_code, 
    array[a_from.airport_code], 
    a_from.airport_code = a_to.airport_code 
  FROM 
    airports a_from, 
    airports a_to 
  UNION ALL 
  SELECT 
    p.departure, 
    r.arrival_airport, 
    p.destination, 
    (p.hops || r.arrival_airport):: char(3) [], 
    bool_or(
      r.arrival_airport = p.destination
    ) OVER (
      PARTITION BY p.departure, p.destination
    ) 
  FROM 
    p 
    JOIN routes r ON r.departure_airport = p.last_arrival 
  WHERE 
    NOT r.arrival_airport = ANY(p.hops) 
    AND NOT p.found
) 
SELECT 
  max(
    cardinality(hops)-1
  ) 
FROM 
  p
WHERE 
  p.last_arrival = p.destination;
--13 Найдите наиболее дисциплинированных пассажиров, которые первыми зарегистрировались на все свои рейсы. 
SELECT t.passenger_name,
t.ticket_no
FROM tickets t
JOIN boarding_passes bp
ON bp.ticket_no = t.ticket_no
GROUP BY t.passenger_name,
t.ticket_no
HAVING max(bp.boarding_no) = 1
AND count(*) > 1;
--14 Cмотрим из каких аэропортов летает чаще всего боинг 777
SELECT foo.city,
        count(foo.city) AS c_c
FROM 
    (SELECT city,
         aircraft_code
    FROM airports AS a
    LEFT JOIN flights AS f
        ON f.departure_airport = a.airport_code
    WHERE aircraft_code = '773') AS foo
GROUP BY  city, foo.aircraft_code;
--15 Определить буквы с пустующими пассажирскими местами
SELECT foo2.final_res,
         foo2.result_W
FROM 
    (SELECT foo.result_W ,
         COUNT(foo.result_W) as final_res
    FROM 
        (SELECT NULLIF (regexp_replace(seat_no,
         '\D','','g'), '')::numeric AS result_D, regexp_replace(seat_no, '[0-9]', '', 'g') AS result_W
        FROM seats
        WHERE aircraft_code = '319') AS foo
        GROUP BY  result_W) AS foo2
    ORDER BY  foo2.final_res asc;

--16 Anton: Сколько мест оставалось свободными на рейсе PG0404 вчера?
SELECT count(*)
FROM flights f
JOIN seats s
ON s.aircraft_code = f.aircraft_code
WHERE f.flight_no = 'PG0404'
AND f.scheduled_departure::date =
bookings.now()::date - INTERVAL '1 day'
AND NOT EXISTS (
SELECT NULL
FROM boarding_passes bp
WHERE bp.flight_id = f.flight_id
AND bp.seat_no = s.seat_no
);
