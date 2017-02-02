-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

1) Find the albums recorded by the artist Queen.

chinook_development=# SELECT title FROM albums WHERE artist_id = 51;
     title
-------------------
Greatest Hits II
Greatest Hits I
News Of The World
(3 rows)


2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".
chinook_development=# SELECT COUNT(*) FROM tracks WHERE media_type_id = 3;
 count
-------
   214
(1 row)


3) Find the least expensive track that has the genre "Electronica/Dance".
LINE 1: SELECT TOP 1 * FROM tracks WHERE genre_id = 15 ORDER BY unit...
                   ^
chinook_development=# SELECT * FROM tracks WHERE genre_id = 15 ORDER BY unit_price ASC LIMIT 1;
  id  | album_id | genre_id | media_type_id |        name        | composer | milliseconds |  bytes   | unit_price |         created_at         |         updated_at
------+----------+----------+---------------+--------------------+----------+--------------+----------+------------+----------------------------+----------------------------
 3319 |      259 |       15 |             1 | Instinto Colectivo |          |       300564 | 12024875 |       0.99 | 2004-09-27 22:40:29.778016 | 2014-01-29 22:15:04.377727
(1 row)


3290

4) Find the all the artists whose names start with A.
chinook_development=# SELECT name FROM artists WHERE name LIKE 'A%';
                                         name
---------------------------------------------------------------------------------------
 Aerosmith
 Alice In Chains
 Antônio Carlos Jobim
 Apocalyptica
 Azymuth
 Aquaman
 AC/DC
 Alanis Morissette
 Audioslave
 Avril Lavigne
 Aisha Duo
 Aaron Goldberg
 Academy of St. Martin in the Fields Chamber Ensemble & Sir Neville Marriner
 Academy of St. Martin in the Fields, John Birch, Sir Neville Marriner & Sylvia McNair
 Aaron Copland & London Symphony Orchestra
 Antal Doráti & London Symphony Orchestra
 Amy Winehouse
 Adrian Leaper & Doreen de Feis
 Accept
 Aerosmith & Sierra Leone's Refugee Allstars
 Alberto Turco & Nova Schola Gregoriana
 Anne-Sophie Mutter, Herbert Von Karajan & Wiener Philharmoniker
 Academy of St. Martin in the Fields & Sir Neville Marriner
 Academy of St. Martin in the Fields, Sir Neville Marriner & William Bennett
 Academy of St. Martin in the Fields, Sir Neville Marriner & Thurston Dart
 A Cor Do Som
(26 rows)



-- 5) Find all the tracks that belong to playlist 1.
chinook_development=# SELECT tracks.name FROM tracks inner join playlists_tracks ON tracks.id = playlists_tracks.track_id WHERE playlists_tracks.playlist_id =1;
                                                            name
-----------------------------------------------------------------------------------------------------------------------------
 Band Members Discuss trackss from "Revelations"
 Revelations
 One and the Same
 Sound of a Gun
 Until We Fall
 Original Fire
 Broken City
 Somedays
 Shape of Things to Come
 Jewel of the Summertime
 Wide Awake
 Nothing Left to Say But Goodbye
 Moth
 Show Me How to Live (Live at the Quart Festival)
 War Pigs
 Slowness
 No Such Thing
 Poison Eye
 Arms Around Your Love
 Safe and Sound
 She'll Never Be Your Man
 Ghosts
 Killing Birds
 Billie Jean
 Scar On the Sky
 Your Soul Today
 Finally Forever
 Silence the Voices
 Disappearing Act
 You Know My name
 Say Hello 2 Heaven
 Reach Down
 Hunger Strike
 Pushin Forward Back
 Call Me a Dog
 Times of Trouble
