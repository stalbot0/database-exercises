USE ymir_stephen;
-- The name of all albums by Pink Floyd.
-- SELECT 'displaying all albums by pink floyd' AS 'Getting Albums';
SELECT artist, name_record FROM albums WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
-- SELECT 'displaying year SPLHCB was released' AS 'Getting SGT Pepper''s release date';
SELECT name_record, release_date FROM albums WHERE name_record = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind (this does not exist)
-- SELECT 'displaying genre for Nevermind' AS 'Nirvana Nevermind Genre';
SELECT artist, genre FROM albums WHERE name_record = 'Nevermind';

-- Which albums were released in the 1990s
-- SELECT 'displaying albums released in the 90''s' AS 'ALL album''s released in the 90''s';
SELECT artist, name_record FROM albums WHERE release_date BETWEEN 1990 AND 1999;

-- Which albums had less than 20 million certified sales
-- SELECT 'displaying albums with less than 20 million certified sales' AS 'Worst of the best artist sales';
SELECT artist, name_record, sales FROM albums WHERE sales < 20;

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
-- SELECT 'displaying Rock albums' AS 'Rock Albums';
SELECT artist, name_record, genre FROM albums WHERE genre = 'Rock';