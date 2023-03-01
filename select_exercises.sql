USE ymir_stephen;
-- The name of all albums by Pink Floyd.
SELECT 'Album: ' AS 'Pink Floyd''s Albums',
name_record FROM albums WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT 'Sgt. Pepper''s Lonely Hearts Club Band' AS 'Album',
release_date FROM albums WHERE name_record = 'Sgt. Pepper''s Lonely Hearts Club Band' AS 'release date';

-- The genre for Nevermind (this does not exist)
SELECT 'Genre for SPLHCB: ' AS 'SPLHCB',
genre FROM albums WHERE name_record = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- Which albums were released in the 1990s
SELECT 'Artist | Record' AS '90''s album''s',
artist, name_record FROM albums WHERE release_date BETWEEN 1990 AND 1999;

-- Which albums had less than 20 million certified sales
SELECT 'Artist | Album | Sales(millions)' AS 'Worst of the best artist sales',
artist, name_record, sales FROM albums WHERE sales < 20;

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT 'Artist | Album' AS 'Rock Albums',
artist, name_record FROM albums WHERE genre = 'Rock';