-- Таблица пользователей
CREATE TABLE user_data(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    password VARCHAR(150) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Таблица ролей
CREATE TABLE role(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Таблица связи юзеров и ролей
CREATE TABLE user_role(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    user_id BIGINT REFERENCES user_data(id) ON DELETE CASCADE,
    role_id BIGINT REFERENCES role(id) ON DELETE CASCADE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Таблица категории
CREATE TABLE category(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Таблица продукты
CREATE TABLE product(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    price FLOAT NOT NULL,
    status BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    category_id BIGINT REFERENCES category(id) ON DELETE CASCADE
);