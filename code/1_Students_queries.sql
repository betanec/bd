create table nenormalizirovannaya (
  "nomer_vedomosti" SERIAL NOT null PRIMARY key, 
  "nazvanie_kursa_lekciy" varchar(100) NOT NULL, 
  "identifikator_kursa_lekciy" int4 NOT NULL, 
  "nomer_gruppi" varchar(10) NOT NULL, 
  "fio_prepodavatelya" varchar(150) NOT NULL, 
  "tabelniy_nomer_prepodavatelya" int4 NOT NULL, 
  "data_kr" date NOT NULL, 
  "svod" json
);
insert into nenormalizirovannaya (
  "nomer_vedomosti", "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", "nomer_gruppi", 
  "fio_prepodavatelya", "tabelniy_nomer_prepodavatelya", 
  "data_kr", "svod"
) 
values 
  (1, 'Взаимосвязь открытых систем', 777, 'M20-504', 'Никифоров А.Ю.', 5, '2021-11-28', '[{"fio_studenta":"Линч Д.Э.","nomer_zachetki":"m2050412","ocenka":"2","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Светширт Э.Т.","nomer_zachetki":"m2050417","ocenka":"3","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Моррисон Д.","nomer_zachetki":"m2050411","ocenka":"4","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Моргунов Е.П.","nomer_zachetki":"m2050414","ocenka":"5","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Новиков Б.А.","nomer_zachetki":"m2050415","ocenka":"5","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Лузанов В.П.","nomer_zachetki":"m2050416","ocenka":"5","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Буданицкий А.В.","nomer_zachetki":"m20504113","ocenka":"5","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Клычков М.Д.","nomer_zachetki":"m2050413","ocenka":"5","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Авраменко А.Д.","nomer_zachetki":"m20504110","ocenka":"5","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Мусаева Я.","nomer_zachetki":"m20504111","ocenka":"5","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Чигур А.","nomer_zachetki":"m2050418","ocenka":"5","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Сан-Сан К.","nomer_zachetki":"m2050419","ocenka":"3","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Дебюсси К.","nomer_zachetki":"m20504112","ocenka":"3","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Равель М.","nomer_zachetki":"m20504114","ocenka":"3","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Дворжак А.","nomer_zachetki":"m20504115","ocenka":"4","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Лозница С.В.","nomer_zachetki":"m20504116","ocenka":"5","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Хржановский И.А.","nomer_zachetki":"m20504117","ocenka":"4","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Клёнский Ю.Г.","nomer_zachetki":"m20504118","ocenka":"4","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Герман А.Ю.","nomer_zachetki":"m20504119","ocenka":"4","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Корнилов Л.Г.","nomer_zachetki":"m20504120","ocenka":"4","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5}

]');
insert into nenormalizirovannaya (
  "nomer_vedomosti", "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", "nomer_gruppi", 
  "fio_prepodavatelya", "tabelniy_nomer_prepodavatelya", 
  "data_kr", "svod"
) 
values 
  (11, 'Взаимосвязь открытых систем', 777, 'M20-514', 'Никифоров А.Ю.', 5, '2021-11-28', '[
{"fio_studenta":"Старостин С.Н.","nomer_zachetki":"m2051422","ocenka":"4","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Алперин М.Е.","nomer_zachetki":"m2051423","ocenka":"4","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Додон Д.Д.","nomer_zachetki":"m2051424","ocenka":"3","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Ростропович М.Л.","nomer_zachetki":"m2051421","ocenka":"4","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Конрад Д.","nomer_zachetki":"m2051426","ocenka":"2","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Тягунов Н.Г.","nomer_zachetki":"m2051428","ocenka":"2","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Фолкнер В.К.","nomer_zachetki":"m2051429","ocenka":"4","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Азимов А.","nomer_zachetki":"m2051431","ocenka":"5","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Дик Ф.К.","nomer_zachetki":"m2051433","ocenka":"4","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5},
{"fio_studenta":"Декард Р.","nomer_zachetki":"m2051434","ocenka":"2","fio_prepodavatelya":"Никифоров А.Ю.","nomer_tabelya_prepodavatelya": 5}


]');
insert into nenormalizirovannaya (
  "nomer_vedomosti", "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", "nomer_gruppi", 
  "fio_prepodavatelya", "tabelniy_nomer_prepodavatelya", 
  "data_kr", "svod"
) 
values 
  (2, 'Основы программирования в ядерной отрасли', 111, 'M20-504', 'Загребаев А.М.', 1, '2021-11-24', '[
{"fio_studenta":"Линч Д.Э.","nomer_zachetki":"m2050412","ocenka":"2","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Светширт Э.Т.","nomer_zachetki":"m2050417","ocenka":"2","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Моррисон Д.","nomer_zachetki":"m2050411","ocenka":"4","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Моргунов Е.П.","nomer_zachetki":"m2050414","ocenka":"3","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Новиков Б.А.","nomer_zachetki":"m2050415","ocenka":"4","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Лузанов В.П.","nomer_zachetki":"m2050416","ocenka":"5","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Буданицкий А.В.","nomer_zachetki":"m20504113","ocenka":"3","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Клычков М.Д.","nomer_zachetki":"m2050413","ocenka":"4","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Авраменко А.Д.","nomer_zachetki":"m20504110","ocenka":"4","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Мусаева Я.","nomer_zachetki":"m20504111","ocenka":"4","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Чигур А.","nomer_zachetki":"m2050418","ocenka":"5","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Сан-Сан К.","nomer_zachetki":"m2050419","ocenka":"3","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Дебюсси К.","nomer_zachetki":"m20504112","ocenka":"2","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Равель М.","nomer_zachetki":"m20504114","ocenka":"2","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Дворжак А.","nomer_zachetki":"m20504115","ocenka":"3","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Лозница С.В.","nomer_zachetki":"m20504116","ocenka":"5","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Хржановский И.А.","nomer_zachetki":"m20504117","ocenka":"4","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Клёнский Ю.Г.","nomer_zachetki":"m20504118","ocenka":"3","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Герман А.Ю.","nomer_zachetki":"m20504119","ocenka":"3","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Корнилов Л.Г.","nomer_zachetki":"m20504120","ocenka":"5","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1}

]');
insert into nenormalizirovannaya (
  "nomer_vedomosti", "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", "nomer_gruppi", 
  "fio_prepodavatelya", "tabelniy_nomer_prepodavatelya", 
  "data_kr", "svod"
) 
values 
  (21, 'Основы программирования в ядерной отрасли', 111, 'M20-514', 'Загребаев А.М.', 1, '2021-11-24', '[{"student_name":"Старостин С.Н.","student_number":"m2051422","grade":"4","teacher_name":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Старостин С.Н.","nomer_zachetki":"m2051422","ocenka":"4","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Алперин М.Е.","nomer_zachetki":"m2051423","ocenka":"3","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Додон Д.Д.","nomer_zachetki":"m2051424","ocenka":"3","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Ростропович М.Л.","nomer_zachetki":"m2051421","ocenka":"4","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Конрад Д.","nomer_zachetki":"m2051426","ocenka":"4","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Тягунов Н.Г.","nomer_zachetki":"m2051428","ocenka":"2","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Фолкнер В.К.","nomer_zachetki":"m2051429","ocenka":"4","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Азимов А.","nomer_zachetki":"m2051431","ocenka":"4","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Дик Ф.К.","nomer_zachetki":"m2051433","ocenka":"3","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1},
{"fio_studenta":"Декард Р.","nomer_zachetki":"m2051434","ocenka":"2","fio_prepodavatelya":"Загребаев А.М.","nomer_tabelya_prepodavatelya": 1}
]'
);
insert into nenormalizirovannaya (
  "nomer_vedomosti", "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", "nomer_gruppi", 
  "fio_prepodavatelya", "tabelniy_nomer_prepodavatelya", 
  "data_kr", "svod"
) 
values 
  (3, 'Основы кибербезопасности в частном секторе', 333, 'M20-504', 'Шаленков И.А.', 8, '2021-11-23', '[
{"fio_studenta":"Линч Д.Э.","nomer_zachetki":"m2050412","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Светширт Э.Т.","nomer_zachetki":"m2050417","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Моррисон Д.","nomer_zachetki":"m2050411","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Моргунов Е.П.","nomer_zachetki":"m2050414","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Новиков Б.А.","nomer_zachetki":"m2050415","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Лузанов В.П.","nomer_zachetki":"m2050416","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Буданицкий А.В.","nomer_zachetki":"m20504113","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Клычков М.Д.","nomer_zachetki":"m2050413","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Авраменко А.Д.","nomer_zachetki":"m20504110","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Мусаева Я.","nomer_zachetki":"m20504111","ocenka":"4","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Чигур А.","nomer_zachetki":"m2050418","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Сан-Сан К.","nomer_zachetki":"m2050419","ocenka":"3","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Дебюсси К.","nomer_zachetki":"m20504112","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Равель М.","nomer_zachetki":"m20504114","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Дворжак А.","nomer_zachetki":"m20504115","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Лозница С.В.","nomer_zachetki":"m20504116","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Хржановский И.А.","nomer_zachetki":"m20504117","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Клёнский Ю.Г.","nomer_zachetki":"m20504118","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Герман А.Ю.","nomer_zachetki":"m20504119","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Корнилов Л.Г.","nomer_zachetki":"m20504120","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8}
]');

insert into nenormalizirovannaya (
  "nomer_vedomosti", "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", "nomer_gruppi", 
  "fio_prepodavatelya", "tabelniy_nomer_prepodavatelya", 
  "data_kr", "svod"
) 
values 
  (31, 'Основы кибербезопасности в частном секторе', 333, 'M20-514', 'Шаленков И.А.', 8, '2021-11-23', '[
      {"fio_studenta":"Старостин С.Н.","nomer_zachetki":"m2051422","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Алперин М.Е.","nomer_zachetki":"m2051423","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Додон Д.Д.","nomer_zachetki":"m2051424","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Ростропович М.Л.","nomer_zachetki":"m2051421","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Конрад Д.","nomer_zachetki":"m2051426","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Тягунов Н.Г.","nomer_zachetki":"m2051428","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Фолкнер В.К.","nomer_zachetki":"m2051429","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Азимов А.","nomer_zachetki":"m2051431","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Дик Ф.К.","nomer_zachetki":"m2051433","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Декард Р.","nomer_zachetki":"m2051434","ocenka":"3","fio_prepodavatelya":"Шаленков И.А.","nomer_tabelya_prepodavatelya": 8}


]');

insert into nenormalizirovannaya (
  "nomer_vedomosti", "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", "nomer_gruppi", 
  "fio_prepodavatelya", "tabelniy_nomer_prepodavatelya", 
  "data_kr", "svod"
) 
values 
  (4, 'Области управления информационными рисками', 222, 'M20-504', 'Фомин И.', 7, '2021-11-22', '[{"fio_studenta":"Линч Д.Э.","nomer_zachetki":"m2050412","ocenka":"2","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Светширт Э.Т.","nomer_zachetki":"m2050417","ocenka":"5","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Моррисон Д.","nomer_zachetki":"m2050411","ocenka":"3","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Моргунов Е.П.","nomer_zachetki":"m2050414","ocenka":"4","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Новиков Б.А.","nomer_zachetki":"m2050415","ocenka":"3","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Лузанов В.П.","nomer_zachetki":"m2050416","ocenka":"4","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Буданицкий А.В.","nomer_zachetki":"m20504113","ocenka":"4","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Клычков М.Д.","nomer_zachetki":"m2050413","ocenka":"3","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Авраменко А.Д.","nomer_zachetki":"m20504110","ocenka":"5","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Мусаева Я.","nomer_zachetki":"m20504111","ocenka":"3","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Чигур А.","nomer_zachetki":"m2050418","ocenka":"5","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Сан-Сан К.","nomer_zachetki":"m2050419","ocenka":"3","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Дебюсси К.","nomer_zachetki":"m20504112","ocenka":"4","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Равель М.","nomer_zachetki":"m20504114","ocenka":"3","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Дворжак А.","nomer_zachetki":"m20504115","ocenka":"5","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Лозница С.В.","nomer_zachetki":"m20504116","ocenka":"5","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Хржановский И.А.","nomer_zachetki":"m20504117","ocenka":"5","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Клёнский Ю.Г.","nomer_zachetki":"m20504118","ocenka":"4","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Герман А.Ю.","nomer_zachetki":"m20504119","ocenka":"4","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Корнилов Л.Г.","nomer_zachetki":"m20504120","ocenka":"4","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7}

]');
insert into nenormalizirovannaya (
  "nomer_vedomosti", "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", "nomer_gruppi", 
  "fio_prepodavatelya", "tabelniy_nomer_prepodavatelya", 
  "data_kr", "svod"
) 
values 
  (41, 'Области управления информационными рисками', 222, 'M20-514', 'Фомин И.', 7, '2021-11-22', '[{"student_name":"Старостин С.Н.","student_number":"m2051422","grade":"4","teacher_name":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Старостин С.Н.","nomer_zachetki":"m2051422","ocenka":"4","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Алперин М.Е.","nomer_zachetki":"m2051423","ocenka":"4","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Додон Д.Д.","nomer_zachetki":"m2051424","ocenka":"3","fio_prepodavatelya":"Горденко Ю.В.","nomer_tabelya_prepodavatelya": 4},
{"fio_studenta":"Ростропович М.Л.","nomer_zachetki":"m2051421","ocenka":"4","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Конрад Д.","nomer_zachetki":"m2051426","ocenka":"5","fio_prepodavatelya":"Горденко Ю.В.","nomer_tabelya_prepodavatelya": 4},
{"fio_studenta":"Тягунов Н.Г.","nomer_zachetki":"m2051428","ocenka":"4","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Фолкнер В.К.","nomer_zachetki":"m2051429","ocenka":"4","fio_prepodavatelya":"Горденко Ю.В.","nomer_tabelya_prepodavatelya": 4},
{"fio_studenta":"Азимов А.","nomer_zachetki":"m2051431","ocenka":"5","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Дик Ф.К.","nomer_zachetki":"m2051433","ocenka":"2","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7},
{"fio_studenta":"Декард Р.","nomer_zachetki":"m2051434","ocenka":"5","fio_prepodavatelya":"Фомин И.","nomer_tabelya_prepodavatelya": 7}


]');

insert into nenormalizirovannaya (
  "nomer_vedomosti", "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", "nomer_gruppi", 
  "fio_prepodavatelya", "tabelniy_nomer_prepodavatelya", 
  "data_kr", "svod"
) 
values 
  (5, 'Разработка цифровых решений для частного сектора', 444, 'M20-504', 'Аргунов М.', 2, '2021-11-25', '[
{"fio_studenta":"Линч Д.Э.","nomer_zachetki":"m2050412","ocenka":"3","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Светширт Э.Т.","nomer_zachetki":"m2050417","ocenka":"4","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Моррисон Д.","nomer_zachetki":"m2050411","ocenka":"4","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Моргунов Е.П.","nomer_zachetki":"m2050414","ocenka":"4","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Новиков Б.А.","nomer_zachetki":"m2050415","ocenka":"4","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Лузанов В.П.","nomer_zachetki":"m2050416","ocenka":"5","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Буданицкий А.В.","nomer_zachetki":"m20504113","ocenka":"4","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Клычков М.Д.","nomer_zachetki":"m2050413","ocenka":"5","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Авраменко А.Д.","nomer_zachetki":"m20504110","ocenka":"5","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Мусаева Я.","nomer_zachetki":"m20504111","ocenka":"3","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Чигур А.","nomer_zachetki":"m2050418","ocenka":"5","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Сан-Сан К.","nomer_zachetki":"m2050419","ocenka":"3","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Дебюсси К.","nomer_zachetki":"m20504112","ocenka":"4","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Равель М.","nomer_zachetki":"m20504114","ocenka":"5","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Дворжак А.","nomer_zachetki":"m20504115","ocenka":"4","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Лозница С.В.","nomer_zachetki":"m20504116","ocenka":"4","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Хржановский И.А.","nomer_zachetki":"m20504117","ocenka":"4","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Клёнский Ю.Г.","nomer_zachetki":"m20504118","ocenka":"4","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Герман А.Ю.","nomer_zachetki":"m20504119","ocenka":"3","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Корнилов Л.Г.","nomer_zachetki":"m20504120","ocenka":"2","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2}

]');
insert into nenormalizirovannaya (
  "nomer_vedomosti", "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", "nomer_gruppi", 
  "fio_prepodavatelya", "tabelniy_nomer_prepodavatelya", 
  "data_kr", "svod"
) 
values 
  (51, 'Разработка цифровых решений для частного сектора', 444, 'M20-514', 'Аргунов М.', 2, '2021-11-25', '[
{"fio_studenta":"Старостин С.Н.","nomer_zachetki":"m2051422","ocenka":"4","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Алперин М.Е.","nomer_zachetki":"m2051423","ocenka":"5","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Додон Д.Д.","nomer_zachetki":"m2051424","ocenka":"3","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Ростропович М.Л.","nomer_zachetki":"m2051421","ocenka":"3","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Конрад Д.","nomer_zachetki":"m2051426","ocenka":"2","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Тягунов Н.Г.","nomer_zachetki":"m2051428","ocenka":"4","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Фолкнер В.К.","nomer_zachetki":"m2051429","ocenka":"2","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Азимов А.","nomer_zachetki":"m2051431","ocenka":"4","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Дик Ф.К.","nomer_zachetki":"m2051433","ocenka":"4","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2},
{"fio_studenta":"Декард Р.","nomer_zachetki":"m2051434","ocenka":"2","fio_prepodavatelya":"Аргунов М.","nomer_tabelya_prepodavatelya": 2}

]');
insert into nenormalizirovannaya (
  "nomer_vedomosti", "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", "nomer_gruppi", 
  "fio_prepodavatelya", "tabelniy_nomer_prepodavatelya", 
  "data_kr", "svod"
) 
values 
  (6, 'Средства внутреннего контроля', 555, 'M20-504', 'Бровкина Н.Е.', 6, '2021-11-26', '[{"fio_studenta":"Линч Д.Э.","nomer_zachetki":"m2050412","ocenka":"2","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Светширт Э.Т.","nomer_zachetki":"m2050417","ocenka":"3","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Моррисон Д.","nomer_zachetki":"m2050411","ocenka":"5","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Моргунов Е.П.","nomer_zachetki":"m2050414","ocenka":"3","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Новиков Б.А.","nomer_zachetki":"m2050415","ocenka":"5","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Лузанов В.П.","nomer_zachetki":"m2050416","ocenka":"4","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Буданицкий А.В.","nomer_zachetki":"m20504113","ocenka":"5","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Клычков М.Д.","nomer_zachetki":"m2050413","ocenka":"4","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Авраменко А.Д.","nomer_zachetki":"m20504110","ocenka":"5","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Мусаева Я.","nomer_zachetki":"m20504111","ocenka":"4","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Чигур А.","nomer_zachetki":"m2050418","ocenka":"5","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Сан-Сан К.","nomer_zachetki":"m2050419","ocenka":"2","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Дебюсси К.","nomer_zachetki":"m20504112","ocenka":"4","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Равель М.","nomer_zachetki":"m20504114","ocenka":"3","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Дворжак А.","nomer_zachetki":"m20504115","ocenka":"5","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Лозница С.В.","nomer_zachetki":"m20504116","ocenka":"4","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Хржановский И.А.","nomer_zachetki":"m20504117","ocenka":"4","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Клёнский Ю.Г.","nomer_zachetki":"m20504118","ocenka":"3","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Герман А.Ю.","nomer_zachetki":"m20504119","ocenka":"4","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Корнилов Л.Г.","nomer_zachetki":"m20504120","ocenka":"4","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6}

]');

insert into nenormalizirovannaya (
  "nomer_vedomosti", "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", "nomer_gruppi", 
  "fio_prepodavatelya", "tabelniy_nomer_prepodavatelya", 
  "data_kr", "svod"
) 
values 
  (61, 'Средства внутреннего контроля', 555, 'M20-514', 'Бровкина Н.Е.', 6, '2021-11-26', '[{"fio_studenta":"Старостин С.Н.","nomer_zachetki":"m2051422","ocenka":"4","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Алперин М.Е.","nomer_zachetki":"m2051423","ocenka":"4","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Додон Д.Д.","nomer_zachetki":"m2051424","ocenka":"3","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Ростропович М.Л.","nomer_zachetki":"m2051421","ocenka":"4","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Конрад Д.","nomer_zachetki":"m2051426","ocenka":"3","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Тягунов Н.Г.","nomer_zachetki":"m2051428","ocenka":"3","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Фолкнер В.К.","nomer_zachetki":"m2051429","ocenka":"4","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Азимов А.","nomer_zachetki":"m2051431","ocenka":"5","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Дик Ф.К.","nomer_zachetki":"m2051433","ocenka":"4","fio_prepodavatelya":"Бровкина Н.Е.","nomer_tabelya_prepodavatelya": 6},
{"fio_studenta":"Декард Р.","nomer_zachetki":"m2051434","ocenka":"3","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3}
]');



insert into nenormalizirovannaya (
  "nomer_vedomosti", "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", "nomer_gruppi", 
  "fio_prepodavatelya", "tabelniy_nomer_prepodavatelya", 
  "data_kr", "svod"
) 
values 
  (7, 'Управленческий учет и оптимизация процессов', 888, 'M20-504', 'Алейникова М.Ю.', 8, '2021-11-27', '[{"fio_studenta":"Линч Д.Э.","nomer_zachetki":"m2050412","ocenka":"2","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Светширт Э.Т.","nomer_zachetki":"m2050417","ocenka":"3","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Моррисон Д.","nomer_zachetki":"m2050411","ocenka":"2","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Моргунов Е.П.","nomer_zachetki":"m2050414","ocenka":"3","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Новиков Б.А.","nomer_zachetki":"m2050415","ocenka":"5","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Лузанов В.П.","nomer_zachetki":"m2050416","ocenka":"4","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Буданицкий А.В.","nomer_zachetki":"m20504113","ocenka":"5","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Клычков М.Д.","nomer_zachetki":"m2050413","ocenka":"3","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Авраменко А.Д.","nomer_zachetki":"m20504110","ocenka":"4","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Мусаева Я.","nomer_zachetki":"m20504111","ocenka":"4","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Чигур А.","nomer_zachetki":"m2050418","ocenka":"5","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Сан-Сан К.","nomer_zachetki":"m2050419","ocenka":"2","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Дебюсси К.","nomer_zachetki":"m20504112","ocenka":"2","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Равель М.","nomer_zachetki":"m20504114","ocenka":"2","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Дворжак А.","nomer_zachetki":"m20504115","ocenka":"5","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Лозница С.В.","nomer_zachetki":"m20504116","ocenka":"5","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Хржановский И.А.","nomer_zachetki":"m20504117","ocenka":"3","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Клёнский Ю.Г.","nomer_zachetki":"m20504118","ocenka":"2","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Герман А.Ю.","nomer_zachetki":"m20504119","ocenka":"2","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Корнилов Л.Г.","nomer_zachetki":"m20504120","ocenka":"2","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8}

]');
insert into nenormalizirovannaya (
  "nomer_vedomosti", "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", "nomer_gruppi", 
  "fio_prepodavatelya", "tabelniy_nomer_prepodavatelya", 
  "data_kr", "svod"
) 
values 
  (71, 'Управленческий учет и оптимизация процессов', 888, 'M20-514', 'Алейникова М.Ю.', 8, '2021-11-27', '[
{"fio_studenta":"Старостин С.Н.","nomer_zachetki":"m2051422","ocenka":"4","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Алперин М.Е.","nomer_zachetki":"m2051423","ocenka":"4","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Додон Д.Д.","nomer_zachetki":"m2051424","ocenka":"3","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Ростропович М.Л.","nomer_zachetki":"m2051421","ocenka":"5","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Конрад Д.","nomer_zachetki":"m2051426","ocenka":"4","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Тягунов Н.Г.","nomer_zachetki":"m2051428","ocenka":"2","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Фолкнер В.К.","nomer_zachetki":"m2051429","ocenka":"4","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Азимов А.","nomer_zachetki":"m2051431","ocenka":"5","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Дик Ф.К.","nomer_zachetki":"m2051433","ocenka":"5","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8},
{"fio_studenta":"Декард Р.","nomer_zachetki":"m2051434","ocenka":"3","fio_prepodavatelya":"Алейникова М.Ю.","nomer_tabelya_prepodavatelya": 8}


]');
insert into nenormalizirovannaya (
  "nomer_vedomosti", "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", "nomer_gruppi", 
  "fio_prepodavatelya", "tabelniy_nomer_prepodavatelya", 
  "data_kr", "svod"
) 
values 
  (8, 'БД-ОБ', 999, 'M20-504', 'Климов В.В.', 3, '2021-11-28', '[{"fio_studenta":"Линч Д.Э.","nomer_zachetki":"m2050412","ocenka":"2","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Светширт Э.Т.","nomer_zachetki":"m2050417","ocenka":"3","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Моррисон Д.","nomer_zachetki":"m2050411","ocenka":"3","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Моргунов Е.П.","nomer_zachetki":"m2050414","ocenka":"5","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Новиков Б.А.","nomer_zachetki":"m2050415","ocenka":"4","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Лузанов В.П.","nomer_zachetki":"m2050416","ocenka":"5","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Буданицкий А.В.","nomer_zachetki":"m20504113","ocenka":"5","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Клычков М.Д.","nomer_zachetki":"m2050413","ocenka":"5","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Авраменко А.Д.","nomer_zachetki":"m20504110","ocenka":"5","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Мусаева Я.","nomer_zachetki":"m20504111","ocenka":"5","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Чигур А.","nomer_zachetki":"m2050418","ocenka":"5","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Сан-Сан К.","nomer_zachetki":"m2050419","ocenka":"3","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Дебюсси К.","nomer_zachetki":"m20504112","ocenka":"3","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Равель М.","nomer_zachetki":"m20504114","ocenka":"3","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Дворжак А.","nomer_zachetki":"m20504115","ocenka":"4","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Лозница С.В.","nomer_zachetki":"m20504116","ocenka":"5","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Хржановский И.А.","nomer_zachetki":"m20504117","ocenka":"4","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Клёнский Ю.Г.","nomer_zachetki":"m20504118","ocenka":"4","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Герман А.Ю.","nomer_zachetki":"m20504119","ocenka":"4","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Корнилов Л.Г.","nomer_zachetki":"m20504120","ocenka":"4","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3}

]');
insert into nenormalizirovannaya (
  "nomer_vedomosti", "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", "nomer_gruppi", 
  "fio_prepodavatelya", "tabelniy_nomer_prepodavatelya", 
  "data_kr", "svod"
) 
values 
  (81, 'БД-ОБ', 999, 'M20-514', 'Климов В.В.', 3, '2021-11-28', '[
{"fio_studenta":"Старостин С.Н.","nomer_zachetki":"m2051422","ocenka":"4","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Алперин М.Е.","nomer_zachetki":"m2051423","ocenka":"5","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Додон Д.Д.","nomer_zachetki":"m2051424","ocenka":"3","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Ростропович М.Л.","nomer_zachetki":"m2051421","ocenka":"4","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Конрад Д.","nomer_zachetki":"m2051426","ocenka":"3","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Тягунов Н.Г.","nomer_zachetki":"m2051428","ocenka":"2","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Фолкнер В.К.","nomer_zachetki":"m2051429","ocenka":"4","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Азимов А.","nomer_zachetki":"m2051431","ocenka":"5","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Дик Ф.К.","nomer_zachetki":"m2051433","ocenka":"4","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3},
{"fio_studenta":"Декард Р.","nomer_zachetki":"m2051434","ocenka":"3","fio_prepodavatelya":"Климов В.В.","nomer_tabelya_prepodavatelya": 3}
]');

create type stud__ocenka as (
  "fio_studenta" text, "nomer_zachetki" text, 
  "ocenka" int4, "fio_prepodavatelya" text, 
  "nomer_tabelya_prepodavatelya" int4
);
create table nenormalizirovannaya_arr as (
  select 
    "nomer_vedomosti", 
    "nazvanie_kursa_lekciy", 
    "identifikator_kursa_lekciy", 
    "nomer_gruppi", 
    "fio_prepodavatelya", 
    "tabelniy_nomer_prepodavatelya", 
    "data_kr", 
    array_agg(
      array[(
        arr ->> 'fio_studenta', arr ->> 'nomer_zachetki', 
        arr ->> 'ocenka', arr ->> 'fio_prepodavatelya', 
        arr ->> 'nomer_tabelya_prepodavatelya'
      ):: stud__ocenka]
    ) as "svod" 
  from 
    nenormalizirovannaya cross 
    join lateral json_array_elements("svod") as arr 
  group by 
    "nomer_vedomosti", 
    "nazvanie_kursa_lekciy", 
    "identifikator_kursa_lekciy", 
    "nomer_gruppi", 
    "fio_prepodavatelya", 
    "tabelniy_nomer_prepodavatelya", 
    "data_kr"
);
select 
  tmp."nomer_vedomosti", 
  tmp."nazvanie_kursa_lekciy", 
  tmp."identifikator_kursa_lekciy", 
  tmp."nomer_gruppi", 
  tmp."fio_prepodavatelya", 
  tmp."tabelniy_nomer_prepodavatelya", 
  tmp."data_kr", 
  tmp.arr ->> 'fio_studenta' as "fio_studenta", 
  tmp.arr ->> 'nomer_zachetki' as "nomer_zachetki", 
  tmp.arr ->> 'ocenka' as "ocenka", 
  tmp.arr ->> 'fio_prepodavatelya' as "fio_prepodavatelya", 
  tmp.arr ->> 'nomer_tabelya_prepodavatelya' as "nomer_tabelya_prepodavatelya" 
from 
  (
    select 
      "nomer_vedomosti", 
      "nazvanie_kursa_lekciy", 
      "identifikator_kursa_lekciy", 
      "nomer_gruppi", 
      "fio_prepodavatelya", 
      "tabelniy_nomer_prepodavatelya", 
      "data_kr", 
      json_array_elements("svod") as arr 
    from 
      nenormalizirovannaya
  ) as tmp;
select 
  "nomer_vedomosti", 
  "nazvanie_kursa_lekciy", 
  "identifikator_kursa_lekciy", 
  "nomer_gruppi", 
  "fio_prepodavatelya", 
  "tabelniy_nomer_prepodavatelya", 
  "data_kr", 
  (
    unnest("svod")
  ).fio_studenta, 
  (
    unnest("svod")
  ).nomer_zachetki, 
  (
    unnest("svod")
  ).ocenka, 
  (
    unnest("svod")
  ).fio_prepodavatelya, 
  (
    unnest("svod")
  )."nomer_tabelya_prepodavatelya" 
from 
  nenormalizirovannaya_arr;
create table kontrolnie as (
  select 
    "nomer_vedomosti", 
    "nazvanie_kursa_lekciy", 
    "identifikator_kursa_lekciy", 
    "nomer_gruppi", 
    "fio_prepodavatelya", 
    "tabelniy_nomer_prepodavatelya", 
    "data_kr" 
  from 
    nenormalizirovannaya
);
create table napravlenie as (
  select 
    "nazvanie_kursa_lekciy", 
    "identifikator_kursa_lekciy" 
  from 
    nenormalizirovannaya 
  group by 
    "identifikator_kursa_lekciy", 
    "nazvanie_kursa_lekciy"
);
create table prepodavatel as (
  select 
    "fio_prepodavatelya", 
    "tabelniy_nomer_prepodavatelya" 
  from 
    nenormalizirovannaya 
  group by 
    "fio_prepodavatelya", 
    "tabelniy_nomer_prepodavatelya"
);
create table studenti as (
  select 
    tmp.arr ->> 'fio_studenta' as "fio_studenta", 
    tmp.arr ->> 'nomer_zachetki' as "nomer_zachetki" 
  from 
    (
      select 
        json_array_elements("svod") as arr 
      from 
        nenormalizirovannaya
    ) as tmp 
  group by 
    "fio_studenta", 
    "nomer_zachetki"
);
create table svod as (
  select 
    tmp."nomer_vedomosti", 
    tmp.arr ->> 'nomer_zachetki' as "nomer_zachetki", 
    tmp.arr ->> 'ocenka' as "ocenka", 
    tmp.arr ->> 'nomer_tabelya_prepodavatelya' as "nomer_tabelya_prepodavatelya" 
  from 
    (
      select 
        "nomer_vedomosti", 
        json_array_elements("svod") as arr 
      from 
        nenormalizirovannaya
    ) as tmp
);
create table prepodavatel_tabel as (
  select 
    tmp.arr ->> 'fio_prepodavatelya' as "fio_prepodavatelya", 
    tmp.arr ->> 'nomer_tabelya_prepodavatelya' as "nomer_tabelya_prepodavatelya" 
  from 
    (
      select 
        json_array_elements("svod") as arr 
      from 
        nenormalizirovannaya
    ) as tmp 
  group by 
    "fio_prepodavatelya", 
    "nomer_tabelya_prepodavatelya"
);
select 
  kontrolnie."nomer_vedomosti", 
  kontrolnie."identifikator_kursa_lekciy", 
  napravlenie."nazvanie_kursa_lekciy", 
  kontrolnie."nomer_gruppi", 
  kontrolnie."tabelniy_nomer_prepodavatelya", 
  prepodavatel."fio_prepodavatelya", 
  kontrolnie."data_kr", 
  json_agg(
    json_build_object(
      'nomer_zachetki', svod."nomer_zachetki", 
      'fio_studenta', studenti."fio_studenta", 
      'ocenka', svod."ocenka", 'nomer_tabelya_prepodavatelya', 
      prepodavatel_tabel."nomer_tabelya_prepodavatelya", 
      'fio_prepodavatelya', prepodavatel."fio_prepodavatelya"
    )
  ) 
from 
  kontrolnie, 
  napravlenie, 
  prepodavatel, 
  svod, 
  studenti, 
  prepodavatel_tabel 
where 
  cast(
    prepodavatel_tabel."nomer_tabelya_prepodavatelya" as INTEGER
  ) = kontrolnie."tabelniy_nomer_prepodavatelya" 
  and napravlenie."identifikator_kursa_lekciy" = kontrolnie."identifikator_kursa_lekciy" 
  and studenti."nomer_zachetki" = svod."nomer_zachetki" 
  and prepodavatel_tabel."nomer_tabelya_prepodavatelya" = svod."nomer_tabelya_prepodavatelya" 
  and svod."nomer_vedomosti" = kontrolnie."nomer_vedomosti" 
group by 
  kontrolnie."nomer_vedomosti", 
  kontrolnie."identifikator_kursa_lekciy", 
  napravlenie."nazvanie_kursa_lekciy", 
  kontrolnie."nomer_gruppi", 
  kontrolnie."tabelniy_nomer_prepodavatelya", 
  prepodavatel."fio_prepodavatelya", 
  kontrolnie."data_kr";
