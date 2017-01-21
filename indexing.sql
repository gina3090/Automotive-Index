DROP USER IF EXISTS "indexed_cars_user";

CREATE USER "indexed_cars_user";

DROP DATABASE IF EXISTS "indexed_cars";

CREATE DATABASE "indexed_cars" OWNER "indexed_cars_user";

\c indexed_cars;

\i scripts/car_models.sql;

\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;

\timing

SELECT DISTINCT make_title FROM "car_models" WHERE make_code = 'LAM'; -- 3.126 ms

SELECT DISTINCT model_title FROM "car_models" WHERE make_code = 'NISSAN' AND model_code = 'GT-R'; -- 0.804 ms

SELECT make_code, model_code, model_title, year FROM "car_models" WHERE make_code = 'LAM'; -- 1.500 ms

SELECT * FROM "car_models" WHERE year BETWEEN 2010 AND 2015; -- 94.961 ms

SELECT * FROM "car_models" WHERE year = 2010; -- 19.126 ms