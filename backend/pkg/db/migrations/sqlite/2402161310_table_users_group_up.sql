-- +migrate Up
CREATE TABLE IF NOT EXISTS users_group (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title VARCHAR(30) NOT NULL,
	group_description VARCHAR(200) NOT NULL,
    user_id INTEGER NOT NULL,
  	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE
);