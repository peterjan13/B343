-- [SECTION] Advance Selects

-- Exclude records
SELECT * FROM songs WHERE song_name != "Kundiman";

-- Exclude OPM songs and we want to show the song_name and length column only.

SELECT song_name, length FROM songs WHERE genre != "OPM";
SELECT song_name, length FROM songs WHERE genre != "opm";

-- Greater than or equal
SELECT * FROM songs WHERE length > 300;
SELECT * FROM songs WHERE length < 300;

-- Songs that are longer than 3 minutes but shorter than 4 minutes;
SELECT * FROM songs WHERE length > 300 AND length < 400;
SELECT * FROM songs WHERE length >= 300 AND length <= 416;

-- OR operator
SELECT * FROM songs WHERE id = 1 OR id = 5 OR id = 3;

-- IN OPERATOR
SELECT * FROM songs WHERE id IN (1,3,5);
SELECT * FROM songs WHERE genre IN ("Pop", "Pop Rock");

-- Find partial matches:
SELECT * FROM songs WHERE song_name LIKE "%y";
SELECT * FROM songs WHERE song_name LIKE "%Story";
SELECT * FROM songs WHERE song_name LIKE "k%";
SELECT * FROM songs WHERE song_name LIKE "s%e";
SELECT * FROM songs WHERE song_name LIKE "%t%";
SELECT * FROM songs WHERE song_name LIKE "%s%o%";
SELECT * FROM songs WHERE song_name LIKE "l%r%";
SELECT * FROM songs WHERE song_name LIKE "l%r%" AND genre = "Pop";
SELECT * FROM songs WHERE song_name LIKE "%s%o%" OR song_name LIKE "%o%s%";

-- LIKE (INT) (Pattern):
SELECT * FROM albums WHERE album_title LIKE "Tr_";
SELECT * FROM albums WHERE album_title LIKE "Tr%";
SELECT * FROM albums WHERE album_title LIKE "Tr_p";
SELECT * FROM songs WHERE id LIKE "1_";
SELECT * FROM songs WHERE id LIKE "_";
SELECT * FROM songs WHERE id LIKE "__";

-- Sorting records:
SELECT * FROM songs ORDER BY song_name ASC;
SELECT * FROM songs ORDER BY song_name DESC;

SELECT * FROM songs WHERE song_name LIKE "%s%o%" ORDER BY song_name ASC;

-- GET distinct records
SELECT DISTINCT genre FROM songs;

-- SECTION:  Table Joins
SELECT * FROM artists JOIN albums ON artists.id = albums.artist_id;

SELECT artists.name, albums.album_title, albums.date_released FROM artists JOIN albums ON artists.id = albums.artist_id;

SELECT * FROM artists JOIN albums ON artists.id = albums.artist_id JOIN songs ON albums.id = songs.album_id;

SELECT artists.name, albums.album_title, songs.song_name FROM artists JOIN albums ON artists.id = albums.artist_id JOIN songs ON albums.id = songs.album_id;

SELECT artists.name, albums.album_title, songs.song_name FROM artists JOIN albums ON artists.id = albums.artist_id JOIN songs ON albums.id = songs.album_id ORDER BY song_name ASC;

SELECT artists.name, albums.album_title, songs.song_name FROM artists JOIN albums ON artists.id = albums.artist_id JOIN songs ON albums.id = songs.album_id WHERE song_name LIKE "l%" ORDER BY song_name ASC;