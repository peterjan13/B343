-- Lists down the databases inside our DBMS
SHOW DATABASE;

show databases;

-- Dont forget to add delimiter

-- CREATE a database
-- Syntax:
    -- CREATE DATABASE name_db;
    
CREATE DATABASE trial_db;

-- Drop/delete Database
-- Syntax: 
    -- DROB DATABASE name_db;
DROP DATABASE trial_db;

-- Use a Database
-- Syntax: 
    -- USE name_db;
USE music_db;

-- Create Table:
CREATE TABLE artists(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

-- To show the list of tables
SHOW TABLES;

-- Mini-Activity: Create the users table, it should have the following porperty and settings
    /*
        id - Primariy key, int, not null, auto increment
        username - same with username
        full_name - same with username
        contactnumber - int, not null
        email - varchar (50)
        address - varchar (50)
    */

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    full_name VARCHAR(50) NOT NULL,
    contact_number INT NOT NULL,
    email VARCHAR(50),
    address VARCHAR(50),
    PRIMARY KEY (id)
);

-- Creation of the albums table
CREATE TABLE albums(
    id INT NOT NULL AUTO_INCREMENT,
    album_title VARCHAR(50) NOT NULL,
    date_released DATE NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_albums_artist_id
        FOREIGN KEY (artist_id) REFERENCES artists(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- Creation of the songs table
CREATE TABLE songs(
    id INT NOT NULL AUTO_INCREMENT,
    song_name VARCHAR(50) NOT NULL,
    length TIME NOT NULL,
    album_id INT NOT NULL,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_songs_album_id
        FOREIGN KEY(album_id) REFERENCES albums(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- Mini-Activity: Create the table for Playlists
CREATE TABLE playlists (
    id INT NOT NULL AUTO_INCREMENT,
    date_created DATE NOT NULL,
    user_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_playlists_user_id
        FOREIGN KEY (user_id) REFERENCES users (id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- Creation of playlist songs
CREATE TABLE playlists_songs (
    id INT NOT NULL AUTO_INCREMENT,
    playlist_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_playlists_songs_playlist_id
        FOREIGN KEY (playlist_id) REFERENCES playlists(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_playlists_songs_song_id
        FOREIGN KEY (song_id) REFERENCES songs(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
