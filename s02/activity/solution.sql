CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(300) NOT NULL,
    datetime_created DATETIME NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE post_likes (
    id INT NOT NULL AUTO_INCREMENT,
    post_id INT NOT NULL,
    user_id INT NOT NULL,
    datetime_liked DATETIME NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_post_likes_post_id
        FOREIGN KEY (post_id) REFERENCES posts(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
    CONSTRAINT fk_post_likes_user_id
        FOREIGN KEY (user_id) REFERENCES users(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE posts (
    id INT NOT NULL AUTO_INCREMENT,
    author_id INT NOT NULL,
    title VARCHAR(500) NOT NULL,
    content VARCHAR(5000) NOT NULL,
    datetime_posted DATETIME NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE post_comments (
    id INT NOT NULL AUTO_INCREMENT,
    post_id INT NOT NULL,
    user_id INT NOT NULL,
    content VARCHAR(1000) NOT NULL,
    datetime_commented DATETIME NOT NULL,
    PRIMARY KEY (id),
        CONSTRAINT fk_post_comments_post_id
        FOREIGN KEY (post_id) REFERENCES posts(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
    CONSTRAINT fk_post_comments_user_id
        FOREIGN KEY (user_id) REFERENCES users(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);