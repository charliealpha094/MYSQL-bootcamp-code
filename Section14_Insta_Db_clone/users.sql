-- Done by Carlos Amaral (2021/03/29)

-- Instagram db clone
-- Users schema

CREATE TABLE users(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255),
    created_at TIMESTAMP DEFAULT NOW()
);
