CREATE TABLE ord
(
    id           BIGSERIAL NOT NULL,
    order_number VARCHAR(255) NOT NULL,
    product_name VARCHAR(255),
    user_name    VARCHAR(255),
    PRIMARY KEY (id)
);
CREATE TABLE product
(
    id           BIGSERIAL NOT NULL,
    price        REAL         NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE user_role
(
    user_id BIGSERIAL NOT NULL,
    roles   VARCHAR(255)
);
CREATE TABLE usr
(
    id       BIGSERIAL NOT NULL,
    active   BOOLEAN NOT NULL DEFAULT (true),
    password VARCHAR(255),
    username VARCHAR(255),
    primary key (id)
);
ALTER TABLE user_role
    ADD CONSTRAINT user_role_user_fk
        FOREIGN KEY (user_id) REFERENCES usr;
