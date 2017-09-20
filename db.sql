DROP DATABASE auto_service;
CREATE DATABASE auto_service;

USE `auto_service`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `admin` (`id`, `login`, `password`, `roles`) VALUES
  (1, 'Misha', '123123', ''),
  (2, 'Lesnik', '123123', '');

CREATE TABLE `car_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `car_type` (`id`, `name`) VALUES
  (1, 'ВАЗ классика'),
  (2, 'ВАЗ 8кл'),
  (3, 'ВАЗ 16кл'),
  (4, 'Нива'),
  (5, 'Нива Шеви'),
  (6, 'Иномарка седан 8кл'),
  (7, 'Иномарка седан 16кл'),
  (8, 'Паркетник');

CREATE TABLE `price_list_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `price_list_detail` (`id`, `name`) VALUES
  (1, 'Амортизатор задний'),
  (2, 'Амортизатор передний'),
  (3, 'Бак топливный'),
  (4, 'Балка задняя'),
  (5, 'Балка задняя'),
  (6, 'Бампер'),
  (7, 'Барабан задний'),
  (8, 'Бачок расширительный'),
  (9, 'Бензонасос инж.'),
  (10, 'Блок дроссельной заслонки'),
  (11, 'Брызговик'),
  (12, 'Вакуумный усилитель'),
  (13, 'Вставыш под свечу'),
  (14, 'ГБЦ 8кл/16кл'),
  (16, 'Генератор'),
  (18, 'Глушитель: задняя часть'),
  (19, 'Глушитель: приемная труба'),
  (20, 'Глушитель: средняя часть'),
  (21, 'Граната внутренняя'),
  (22, 'Граната наружная'),
  (23, 'Давление топлива'),
  (24, 'Датчик двления масла'),
  (25, 'Датчик дроссельной заслонки'),
  (26, 'Датчик коленвала'),
  (27, 'Датчик скорости'),
  (28, 'Датчик температуры'),
  (29, 'Датчик уровня масла ДВС'),
  (30, 'Датчик фазы'),
  (31, 'Двигатель вентилятора печки'),
  (32, 'Двигатель привода дворников'),
  (33, 'ДВС 8кл/16кл'),
  (35, 'Диагностика электронная'),
  (36, 'Диск тормозной'),
  (37, 'Замок двери внутренний'),
  (38, 'Замок зажигания'),
  (39, 'Защита ДВС'),
  (40, 'Кардан'),
  (41, 'Клапана 8кл'),
  (42, 'Раздатка'),
  (43, 'Распредвал'),
  (44, 'Регулятор зад. тормозов'),
  (45, 'Редуктор задний'),
  (46, 'Редуктор рулевой'),
  (47, 'Рейка рулевая/ГУР'),
  (48, 'Реле поворотников'),
  (49, 'Ремень агрегатный большой'),
  (50, 'Ремень генератора'),
  (51, 'Ремень ГУРа'),
  (52, 'Ремень ГРМ'),
  (53, 'Цепь ГРМ'),
  (54, 'Руль'),
  (55, 'Ручка двери'),
  (56, 'Ручник'),
  (57, 'Рычаг верхний передний'),
  (58, 'Рычаг нижний передний'),
  (59, 'Обшивка двери'),
  (60, 'Сайлентблок переднего рычага'),
  (61, 'Саленблоки задней балки'),
  (62, 'Саленблоки верхнего рычага'),
  (63, 'Саленблоки нижнего рычага'),
  (64, 'Сальник коленвала задний'),
  (65, 'Сальник коленвала передний'),
  (66, 'Сальник кулисы'),
  (67, 'Сальник распредвала'),
  (68, 'Свечи'),
  (69, 'Сетка бензонасоса'),
  (70, 'Стартер'),
  (71, 'Стеклоподъемник'),
  (72, 'Стойка стабилизатора'),
  (73, 'Суппорт в сборе'),
  (74, 'Суппорт со с/у'),
  (75, 'Сцепление с подрамником'),
  (76, 'Термостат'),
  (77, 'Тормоза'),
  (78, 'Тормозная жидкость'),
  (79, 'Тосол'),
  (80, 'Трапеция рулевая'),
  (81, 'Трос газа'),
  (82, 'Трос ручника малый'),
  (83, 'Трос спидометра'),
  (84, 'Коллектор выпускной'),
  (85, 'Колодки тормозные задние'),
  (86, 'Колодки тормозные передние'),
  (87, 'Кольца поршневые 8кл/16кл'),
  (88, 'Кольца трамблера'),
  (89, 'Компрессия'),
  (90, 'Краб'),
  (91, 'Краник печки'),
  (92, 'Крестовина кардана'),
  (93, 'Крышка клапанная'),
  (94, 'Кулиса'),
  (95, 'Кулиса (карданчик)'),
  (96, 'Лампочки (1 фонарь)'),
  (97, 'Магнитола'),
  (98, 'Масло в АКПП (частично)'),
  (99, 'Масло в ДВС'),
  (100, 'Масло в ГУРе'),
  (101, 'Масло в МКПП'),
  (102, 'Маятник рулевой трапеции'),
  (103, 'Механизм привода дворников'),
  (104, 'МКПП'),
  (105, 'Монтажный блок'),
  (106, 'Мост задний (чулок)'),
  (107, 'Мотор охлаждения ДВС'),
  (108, 'Муфта резиновая'),
  (109, 'Наконечник рулевой'),
  (110, 'Насос ГУРа'),
  (111, 'Насос масляный'),
  (112, 'Патрубок печки'),
  (113, 'Подвесной подшипник'),
  (114, 'Поддон ДВС'),
  (115, 'Подкрылок'),
  (116, 'Подрулевой переключатель'),
  (117, 'Подушка ДВС'),
  (118, 'Подшипник ступицы'),
  (119, 'Подшипник ступицы задний'),
  (120, 'Подшипник ступицы передний'),
  (121, 'Полуось'),
  (122, 'Помпа водяная'),
  (123, 'Привод в сборе'),
  (124, 'Провода свечные'),
  (125, 'Прокладка приемной трубы'),
  (126, 'Рабочий цилиндр сцепления'),
  (127, 'Радиатор ДВС'),
  (128, 'Радиатор отопителя'),
  (129, 'Развальные болты'),
  (130, 'Трос сцепления'),
  (131, 'Трубка тормозная'),
  (132, 'Трубка тормозная магистральная'),
  (133, 'Тяга реактивная'),
  (134, 'Тяга рулевая'),
  (135, 'Успокоитель цепи'),
  (136, 'Фара передняя'),
  (137, 'Фильтр салона'),
  (138, 'Фильтр топливный инжекторный'),
  (139, 'Фонарь задний'),
  (140, 'Форсунки'),
  (141, 'Ходовая часть'),
  (142, 'Цилиндр тормозной главный'),
  (143, 'Цилиндр тормозной рабочий'),
  (144, 'Шаровая'),
  (145, 'Шланг тормозной'),
  (146, 'Щиток приборов'),
  (147, 'Трос ручника основной');

