create table student_group
(
  id   serial primary key,
  name text
);

create table student
(
  id serial primary key,
  firstname text,
  group_id integer references student_group
);

create table time_slot
(
  id         serial primary key,
  position   integer,
  time_range text
);

create table week_day
(
  id serial primary key,
  position integer,
  day_name text
);

create table lesson
(
  id       serial primary key,
  subject  text,
  group_id integer references student_group (id),
  week_day_id integer references week_day(id),
  time_id  integer references time_slot (id)
);