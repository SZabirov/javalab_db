create table publisher(
  id serial unique,
  name VARCHAR(255),
  city VARCHAR(255)
);

create table book(
  id serial,
  name VARCHAR(255),
  author VARCHAR(255),
  publisher_id int REFERENCES publisher(id)
);

insert into publisher(name, city) VALUES
  ('АСТ', 'Москва'), ('Мнемозина', 'Москва'),
  ('Росмэн', 'Москва'), ('Новгород-книга', 'Краснодар');

insert into book(name, author, publisher_id) VALUES
('Война и мир', 'Толстой', 1),('Анна Каренина', 'Толстой', 1),
('Воскресенье', 'Толстой', 2),('Борис Годунов', 'Пушкин', 1),
('Доктор Живаго', 'Пастернак', 2),('Пиковая дама', 'Пушкин', 4);

--вывести пары автор - издательство, упорядоченные по авторам

select distinct b.author, p.name FROM book b inner join publisher p
  on b.publisher_id = p.id order by b.author;

--вывести издательства, которые выпускают только книги Пушкина
select * from publisher p where
  EXISTS (SELECT 1 from book b where b.publisher_id = p.id
                                  and author = 'Пушкин') AND
  NOT EXISTS(SELECT 1 from book b where b.publisher_id = p.id
                                and author <> 'Пушкин');

--вывести авторов, у которых меньше 2 книг в библиотеке
select b.author, count(id) from book b group by b.author;


--вывести топ 10 издательств по количеству книг

--вывести все издательства с количеством их книг в библиотеке






