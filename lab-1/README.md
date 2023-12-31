# Лабораторная работа #1. Вариант: 335047

Для выполнения лабораторной работы №1 необходимо:

- [x] На основе предложенной предметной области (текста) составить ее описание. Из полученного описания выделить сущности, их атрибуты и связи.
- [x] Составить инфологическую модель.
- [x] Составить даталогическую модель. При описании типов данных для атрибутов должны использоваться типы из СУБД PostgreSQL.
- [x] Реализовать даталогическую модель в PostgreSQL. При описании и реализации даталогической модели должны учитываться ограничения целостности, которые характерны для полученной предметной области.
- [ ] Заполнить созданные таблицы тестовыми данными.

Для создания объектов базы данных у каждого студента есть своя схема. Название схемы соответствует имени пользователя в базе studs (sXXXXXX). Команда для подключения к базе studs:
```bash
psql -h pg -d studs
```

Каждый студент должен использовать свою схему при работе над лабораторной работой №1 (а также в рамках выполнения 2, 3 и 4 этапа курсовой работы).

Отчёт по лабораторной работе должен содержать:

- [x] Текст задания.
- [x] Описание предметной области.
- [x] Список сущностей и их классификацию (стержневая, ассоциация, характеристика).
- [x] Инфологическая модель (ER-диаграмма в расширенном виде - с атрибутами, ключами...).
- [x] Даталогическая модель (должна содержать типы атрибутов, вспомогательные таблицы для отображения связей "многие-ко-многим").
- [x] Реализация даталогической модели на SQL.
- [x] Выводы по работе.

Темы для подготовки к защите лабораторной работы:

- [ ] Архитектура ANSI-SPARC
- [ ] Модель "Сущность-Связь". Классификация сущностей. Виды связей. Ограничения целостности.
- [ ] DDL
- [ ] DML

- - -
# Комментарии

Что такое Даталогическая и инфологическая модель
- https://online.visual-paradigm.com/knowledge/visual-modeling/conceptual-vs-logical-vs-physical-data-model
- https://ru.wikipedia.org/wiki/Проектирование_баз_данных

Какие типы данных использовать для даталогической модели и БД
- https://stackoverflow.com/a/55300741

Как создать таблицу
- https://stackoverflow.com/questions/26087556/how-do-i-read-the-documentation-syntax-for-postgresql-commands
- https://www.postgresql.org/docs/16/sql-createtable.html -- синтаксис `create`
- https://www.postgresql.org/docs/current/sql-altertable.html -- снтаксис `alter`

Наполнить таблицу данными
- https://www.postgresql.org/docs/current/sql-insert.html
- https://www.postgresql.org/docs/current/queries-with.html
- напишем несколько SQL/DML запросов
    - https://dba.stackexchange.com/a/65877 -- insert into select 
- pgAdmin GUI в помощь

DDL/DML/DCL
- https://info-comp.ru/what-is-ddl-dml-dcl-tcl

Типы сущностей
- http://ssofta.narod.ru/bd/24.htm

Запросы к таблицам
- https://www.postgresql.org/docs/current/sql-select.html -- синтаксис `select`
- https://habr.com/ru/articles/254425/ -- json запросы
  - https://www.postgresql.org/docs/9.5/functions-json.html - операторы
  - https://stackoverflow.com/questions/20236421/how-to-convert-postgres-json-to-integer -- json нужно конвертить
- https://www.freecodecamp.org/news/advanced-sql-techniques/ -- комплексные запросы
- https://www.postgresql.org/docs/current/queries-with.html -- использование with для комплексных запросов
- https://www.postgresql.org/docs/current/functions-matching.html -- регулярные выражения
- https://www.postgresql.org/docs/current/tutorial-join.html -- join-ы

Различие ковычек в PostgreSQL
- https://www.prisma.io/dataguide/postgresql/short-guides/quoting-rules

## Доп задание:

- (см. [extra-task/README.md](./extra-task/README.md))