CREATE TABLE users(
  user_id INTEGER PRIMARY KEY,
  username TEXT,
  email TEXT,
  password TEXT
);

CREATE TABLE anime(
  anime_id INTEGER PRIMARY KEY,
  title TEXT,
  description TEXT
);

CREATE TABLE genre(
  genre_id INTEGER PRIMARY KEY,
  genre TEXT
);

CREATE TABLE anime_list(
  user_id INTEGER REFERENCES users(user_id),
  anime_id INTEGER REFERENCES anime(anime_id),
  rating INTEGER
);

CREATE TABLE genre_to(
  anime_id INTEGER REFERENCES anime(anime_id),
  genre_id INTEGER REFERENCES genre(genre_id)
);
