# Задачи

1. Таблица сотрудников и офисов:
```sql
CREATE TABLE office (
  id          int PRIMARY KEY,
  name        VARCHAR(255),
  emp_count   int --число сотрудников в отделе
);

CREATE TABLE emp (
    id            int PRIMARY KEY,
    name          VARCHAR(255),
    office_id     int REFERENCES office(id);
);
```
Написать триггер (или триггеры), которые при запросе на update,
insert или delete из таблицы emp будут изменять в office число
сотруднико. Наприме, если пришел запрос на вставку нового сотрудника,
то у соотсветствующего офиса увеличивается emp_count на 1. 