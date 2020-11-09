-- +----------+             +-------------+
-- |  users   |             |    ads      |
-- +----------+             +-------------+
-- | id       |<------,     | id          |
-- | username |       `-----| user_id     | <-- foreign key to users table
-- | email    |             | title       |
-- | password |             | description |
-- +----------+             +-------------+

USE adlister_db;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS ads;

CREATE TABLE users
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(25)  NOT NULL,
    email    VARCHAR(240) NOT NULL,
    password VARCHAR(25)  NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id     INT UNSIGNED NOT NULL,
    title       VARCHAR(100) NOT NULL,
    description TEXT         NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);
