USE ymir_stephen;
-- SELECT 'Artist | Album | Release Date' AS 'Albums released after 1991',
-- artist, name_record, release_date FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

-- SELECT 'Artist | Album' AS 'Disco Albums!',
-- artist, name_record FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';

-- SELECT 'Album: ' AS 'Whitney Houston''s Albums',
-- name_record FROM albums WHERE artist = 'Whitney Houston';
DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT * FROM albums;