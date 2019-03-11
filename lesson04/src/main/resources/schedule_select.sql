with pair_title as (
  select array [1, 1] pair, '11' title
  union all
  select array [1, 2] pair, '12' title
  union all
  select array [1, 3] pair, '13' title
  union all
  select array [1, 4] pair, '14' title
  union all
  select array [1, 5] pair, '15' title
  union all
  select array [2, 1] pair, '21' title
  union all
  select array [2, 2] pair, '22' title
  union all
  select array [2, 3] pair, '23' title
  union all
  select array [2, 4] pair, '24' title
  union all
  select array [2, 5] pair, '25' title
  union all
  select array [3, 1] pair, '31' title
  union all
  select array [3, 2] pair, '32' title
  union all
  select array [3, 3] pair, '33' title
  union all
  select array [3, 4] pair, '34' title
  union all
  select array [3, 5] pair, '35' title
  union all
  select array [4, 1] pair, '41' title
  union all
  select array [4, 2] pair, '42' title
  union all
  select array [4, 3] pair, '43' title
  union all
  select array [4, 4] pair, '44' title
  union all
  select array [4, 5] pair, '45' title
  union all
  select array [5, 1] pair, '51' title
  union all
  select array [5, 2] pair, '52' title
  union all
  select array [5, 3] pair, '53' title
  union all
  select array [5, 4] pair, '54' title
  union all
  select array [5, 5] pair, '55' title
)
  select * from pair_title;










with pair_title as (
  select array [1, 1] pair, '11' title
  union all
  select array [1, 2] pair, '12' title
  union all
  select array [1, 3] pair, '13' title
  union all
  select array [1, 4] pair, '14' title
  union all
  select array [1, 5] pair, '15' title
  union all
  select array [2, 1] pair, '21' title
  union all
  select array [2, 2] pair, '22' title
  union all
  select array [2, 3] pair, '23' title
  union all
  select array [2, 4] pair, '24' title
  union all
  select array [2, 5] pair, '25' title
  union all
  select array [3, 1] pair, '31' title
  union all
  select array [3, 2] pair, '32' title
  union all
  select array [3, 3] pair, '33' title
  union all
  select array [3, 4] pair, '34' title
  union all
  select array [3, 5] pair, '35' title
  union all
  select array [4, 1] pair, '41' title
  union all
  select array [4, 2] pair, '42' title
  union all
  select array [4, 3] pair, '43' title
  union all
  select array [4, 4] pair, '44' title
  union all
  select array [4, 5] pair, '45' title
  union all
  select array [5, 1] pair, '51' title
  union all
  select array [5, 2] pair, '52' title
  union all
  select array [5, 3] pair, '53' title
  union all
  select array [5, 4] pair, '54' title
  union all
  select array [5, 5] pair, '55' title
),
     rasp as (select l.group_id, array [l.time_id, l.week_day_id] pair, subject
              from lesson l)
select * from rasp;













with pair_title as (
  select array [1, 1] pair, '11' title
  union all
  select array [1, 2] pair, '12' title
  union all
  select array [1, 3] pair, '13' title
  union all
  select array [1, 4] pair, '14' title
  union all
  select array [1, 5] pair, '15' title
  union all
  select array [2, 1] pair, '21' title
  union all
  select array [2, 2] pair, '22' title
  union all
  select array [2, 3] pair, '23' title
  union all
  select array [2, 4] pair, '24' title
  union all
  select array [2, 5] pair, '25' title
  union all
  select array [3, 1] pair, '31' title
  union all
  select array [3, 2] pair, '32' title
  union all
  select array [3, 3] pair, '33' title
  union all
  select array [3, 4] pair, '34' title
  union all
  select array [3, 5] pair, '35' title
  union all
  select array [4, 1] pair, '41' title
  union all
  select array [4, 2] pair, '42' title
  union all
  select array [4, 3] pair, '43' title
  union all
  select array [4, 4] pair, '44' title
  union all
  select array [4, 5] pair, '45' title
  union all
  select array [5, 1] pair, '51' title
  union all
  select array [5, 2] pair, '52' title
  union all
  select array [5, 3] pair, '53' title
  union all
  select array [5, 4] pair, '54' title
  union all
  select array [5, 5] pair, '55' title
),
     group_pair as (select *
                    from student_group,
                         pair_title)
select * from group_pair order by name, title;


















with pair_title as (
  select array [1, 1] pair, '11' title
  union all
  select array [1, 2] pair, '12' title
  union all
  select array [1, 3] pair, '13' title
  union all
  select array [1, 4] pair, '14' title
  union all
  select array [1, 5] pair, '15' title
  union all
  select array [2, 1] pair, '21' title
  union all
  select array [2, 2] pair, '22' title
  union all
  select array [2, 3] pair, '23' title
  union all
  select array [2, 4] pair, '24' title
  union all
  select array [2, 5] pair, '25' title
  union all
  select array [3, 1] pair, '31' title
  union all
  select array [3, 2] pair, '32' title
  union all
  select array [3, 3] pair, '33' title
  union all
  select array [3, 4] pair, '34' title
  union all
  select array [3, 5] pair, '35' title
  union all
  select array [4, 1] pair, '41' title
  union all
  select array [4, 2] pair, '42' title
  union all
  select array [4, 3] pair, '43' title
  union all
  select array [4, 4] pair, '44' title
  union all
  select array [4, 5] pair, '45' title
  union all
  select array [5, 1] pair, '51' title
  union all
  select array [5, 2] pair, '52' title
  union all
  select array [5, 3] pair, '53' title
  union all
  select array [5, 4] pair, '54' title
  union all
  select array [5, 5] pair, '55' title
),
     rasp as (select l.group_id, array [l.time_id, l.week_day_id] pair, subject
              from lesson l),
     group_pair as (select *
                    from student_group,
                         pair_title),
     complete_rasp_in_column as (select group_pair.pair,
                                        coalesce(rasp.subject, '-') subject,
                                        group_pair.title            title,
                                        group_pair.name             group_name,
                                        group_pair.id               group_id
                                 from rasp
                                        right outer join group_pair
                                                         on rasp.group_id = group_pair.id
                                                              AND rasp.pair = group_pair.pair
                                 ORDER BY group_pair.id, title)