CREATE TABLE `price_list_item` (
  `id` int(11) NOT NULL,
  `car_type_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `work_id` int(11) DEFAULT NULL,
  `detail_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `price_list_item` (`id`, `car_type_id`, `section_id`, `work_id`, `detail_id`, `price`) VALUES
  (1, 1, 1, 1, 1, 300),
  (2, 1, 1, 1, 2, 450),
  (3, 1, 1, 2, 3, 800),
  (4, 1, 1, 1, 4, 0),
  (5, 1, 1, 2, 6, 450),
  (6, 1, 1, 1, 7, 200),
  (7, 1, 1, 1, 8, 250),
  (8, 1, 1, 1, 9, 450),
  (9, 1, 1, 2, 10, 250),
  (10, 1, 1, 3, 11, 150),
  (11, 1, 1, 1, 12, 700),
  (12, 1, 1, 3, 13, 800),
  (13, 1, 1, 2, 14, 1450),
  (14, 1, 1, 4, 14, 1700),
  (15, 1, 1, 2, 16, 300),
  (16, 1, 1, 4, 16, 500),
  (17, 1, 1, 1, 18, 300),
  (18, 1, 1, 1, 19, 400),
  (19, 1, 1, 1, 20, 400),
  (20, 1, 1, 1, 21, 0),
  (21, 1, 1, 1, 22, 0),
  (22, 1, 1, 5, 23, 200),
  (23, 1, 1, 1, 24, 150),
  (24, 1, 1, 1, 25, 250),
  (25, 1, 1, 1, 26, 150),
  (26, 1, 1, 1, 27, 200),
  (27, 1, 1, 1, 28, 150),
  (28, 1, 1, 1, 29, 0),
  (29, 1, 1, 1, 30, 0),
  (30, 1, 1, 1, 31, 750),
  (31, 1, 1, 1, 32, 450),
  (32, 1, 1, 2, 33, 3300),
  (33, 1, 1, 6, 33, 5500),
  (34, 1, 1, 5, 35, 250),
  (35, 1, 1, 1, 36, 400),
  (36, 1, 1, 1, 37, 400),
  (37, 1, 1, 1, 38, 500),
  (38, 1, 1, 2, 39, 200),
  (39, 1, 1, 2, 40, 400),
  (40, 1, 1, 7, 41, 600),
  (41, 1, 1, 2, 42, 0),
  (42, 1, 1, 4, 42, 0),
  (43, 1, 1, 1, 43, 1200),
  (44, 1, 1, 1, 44, 500),
  (45, 1, 1, 1, 45, 1300),
  (46, 1, 1, 1, 46, 1050),
  (47, 1, 1, 2, 47, 0),
  (48, 1, 1, 4, 47, 0),
  (49, 1, 1, 1, 48, 150),
  (50, 1, 1, 1, 49, 0),
  (51, 1, 1, 1, 50, 200),
  (52, 1, 1, 1, 51, 0),
  (53, 1, 1, 1, 52, 0),
  (54, 1, 1, 1, 53, 1450),
  (55, 1, 1, 1, 54, 350),
  (56, 1, 1, 1, 55, 400),
  (57, 1, 1, 7, 56, 150),
  (58, 1, 1, 1, 57, 500),
  (59, 1, 1, 1, 58, 600),
  (60, 1, 1, 2, 59, 200),
  (61, 1, 1, 1, 60, 0),
  (62, 1, 1, 1, 61, 0),
  (63, 1, 1, 1, 62, 600),
  (64, 1, 1, 1, 63, 750),
  (65, 1, 1, 1, 64, 1750),
  (66, 1, 1, 1, 65, 600),
  (67, 1, 1, 1, 66, 0),
  (68, 1, 1, 1, 67, 0),
  (69, 1, 1, 1, 68, 150),
  (70, 1, 1, 1, 69, 500),
  (71, 1, 1, 2, 70, 400),
  (72, 1, 1, 4, 70, 500),
  (73, 1, 1, 1, 71, 500),
  (74, 1, 1, 1, 72, 0),
  (75, 1, 1, 1, 73, 450),
  (76, 1, 1, 6, 74, 700),
  (77, 1, 1, 1, 75, 1700),
  (78, 1, 1, 1, 76, 400),
  (79, 1, 1, 8, 77, 250),
  (80, 1, 1, 1, 78, 400),
  (81, 1, 1, 1, 79, 400),
  (82, 1, 1, 1, 80, 1000),
  (83, 1, 1, 1, 81, 250),
  (84, 1, 1, 1, 82, 500),
  (85, 1, 1, 1, 147, 700),
  (86, 1, 1, 1, 83, 500),
  (87, 1, 1, 1, 84, 1150),
  (88, 1, 1, 1, 85, 500),
  (89, 1, 1, 1, 86, 450),
  (90, 1, 1, 1, 87, 3400),
  (91, 1, 1, 1, 88, 0),
  (92, 1, 1, 5, 89, 250),
  (93, 1, 1, 1, 90, 0),
  (94, 1, 1, 1, 91, 600),
  (95, 1, 1, 1, 92, 600),
  (96, 1, 1, 2, 93, 250),
  (97, 1, 1, 1, 94, 0),
  (98, 1, 1, 1, 95, 0),
  (99, 1, 1, 1, 96, 100),
  (100, 1, 1, 1, 97, 250),
  (101, 1, 1, 1, 98, 0),
  (102, 1, 1, 1, 99, 250),
  (103, 1, 1, 1, 100, 0),
  (104, 1, 1, 1, 101, 250),
  (105, 1, 1, 1, 102, 450),
  (106, 1, 1, 1, 103, 450),
  (107, 1, 1, 4, 104, 2000),
  (108, 1, 1, 2, 104, 1500),
  (109, 1, 1, 1, 105, 450),
  (110, 1, 1, 1, 106, 2250),
  (111, 1, 1, 1, 107, 450),
  (112, 1, 1, 1, 108, 700),
  (113, 1, 1, 1, 109, 250),
  (114, 1, 1, 2, 110, 0),
  (115, 1, 1, 1, 111, 1450),
  (116, 1, 1, 1, 112, 250),
  (117, 1, 1, 1, 113, 700),
  (118, 1, 1, 2, 114, 700),
  (119, 1, 1, 3, 115, 250),
  (120, 1, 1, 1, 116, 250),
  (121, 1, 1, 1, 117, 250),
  (122, 1, 1, 7, 118, 150),
  (123, 1, 1, 1, 119, 750),
  (124, 1, 1, 1, 120, 500),
  (125, 1, 1, 1, 121, 500),
  (126, 1, 1, 1, 122, 500),
  (127, 1, 1, 1, 123, 0),
  (128, 1, 1, 5, 124, 150),
  (129, 1, 1, 1, 125, 400),
  (130, 1, 1, 1, 126, 400),
  (131, 1, 1, 1, 127, 600),
  (132, 1, 1, 1, 128, 750),
  (133, 1, 1, 1, 129, 0),
  (134, 1, 1, 1, 130, 0),
  (135, 1, 1, 1, 131, 250),
  (136, 1, 1, 1, 132, 600),
  (137, 1, 1, 1, 133, 250),
  (138, 1, 1, 1, 134, 250),
  (139, 1, 1, 1, 135, 450),
  (140, 1, 1, 1, 136, 250),
  (141, 1, 1, 1, 137, 0),
  (142, 1, 1, 1, 138, 150),
  (143, 1, 1, 1, 139, 200),
  (144, 1, 1, 1, 140, 500),
  (145, 1, 1, 5, 141, 250),
  (146, 1, 1, 9, 141, 400),
  (147, 1, 1, 1, 142, 600),
  (148, 1, 1, 1, 143, 400),
  (149, 1, 1, 1, 144, 250),
  (150, 1, 1, 1, 145, 250),
  (151, 1, 1, 2, 146, 250);

CREATE TABLE `price_list_section` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `price_list_section` (`id`, `name`) VALUES
  (1, 'Нет разделов');

CREATE TABLE `price_list_work` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `price_list_work` (`id`, `name`) VALUES
  (1, 'Замена'),
  (2, 'Смена/Установка'),
  (3, 'Установка'),
  (4, 'Ремонт'),
  (5, 'Диагностика'),
  (6, 'Разборка/Сборка'),
  (7, 'Регулировка'),
  (8, 'Прокачка'),
  (9, 'Протяжка');

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `car_type_id` int(11) DEFAULT NULL,
  `pin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `devce_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `devce_platform` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `devce_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `car_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `registration_date` datetime NOT NULL,
  `last_activity` datetime NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Users` (`id`, `car_type_id`, `pin`, `devce_id`, `devce_platform`, `devce_name`, `phone`, `image`, `car_number`, `user_name`, `registration_date`, `last_activity`, `roles`) VALUES
  (63, 1, '32851', '4254342', 'Android 5.3', 'Samsung Galaxy S3', '+73464735967', 'NULL', 'м345ун116', 'Oleg', '2017-02-04 00:00:00', '2017-02-04 08:23:06', ''),
  (64, 1, '11369', '4254345', 'Android 5.3', 'Samsung Galaxy S3', '+73464735967', 'NULL', 'м345ун116', 'Иван', '2017-02-08 00:00:00', '2017-02-08 06:01:29', '');


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `car_type`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `price_list_detail`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `price_list_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D964C90B96E7774F` (`car_type_id`),
  ADD KEY `IDX_D964C90BD823E37A` (`section_id`),
  ADD KEY `IDX_D964C90BBB3453DB` (`work_id`),
  ADD KEY `IDX_D964C90BD8D003BB` (`detail_id`);

ALTER TABLE `price_list_section`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `price_list_work`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D5428AED96E7774F` (`car_type_id`);


ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
ALTER TABLE `car_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
ALTER TABLE `price_list_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=148;
ALTER TABLE `price_list_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=152;
ALTER TABLE `price_list_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
ALTER TABLE `price_list_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;

ALTER TABLE `price_list_item`
  ADD CONSTRAINT `FK_D964C90B96E7774F` FOREIGN KEY (`car_type_id`) REFERENCES `car_type` (`id`),
  ADD CONSTRAINT `FK_D964C90BBB3453DB` FOREIGN KEY (`work_id`) REFERENCES `price_list_work` (`id`),
  ADD CONSTRAINT `FK_D964C90BD823E37A` FOREIGN KEY (`section_id`) REFERENCES `price_list_section` (`id`),
  ADD CONSTRAINT `FK_D964C90BD8D003BB` FOREIGN KEY (`detail_id`) REFERENCES `price_list_detail` (`id`);

ALTER TABLE `Users`
  ADD CONSTRAINT `FK_D5428AED96E7774F` FOREIGN KEY (`car_type_id`) REFERENCES `car_type` (`id`);