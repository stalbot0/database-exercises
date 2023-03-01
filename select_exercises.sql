USE ymir_stephen;
-- The name of all albums by Pink Floyd.
SELECT 'Album: ' AS 'Pink Floyd''s Albums',
album_name FROM albums WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT 'Sgt. Pepper''s Lonely Hearts Club Band' AS 'Album',
release_date FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind (this does not exist)
SELECT 'Genre for SPLHCB: ' AS 'SPLHCB',
genre FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- Which albums were released in the 1990s
SELECT 'Record: ' AS '90''s album''s',
album_name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

-- Which albums had less than 20 million certified sales
SELECT 'Album | Sales(millions)' AS 'Worst of the best artist sales',
album_name, sales FROM albums WHERE sales < 20;

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT 'Album' AS 'Rock Albums',
album_name FROM albums WHERE genre = 'Rock';