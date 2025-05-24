CREATE TABLE IF NOT EXISTS city_table
(
    name VARCHAR(100) PRIMARY KEY NOT NULL
);

INSERT INTO city_table (name)
VALUES
('Москва'),
('Санкт-Петербург'),
('Краснодар'),
('Нижний Новгород'),
('Омск'),
('Волгоград'),
('Владивосток')
ON CONFLICT (name) DO NOTHING;