select * from complete_rasp_in_column;












with pair_title as (
  select array [1, 1] pair, '11' title
  union all
  select array [1, 2] pair, '12' title
  union all
  select array [1, 3] pair, '13' title
  union all
  select array [1, 4] pair, '14' title
  union all
  select array [1, 5] pair, '15' title
  union all
  select array [2, 1] pair, '21' title
  union all
  select array [2, 2] pair, '22' title
  union all
  select array [2, 3] pair, '23' title
  union all
  select array [2, 4] pair, '24' title
  union all
  select array [2, 5] pair, '25' title
  union all
  select array [3, 1] pair, '31' title
  union all
  select array [3, 2] pair, '32' title
  union all
  select array [3, 3] pair, '33' title
  union all
  select array [3, 4] pair, '34' title
  union all
  select array [3, 5] pair, '35' title
  union all
  select array [4, 1] pair, '41' title
  union all
  select array [4, 2] pair, '42' title
  union all
  select array [4, 3] pair, '43' title
  union all
  select array [4, 4] pair, '44' title
  union all
  select array [4, 5] pair, '45' title
  union all
  select array [5, 1] pair, '51' title
  union all
  select array [5, 2] pair, '52' title
  union all
  select array [5, 3] pair, '53' title
  union all
  select array [5, 4] pair, '54' title
  union all
  select array [5, 5] pair, '55' title
),
     rasp as (select l.group_id, array [l.time_id, l.week_day_id] pair, subject
              from lesson l),
     group_pair as (select *
                    from student_group,
                         pair_title),
     complete_rasp_in_column as (select group_pair.pair,
                                        coalesce(rasp.subject, '-') subject,
                                        group_pair.title            title,
                                        group_pair.name             group_name,
                                        group_pair.id               group_id
                                 from rasp
                                        right outer join group_pair
                                                         on rasp.group_id = group_pair.id AND rasp.pair = group_pair.pair
                                 ORDER BY group_pair.id, title)
select agr.group_id, array_agg(agr.subject) arr, max(group_name) group_name
from complete_rasp_in_column agr
group by agr.group_id;











with pair_title as (
  select array [1, 1] pair, '11' title
  union all
  select array [1, 2] pair, '12' title
  union all
  select array [1, 3] pair, '13' title
  union all
  select array [1, 4] pair, '14' title
  union all
  select array [1, 5] pair, '15' title
  union all
  select array [2, 1] pair, '21' title
  union all
  select array [2, 2] pair, '22' title
  union all
  select array [2, 3] pair, '23' title
  union all
  select array [2, 4] pair, '24' title
  union all
  select array [2, 5] pair, '25' title
  union all
  select array [3, 1] pair, '31' title
  union all
  select array [3, 2] pair, '32' title
  union all
  select array [3, 3] pair, '33' title
  union all
  select array [3, 4] pair, '34' title
  union all
  select array [3, 5] pair, '35' title
  union all
  select array [4, 1] pair, '41' title
  union all
  select array [4, 2] pair, '42' title
  union all
  select array [4, 3] pair, '43' title
  union all
  select array [4, 4] pair, '44' title
  union all
  select array [4, 5] pair, '45' title
  union all
  select array [5, 1] pair, '51' title
  union all
  select array [5, 2] pair, '52' title
  union all
  select array [5, 3] pair, '53' title
  union all
  select array [5, 4] pair, '54' title
  union all
  select array [5, 5] pair, '55' title
),
     rasp as (select l.group_id, array [l.time_id, l.week_day_id] pair, subject
              from lesson l),
     group_pair as (select *
                    from student_group,
                         pair_title),
     complete_rasp_in_column as (select group_pair.pair,
                                        coalesce(rasp.subject, '-') subject,
                                        group_pair.title            title,
                                        group_pair.name             group_name,
                                        group_pair.id               group_id
                                 from rasp
                                        right outer join group_pair
                                                         on rasp.group_id = group_pair.id AND rasp.pair = group_pair.pair
                                 ORDER BY group_pair.id, title)
select group_name,
       arr [ 1]  "Mon 8:30",
       arr [ 2]  "Mon 10:10",
       arr [ 3]  "Mon 11:50",
       arr [ 4]  "Mon 14:00",
       arr [ 5]  "Mon 15:40",
       arr [ 6]  "Tue 8:30",
       arr [ 7]  "Tue 10:10",
       arr [ 8]  "Tue 11:50",
       arr [ 9]  "Tue 14:00",
       arr [ 10] "Tue 15:40"
from student_group sg
       inner join (select agr.group_id, array_agg(agr.subject) arr, max(group_name) group_name
                   from complete_rasp_in_column agr
                   group by agr.group_id) rog
                  ON rog.group_id = sg.id;