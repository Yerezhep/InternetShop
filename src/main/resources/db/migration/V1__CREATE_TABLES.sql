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
    title VARCHAR(200) \NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--
CREATE TABLE user_role(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    user_id BIGINT REFERENCES user_data(id),
    role_id BIGINT REFERENCES role(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);