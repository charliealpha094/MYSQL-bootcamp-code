-- Done by Carlos Amaral (2021/03/29)

-- Instagram db clone
-- Photos schema

CREATE TABLE photos(
    id INTEGER AUTO_INCREMENT PRIMARY_KEY,
    image_url VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id)
);
