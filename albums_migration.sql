USE ymir_stephen;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(50) NOT NULL,
    release_date DATE NOT NULL,
    sales FLOAT(9, 2) NOT NULL,
    genre VARCHAR(250) NOT NULL,
    PRIMARY KEY (id)
);

SHOW CREATE TABLE albums;

DESCRIBE albums;
