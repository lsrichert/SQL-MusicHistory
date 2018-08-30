--1. Query all of the entries in the Genre table
SELECT * FROM Genre;
--2. Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT INTO Artist 
VALUES
(null, "Jisie", 1989);
--3. Using the INSERT statement, add one, or more, albums by your artist to the Album table.
INSERT INTO Album
VALUES 
(null, "Coder", "01/01/2009", 3000, "Columbia", 28, 1);
--4. Using the INSERT statement, add some songs that are on that album to the Song table.
INSERT INTO Song
VALUES 
(null, "Code All Night", 300, "01/01/2009", 1, 28, 25),
(null, "Love to Code", 295, "01/01/2009", 1, 28, 25);
--5. Write a SELECT query that provides the song titles, album title, and artist name for all of the 
--data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE 
--keyword to filter the results to the album and artist you added.
--'as songName' in the first line more clearly labels my chart
SELECT a. ArtistName, al.Title, s.Title as songName
FROM Artist a
LEFT JOIN Album al
ON a.ArtistId = al.ArtistId
LEFT JOIN Song s
ON al.AlbumId = s.AlbumId
WHERE a.ArtistName 
LIKE "Jisie";

SELECT a.Title, s.Title 
FROM Album a 
LEFT JOIN Song s 
ON s.AlbumId = a.AlbumId;

SELECT a.Title, s.Title 
FROM Song s 
LEFT JOIN Album a 
ON s.AlbumId = a.AlbumId;

--6. Using SELECT and LEFT JOIN, write a query that displays the song title, the song duration, the 
--album label, and the genre name for every song.






