CREATE TABLE IF NOT EXISTS user_table
(
    id UUID PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(20) NOT NULL UNIQUE,

    CONSTRAINT phone_format
    CHECK (phone ~ '^(\+7|8)?9\\d{9}$')
);