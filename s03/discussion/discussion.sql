-- [SECTION] CREATION OF RECORDS / INSERT
-- INSERT INTO table_name (columns_in table) VALUES (values_per_column);

INSERT INTO artists (name) VALUES ("Rivermaya");
INSERT INTO artists (name) VALUES ("Psy");

INSERT INTO artists (name) VALUES ("Taylor Swift"), ("Parokya Ni Edgar");

INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Trip", "1996-1-1", 1);

INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Midnight (Taylor's Version)", "2023-1-1", 3), ("1998 (Taylor's Version)", "2023-1-1", 3), ("Bigotilyo", "2003-1-1", 4);

-- [SECTION] Read/retrieving records from db
-- SELECT * FROM name_table;
--artists table
SELECT * FROM artists;

-- albums table
SELECT * FROM albums;

-- We are going to add record in the songs table
INSERT INTO songs (song_name, length, album_id, genre) VALUES ("Kundiman", 234, 1, "OPM");

INSERT INTO songs (song_name, length, album_id, genre) VALUES ("Alumni Homecoming", 442, 4, "OPM"), ("Snow on the beach", 416, 2, "Pop"), ("Anti-Hero", 321, 2, "Pop");

-- Retrieve selected columns
SELECT song_name, length, genre FROM songs;

-- Retrieve OPM songs only
SELECT * FROM songs WHERE genre = "OPM";

-- Retrieve a specific album
SELECT * FROM songs WHERE album_id = 2;

-- We can use AND and OR operator for multiple expressions
SELECT * FROM songs WHERE genre = "OPM" AND length > 234;

SELECT song_name, length, genre FROM songs WHERE genre = "OPM" AND length > 234;

SELECT * FROM songs WHERE genre = "OPM" OR length > 234;

-- [SECTION] Updating record
-- Syntax:
    -- UPDATE table_name SET column = value_to_be WHERE condition;

UPDATE songs SET length = 240 WHERE song_name = "Kundiman";

UPDATE songs SET song_name = "Trial" WHERE length > 234;

UPDATE songs SET id = 10 WHERE song_name = "Kundiman";

-- [SECTION] DELETING RECORD
    -- DELETE FROM table_name WHERE condition;
DELETE FROM songs WHERE length =240;    

INSERT INTO songs (id, song_name, length, album_id, genre) VALUES (5, "Trial Song", 234, 1, "OPM");