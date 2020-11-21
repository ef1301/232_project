CREATE TABLE users(
  id INTEGER PRIMARY KEY,
  username TEXT,
  email TEXT,
  password TEXT
);

CREATE TABLE anime(
  id INTEGER PRIMARY KEY,
  name TEXT,
  description TEXT
);

CREATE TABLE genre(
  id INTEGER PRIMARY KEY,
  genre TEXT
);

CREATE TABLE anime_list(
  user_id INTEGER REFERENCES users(id),
  anime_id INTEGER REFERENCES anime(id),
  rating INTEGER
);

CREATE TABLE genre_to(
  anime_id INTEGER,
  genre_id INTEGER REFERENCES genre(id)
);
