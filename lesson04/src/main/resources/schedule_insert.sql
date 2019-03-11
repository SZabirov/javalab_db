INSERT INTO student_group (id, name) VALUES (1, '12-702');
INSERT INTO student_group (id, name) VALUES (2, '12-703');

INSERT INTO student (id, firstname, group_id) VALUES (1, 'John', 1);
INSERT INTO student (id, firstname, group_id) VALUES (2, 'Michael', 2);

INSERT INTO time_slot (id, position, time_range) VALUES (1, 1, '8:30 - 10:00');
INSERT INTO time_slot (id, position, time_range) VALUES (2, 2, '10:10 - 11:50');
INSERT INTO time_slot (id, position, time_range) VALUES (3, 3, '12:00 - 13:20');
INSERT INTO time_slot (id, position, time_range) VALUES (4, 4, '14:00 - 15:30');
INSERT INTO time_slot (id, position, time_range) VALUES (5, 5, '15:40 - 17:10');

INSERT INTO week_day (id, position, day_name) VALUES (1, 1, 'понедельник');
INSERT INTO week_day (id, position, day_name) VALUES (2, 2, 'вторник');
INSERT INTO week_day (id, position, day_name) VALUES (3, 3, 'среда');
INSERT INTO week_day (id, position, day_name) VALUES (4, 4, 'четверг');
INSERT INTO week_day (id, position, day_name) VALUES (5, 5, 'пятница');

INSERT INTO lesson (id, subject, group_id, week_day_id, time_id) VALUES (1, 'матан', 1, 1, 1);
INSERT INTO lesson (id, subject, group_id, week_day_id, time_id) VALUES (2, 'алгем', 1, 1, 3);
INSERT INTO lesson (id, subject, group_id, week_day_id, time_id) VALUES (3, 'инфа', 1, 2, 4);
INSERT INTO lesson (id, subject, group_id, week_day_id, time_id) VALUES (4, 'аисд', 1, 2, 1);
INSERT INTO lesson (id, subject, group_id, week_day_id, time_id) VALUES (5, 'бд', 1, 3, 5);
INSERT INTO lesson (id, subject, group_id, week_day_id, time_id) VALUES (6, 'сети', 1, 4, 1);
INSERT INTO lesson (id, subject, group_id, week_day_id, time_id) VALUES (7, 'сети', 1, 4, 2);
INSERT INTO lesson (id, subject, group_id, week_day_id, time_id) VALUES (8, 'англ', 2, 5, 4);
INSERT INTO lesson (id, subject, group_id, week_day_id, time_id) VALUES (9, 'англ', 2, 1, 1);