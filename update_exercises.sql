USE ymir_stephen;
-- Write SELECT statements to output each of the following with a caption:
-- All albums in your table.
SELECT * FROM albums;
UPDATE albums SET sales = (sales * 10);
SELECT * FROM albums;


-- All albums released before 1980
SELECT 'Album' AS 'Albums released before 1980',
        album_name, release_date FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = (release_date - 100) WHERE release_date < 1980;
SELECT * FROM albums;


-- All albums by Michael Jackson
SELECT 'Album' AS 'Michael Jackson Albums',
artist, album_name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums;


-- After each SELECT add an UPDATE statement to:
-- Make all the albums 10 times more popular (sales * 10)
-- Move all the albums before 1980 back to the 1800s.
-- Change 'Michael Jackson' to 'Peter Jackson'
-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.