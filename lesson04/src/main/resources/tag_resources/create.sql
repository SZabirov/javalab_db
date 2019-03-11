create table t1_tag
(
  id    serial primary key,
  title text
);

create table t1_resource
(
  id   serial primary key,
  link text
);

create table t1_tag_resource
(
  tag_id integer,
  resource_id integer
);