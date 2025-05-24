CREATE TABLE IF NOT EXISTS user_info_table
(
    id UUID PRIMARY KEY NOT NULL,
    myself VARCHAR DEFAULT 'Нет Описания',
    city_id VARCHAR(100) NOT NULL,
    user_id UUID NOT NULL,

    CONSTRAINT fk_user_user_info
    FOREIGN KEY (user_id)
    REFERENCES user_table(id)
    ON DELETE CASCADE,

    CONSTRAINT fk_user_unfo_city
    FOREIGN KEY (city_id)
    REFERENCES city_table(name)
);