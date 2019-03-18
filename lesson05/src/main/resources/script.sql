--анализирует и выполняет запрос, показывает реальное время исполнения, а также используемый план для поиска
explain analyze select * from t1_tag_resource where tag_id = 100;

--создание b-tree индекса
create index t1_tag_resource_tag_id_idx on t1_tag_resource(tag_id);

DROP INDEX t1_tag_resource_tag_id_idx;