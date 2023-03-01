USE ymir_stephen;
-- Write SELECT statements to output each of the following with a caption:
-- All albums in your table.
SELECT 'Album' AS 'Displaying all albums',
name_record FROM albums;

-- All albums released before 1980
SELECT 'Album' AS 'Albums released before 1980',
name_record, release_date FROM albums WHERE release_date < 1980;

-- All albums by Michael Jackson
SELECT 'Album' AS 'Michael Jackson Albums',
name_record FROM albums WHERE artist = 'Michael Jackson';


-- After each SELECT add an UPDATE statement to:
-- Make all the albums 10 times more popular (sales * 10)
SELECT sales FROM albums;
UPDATE albums
SET sales = (sales * 10);
SELECT sales FROM albums;

-- Move all the albums before 1980 back to the 1800s.
SELECT release_date FROM albums;
UPDATE albums
SET release_date = (release_date - 100) WHERE release_date < 1980;
SELECT release_date FROM albums;

-- Change 'Michael Jackson' to 'Peter Jackson'
SELECT artist FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT artist FROM albums WHERE artist = 'Peter Jackson';

-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.