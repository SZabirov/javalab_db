create table t2_tag
(
  id    serial primary key,
  title text
);

create table t2_resource
(
  id   serial primary key,
  tags int[]
);

select count(*) from (
select
unnest(ARRAY [1, 2, 3])
intersect
select unnest(ARRAY[5, 3, 2, 4])) abc;

drop extension smlar;
create extension smlar;

select smlar(ARRAY[1, 2, 3] , ARRAY[1, 2, 3, 5] );

select set_smlar_limit(0.2);

select ARRAY[1, 2, 3] % ARRAY[1, 2, 3, 4];

SELECT * from t2_resource where tags %
ARRAY[229,364,332,355,68,142,145,164,226,186,368,233,171,185,183,335,104,222,128,122,64,278,105,322,8,386,385,65,252,161,248,367,154,100,152,330,58,398,147,381,270,110,308,307,266,72,314,297,43,90,212,86,243,370,163,92,31,48,157,46,309,345,67,34,374,388,377,224,201,75,341,199,317,318,334,216,162,132,124,181,38,140,202,6,209,63,106,378,382,71,176,338,316,37,210,342,198,5,400,1,394,231,274,144,372,340,66,69,139,242,158,36,9,346,191,172];



CREATE EXTENSION IF NOT EXISTS intarray;

create index t2_resource_tag_similarity_idx on t2_resource
USING gist(tags _int4_sml_ops);


select count(*)
from t2_resource;

select * from t2_resource where 6 < (select count(*) from
                                (select unnest(tags) intersect select unnest(ARRAY[1, 2, 3, 4, 5, 19])) abc);

select * from t2_resource where 6 < (select count(*) from
                                (select unnest(array [3, 7, 6])
                                intersect select unnest(ARRAY[1, 2, 3, 4, 5, 19])) abc);


drop extension smlar;











