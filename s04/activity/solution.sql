-- a. Find all artists that has letter d in its name.
SELECT * FROM artists WHERE name LIKE "%d%";

-- b. Find all songs that has a length of less than 3:50
SELECT * FROM songs WHERE length < 350;

-- c. Join the 'albums' and 'songs' tables. (Only show the album name, song name, and song length.)
SELECT albums.album_title, songs.song_name, songs.length
FROM albums 
JOIN songs 
ON albums.id = songs.album_id;

-- d. Join the 'artists' and 'albums' tables. (Find all albums that has letter a in its name.)
SELECT *
FROM artists
JOIN albums
ON artists.id = albums.artist_id
WHERE album_title LIKE "%a%";

-- e. Sort the albums in Z-A order. (Show only the first 4 records.)
SELECT * FROM albums WHERE id IN (1,2,3,4) ORDER BY album_title DESC;

-- f. Join the 'albums' and 'songs' tables. (Sort albums from Z-A)
SELECT albums.album_title, songs.song_name, songs.length
FROM albums 
JOIN songs 
ON albums.id = songs.album_id
ORDER BY album_title DESC;
