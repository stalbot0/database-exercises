USE ymir_stephen;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    artist CHAR(150) NOT NULL,
    album_name CHAR(150) NOT NULL,
    release_date INT(4) NOT NULL,
    sales DECIMAL(9, 2) NOT NULL,
    genre CHAR(250) NOT NULL,
    PRIMARY KEY (id)
    );

SHOW CREATE TABLE albums;

DESCRIBE albums;
