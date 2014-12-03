

CREATE TABLE MrWaltDisney ( 
fullName VARCHAR(50) NOT NULL PRIMARY KEY, 
birthDate DATE, 
deathDate DATE, 
lifespan INT, 
MoviesMade VARCHAR(50)
);

CREATE TABLE Disney ( 
employerID VARCHAR(11) NOT NULL PRIMARY KEY, 
netWorth DECIMAL(12,2), 
CEO VARCHAR(40)
);

CREATE TABLE TheVault ( 
vaultID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
movieTitle VARCHAR(50), 
dateAdded DATE, 
dateReReleased DATE,  
timeInVault DATE /*What variable does this need to be in??*/
);

CREATE TABLE Movies ( 
movieID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
mainTitle VARCHAR(50), 
subTitle VARCHAR(50), 
releaseYear INT, 
genre VARCHAR(50),
rating VARCHAR(6),
INDEX movieTitle(mainTitle, subTitle) /*Is this how you do a multivalued attribute*/
);

CREATE TABLE Music ( 
songID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
title VARCHAR(100), 
genre VARCHAR(50), 
album VARCHAR(50) 
);

CREATE TABLE Characters ( 
charID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(50), 
gender CHAR/* , 
MoviesIn VARCHAR(50) */ 
);

CREATE TABLE MoviesInforCharacters ( 
charID INT NOT NULL, 
movieID INT NOT NULL 
);

CREATE TABLE EasterEggs ( 
eggID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
eggName VARCHAR(50), 
/* movieInstances VARCHAR(50), */ 
numAppearances INT
);

CREATE TABLE movieInstancesforEasterEggs ( 
eggID INT NOT NULL, 
movieID INT NOT NULL 
);

CREATE TABLE ActorsCast ( 
actorID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(50), 
voiceOf VARCHAR(50), 
/* moviesVoicedFor VARCHAR(50), */ 
gender CHAR,
dateOfBirth DATE
);

CREATE TABLE MoviesVoicedForActorsCast ( 
actorID INT NOT NULL, 
movieID INT NOT NULL
);

CREATE TABLE Directors ( 
directorID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(50),
dateOfBirth DATE, 
numMoviesDirected INT, 
age INT
);

CREATE TABLE DirectorsToMovies ( 
directorID INT NOT NULL, 
movieID INT NOT NULL
);

CREATE TABLE Artists ( 
artistID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(50), 
birthDate DATE
);

CREATE TABLE ArtistsToMusic ( 
artistID INT NOT NULL, 
songID INT NOT NULL /*should make any of these secondary key (forgot what called)*/
);


/*********************Optional**********************/
CREATE TABLE ActorsCast ( 
actorID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(50), 
/*voiceOf VARCHAR(50),*/
/* moviesVoicedFor VARCHAR(50), */ 
gender CHAR,
dateOfBirth DATE
);

CREATE TABLE VoiceOfForActorsCast ( 
actorID INT NOT NULL, 
charID INT NOT NULL /*should make any of these secondary key (forgot what called)*/
);

INSERT INTO VoiceOfForActorsCast (actorID, charID) VALUES (1,1);
INSERT INTO VoiceOfForActorsCast (actorID, charID) VALUES (2,2);
INSERT INTO VoiceOfForActorsCast (actorID, charID) VALUES (3,3);
INSERT INTO VoiceOfForActorsCast (actorID, charID) VALUES (4,4);
INSERT INTO VoiceOfForActorsCast (actorID, charID) VALUES (5,5);


INSERT INTO ActorsCast (name, gender, dateOfBirth) VALUES ('Ming-Na Wen', 'F', '1963-11-20');
INSERT INTO ActorsCast (name, gender, dateOfBirth) VALUES ('Johnny Depp', 'M', '1963-06-09');
INSERT INTO ActorsCast (name, gender, dateOfBirth) VALUES ('Joseph Gordon-Levitt', 'M', '1981-02-17');
INSERT INTO ActorsCast (name, gender, dateOfBirth) VALUES ('John C. Reilly', 'M', '1965-05-24');
INSERT INTO ActorsCast (name, gender, dateOfBirth) VALUES ('Ilene Woods', 'F', '1929-05-05');
/********************Optional End***************************/



/*Put these in after the rest of the data*/
INSERT INTO MoviesInforCharacters (charID, movieID) VALUES (1,50);
INSERT INTO MoviesInforCharacters (charID, movieID) VALUES (1,51);
INSERT INTO MoviesInforCharacters (charID, movieID) VALUES (2,35);
INSERT INTO MoviesInforCharacters (charID, movieID) VALUES (2,36);
INSERT INTO MoviesInforCharacters (charID, movieID) VALUES (2,37);
INSERT INTO MoviesInforCharacters (charID, movieID) VALUES (2,38);
INSERT INTO MoviesInforCharacters (charID, movieID) VALUES (3,44);
INSERT INTO MoviesInforCharacters (charID, movieID) VALUES (3,77);
INSERT INTO MoviesInforCharacters (charID, movieID) VALUES (4,10);
INSERT INTO MoviesInforCharacters (charID, movieID) VALUES (5,82);

INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (1,16);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (1,17);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (1,18);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (1,75);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (1,78);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (1,15);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (1,25);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (1,23);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (1,20);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (1,12);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (1,80);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (1,52);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,48);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,1);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,82);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,58);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,59);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,62);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,64);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,65);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,66);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,67);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,68);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,39);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,42);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,70);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,47);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,50);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,76);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,10);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (2,83);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (3,16);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (3,78);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (3,52);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (3,15);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (3,28);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (3,25);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (3,23);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (3,20);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (3,75);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (3,76);
INSERT INTO movieInstancesforEasterEggs (eggID, movieID) VALUES (3,19);

INSERT INTO MoviesVoicedForActorsCast (actorID, movieID) VALUES (1,50);
INSERT INTO MoviesVoicedForActorsCast (actorID, movieID) VALUES (1,51);
INSERT INTO MoviesVoicedForActorsCast (actorID, movieID) VALUES (2,35);
INSERT INTO MoviesVoicedForActorsCast (actorID, movieID) VALUES (2,36);
INSERT INTO MoviesVoicedForActorsCast (actorID, movieID) VALUES (2,37);
INSERT INTO MoviesVoicedForActorsCast (actorID, movieID) VALUES (2,38);
INSERT INTO MoviesVoicedForActorsCast (actorID, movieID) VALUES (3,77);
INSERT INTO MoviesVoicedForActorsCast (actorID, movieID) VALUES (4,10);
INSERT INTO MoviesVoicedForActorsCast (actorID, movieID) VALUES (5,82);

INSERT INTO ArtistsToMusic (artistID, songID) VALUES (1,11);
INSERT INTO ArtistsToMusic (artistID, songID) VALUES (2,1);
INSERT INTO ArtistsToMusic (artistID, songID) VALUES (2,2);
INSERT INTO ArtistsToMusic (artistID, songID) VALUES (3,4);
INSERT INTO ArtistsToMusic (artistID, songID) VALUES (4,5);

INSERT INTO DirectorsToMovies (directorID, movieID) VALUES (1,35);
INSERT INTO DirectorsToMovies (directorID, movieID) VALUES (1,36);
INSERT INTO DirectorsToMovies (directorID, movieID) VALUES (1,37);
INSERT INTO DirectorsToMovies (directorID, movieID) VALUES (2,38);
INSERT INTO DirectorsToMovies (directorID, movieID) VALUES (3,10);
INSERT INTO DirectorsToMovies (directorID, movieID) VALUES (4,19);
INSERT INTO DirectorsToMovies (directorID, movieID) VALUES (4,77);
INSERT INTO DirectorsToMovies (directorID, movieID) VALUES (4,47);
INSERT INTO DirectorsToMovies (directorID, movieID) VALUES (4,68);
INSERT INTO DirectorsToMovies (directorID, movieID) VALUES (4,66);
INSERT INTO DirectorsToMovies (directorID, movieID) VALUES (4,64);
INSERT INTO DirectorsToMovies (directorID, movieID) VALUES (4,63);


/*The end of putting in before rest of data*/

INSERT INTO Directors (name, dateOfBirth, numMoviesDirected, age) VALUES ('Gore Verbinski', '1964-03-16', 4, 50); /*Not "on stranger tides"*/
INSERT INTO Directors (name, dateOfBirth, numMoviesDirected, age) VALUES ('Rob Marshall', '1960-10-17', 2, 54); /*on stranger tides*/
INSERT INTO Directors (name, dateOfBirth, numMoviesDirected, age) VALUES ('Rich Moore', '1963-05-10', 1, 51); /*Not "on stranger tides"*/
INSERT INTO Directors (name, dateOfBirth, numMoviesDirected, age) VALUES ('Ron Clements', '1953-04-25', 7, 61); /*Not "on stranger tides"*/


INSERT INTO ActorsCast (name, VoiceOf, gender, dateOfBirth) VALUES ('Ming-Na Wen', 'Mulan', 'F', '1963-11-20');
INSERT INTO ActorsCast (name, VoiceOf, gender, dateOfBirth) VALUES ('Johnny Depp', 'Jack Sparrow', 'M', '1963-06-09');
INSERT INTO ActorsCast (name, VoiceOf, gender, dateOfBirth) VALUES ('Joseph Gordon-Levitt', 'Jim Hawkins', 'M', '1981-02-17');
INSERT INTO ActorsCast (name, VoiceOf, gender, dateOfBirth) VALUES ('John C. Reilly', 'Ralph', 'M', '1965-05-24');
INSERT INTO ActorsCast (name, VoiceOf, gender, dateOfBirth) VALUES ('Ilene Woods', 'Cinderella', 'F', '1929-05-05');

INSERT INTO EasterEggs (eggName, numAppearances) VALUES ('Truck', 13); /*http://en.wikipedia.org/wiki/List_of_Pixar_film_references*/
INSERT INTO EasterEggs (eggName, numAppearances) VALUES ('Mickey Mouse Head', 39); /*http://mentalfloss.com/article/51725/39-hidden-mickeys-disney-animated-movies*/
INSERT INTO EasterEggs (eggName, numAppearances) VALUES ('A113', 17);

INSERT INTO Characters (name, gender) VALUES ('Mulan', 'F');
INSERT INTO Characters (name, gender) VALUES ('Jack Sparrow', 'M');
INSERT INTO Characters (name, gender) VALUES ('Jim Hawkins', 'M');
INSERT INTO Characters (name, gender) VALUES ('Ralph', 'M');
INSERT INTO Characters (name, gender) VALUES ('Cinderella', 'F');

INSERT INTO MrWaltDisney (fullName, birthDate, lifespan, deathDate) VALUES ('Walter Elias Disney', '1901-12-05', 65, '1966-12-15'); 

INSERT INTO Disney (employerID, netWorth, CEO) VALUES ('95-4545390', '103960000000.00', 'Robert (Bob) A. Iger'); 

INSERT INTO TheVault (movieTitle, dateAdded) VALUES ('101 Dalmatians', '2011-04-30'); 
INSERT INTO TheVault (movieTitle, dateAdded) VALUES ('Cinderella', '2008-01-31', '2012-10-02'); 
INSERT INTO TheVault (movieTitle, dateAdded) VALUES ('Aladdin', '2008-01-31'); 
INSERT INTO TheVault (movieTitle, dateAdded, dateReReleased) VALUES ('The Little Mermaid', '2009-01-31', '2013-10-01'); 
INSERT INTO TheVault (movieTitle, dateAdded) VALUES ('Peter Pan', '2014-04-30'); 
INSERT INTO TheVault (movieTitle, dateAdded, dateReReleased) VALUES ('Sleeping Beauty', '2010-01-31', '2014-10-07'); 
INSERT INTO TheVault (movieTitle, dateAdded) VALUES ('Snow White and the Seven Dwarfs', '2011-01-29'); 
INSERT INTO TheVault (movieTitle, dateAdded) VALUES ('Beauty and the Beast', '2012-04-30'); 
INSERT INTO TheVault (movieTitle, dateAdded) VALUES ('Bambi', '2012-04-30'); 
INSERT INTO TheVault (movieTitle, dateAdded) VALUES ('The Lion King', '2013-04-30'); 
INSERT INTO TheVault (movieTitle, dateAdded) VALUES ('Lady and the Tramp', '2013-04-30'); 
INSERT INTO TheVault (movieTitle, dateAdded, dateReReleased) VALUES ('The Jungle Book', '2010-01-31', '2014-02-11');
INSERT INTO TheVault (movieTitle, dateAdded) VALUES ('Pinocchio', '2011-04-30');


INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Snow White and the Seven Dwarfs', 1937, 'Family Animation', 'G'); 
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('Harry Potter', 'and the Sorcerer\'s Stone', 2001, 'Action/Fiction', 'PG'); 
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('Harry Potter', 'and the Chamber of Secrets', 2002, 'Fantasy/Mystery', 'PG'); 
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('Harry Potter', 'and the Prisoner of Azkaban', 2004, 'Mystery/Fiction', 'PG'); 
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('Harry Potter', 'and the Goblet of Fire', 2005, 'Fantasy/Thriller', 'PG-13'); 
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('Harry Potter', 'and the Order of the Phoenix', 2007, 'Fantasy/Mystery', 'PG-13'); 
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('Harry Potter', 'and the Half-Blood Prince', 2009, 'Fantasy/Action', 'PG'); 
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('Harry Potter', 'and the Deathly Hallows - Part 1', 2010, 'Fantasy/Drama', 'PG-13'); 
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('Harry Potter', 'and the Deathly Hallows - Part 2', 2011, 'Fantasy/Drama', 'PG-13'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Wreck-It Ralph', 2012, 'Animation/Adventure/Comedy', 'PG'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Frozen', 2013, 'Animation/Adventure/Comedy', 'PG'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Cars 2', 2011, 'Animation/Adventure/Comedy', 'G'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Saving Mr. Banks', 2013, 'Biography/Comedy/Drama', 'PG-13'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Secretariat', 2010, 'Drama/Family/History', 'PG'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Cars', 2006, 'Animation/Adventure/Comedy', 'G'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Toy Story', 1995, 'Animation/Adventure/Comedy', 'G'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Toy Story 2', 1999, 'Animation/Adventure/Comedy', 'G'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Toy Story 3', 2010, 'Animation/Adventure/Comedy', 'G'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Princess and the Frog', 2009, 'Animation/Family/Fantasy', 'G'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Up', 2009, 'Animation/Adventure/Drama', 'PG'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Bolt', 2008, 'Animation/Adventure/Comedy', 'PG'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Bedtime Stories', 2008, 'Comedy/Family/Fantasy', 'PG'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('WALL-E', 2008, 'Animation/Adventure/Romance', 'G'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Enchanted', 2007, 'Comedy/Family/Fantasy', 'PG'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Ratatouille', 2007, 'Animation/Comedy/Family', 'G'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Meet the Robinsons', 2007, 'Animation/Adventure/Comedy', 'G'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Chicken Little', 2005, 'Animation/Adventure/Comedy', 'G'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Incredibles', 2004, 'Animation/Action/Adventure', 'PG'); 
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('A Goofy Movie', 1995, 'Animation/Adventure/Comedy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('An Extremely Goofy Movie', 2000, 'Animation/Comedy/Family', 'G');  
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('The Chronicles of Narnia', 'The Lion, the Witch and the Wardrobe', 2005, 'Adventure/Family/Fantasy', 'PG'); 
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('The Chronicles of Narnia', 'Prince Caspian', 2008, 'Action/Adventure/Family', 'PG');
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('National Treasure', 2004, 'Action/Adventure/Mystery', 'PG');
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('National Treasure', 'Book of Secrets', 2007, 'Action/Adventure/Family', 'PG');
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('Pirates of the Caribbean', 'The Curse of the Black Pearl', 2003, 'Action/Adventure/Fantasy', 'PG-13');
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('Pirates of the Caribbean', 'Dead Man\'s Chest', 2006, 'Action/Adventure/Fantasy', 'PG-13');
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('Pirates of the Caribbean', 'At World\'s End', 2007, 'Action/Adventure/Fantasy', 'PG-13');
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('Pirates of the Caribbean', 'On Stranger Tides', 2011, 'Action/Adventure/Fantasy', 'PG-13');
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Lion King', 1994, 'Animation/Adventure/Drama', 'G');  
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('The Lion King 2', 'Simba\'s Pride', 1998, 'Animation/Adventure/Family', 'G');
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Lion King 1 1/2', 2004, 'Animation/Comedy/Family', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Pocahontas', 1995, 'Animation/Adventure/Drama', 'G');  
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('Pocahontas II', 'Journey to a New World', 1998, 'Animation/Adventure/Drama', 'G');
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Muppet Treasure Island', 1996, 'Action/Adventure/Comedy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Muppet Christmas Carol', 1992, 'Comedy/Drama/Family', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('James and the Giant Peach', 1996, 'Animation/Adventure/Family', 'PG');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Hercules', 1997, 'Animation/Adventure/Comedy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('101 Dalmatians', 1961, 'Animation/Adventure/Comedy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('RocketMan', 1997, 'Comedy/Family/Romance', 'PG');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Mulan', 1998, 'Animation/Adventure/Family', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Mulan II', 2004, 'Animation/Action/Comedy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('A Bug\'s Life', 1998, 'Animation/Adventure/Comedy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Parent Trap', 1998, 'Adventure/Comedy/Drama', 'PG');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Sword in the Stone', 1963, 'Animation/Adventure/Comedy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Mary Poppins', 1964, 'Comedy/Family/Fantasy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Jungle Book', 1967, 'Animation/Adventure/Family', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Aristocats', 1970, 'Animation/Adventure/Comedy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Robin Hood', 1973, 'Animation/Adventure/Comedy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Rescuers', 1977, 'Animation/Adventure/Family', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Rescuers Down Under', 1990, 'Animation/Adventure/Crime', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Pete\'s Dragon', 1977, 'Adventure/Family/Fantasy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Fox and the Hound', 1981, 'Animation/Adventure/Drama', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Black Cauldron', 1985, 'Animation/Adventure/Family', 'PG');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Great Mouse Detective', 1986, 'Animation/Adventure/Family', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Oliver & Company', 1988, 'Animation/Adventure/Family', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Little Mermaid', 1989, 'Animation/Family/Fantasy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Beauty and the Beast', 1991, 'Animation/Family/Fantasy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Aladdin', 1992, 'Animation/Adventure/Comedy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Aladdin and the King of Thieves', 1996, 'Animation/Comedy/Family', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Hunchback of Notre Dame', 1996, 'Animation/Drama/Family', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Tarzan', 1999, 'Animation/Adventure/Drama', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Dinosaur', 2000, 'Animation/Adventure/Family', 'PG');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('The Emperor\'s New Groove', 2000, 'Animation/Adventure/Comedy', 'G');  
INSERT INTO Movies (mainTitle, subTitle, releaseYear, genre, rating) VALUES ('Atlantis', 'The Lost Empire', 2001, 'Animation/Adventure/Family', 'PG');
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Monsters, Inc.', 2001, 'Animation/Adventure/Comedy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Lilo & Stitch', 2002, 'Animation/Adventure/Comedy', 'PG');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Treasure Planet', 2002, 'Animation/Adventure/Family', 'PG');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Finding Nemo', 2003, 'Animation/Adventure/Comedy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Brother Bear', 2003, 'Animation/Adventure/Family', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Monsters University', 2013, 'Animation/Adventure/Comedy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Big Hero 6', 2014, 'Animation/Action/Adventure', 'PG');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Cinderella', 1950, 'Animation/Family/Fantasy', 'G');  
INSERT INTO Movies (mainTitle, releaseYear, genre, rating) VALUES ('Tangled', 2010, 'Animation/Comedy/Family', 'PG');  



INSERT INTO Music (title, genre, album) VALUES ('Do You Want to Build a Snowman?', 'Soundtrack', 'Frozen');
INSERT INTO Music (title, genre, album) VALUES ('Love Is an Open Door', 'Soundtrack', 'Frozen');
INSERT INTO Music (title, genre, album) VALUES ('Let It Go', 'Soundtrack', 'Frozen');
INSERT INTO Music (title, genre, album) VALUES ('When Can I See You Again', 'Soundtrack', 'Wreck-It Ralph'); 
INSERT INTO Music (title, genre, album) VALUES ('When Will My Life Begin', 'Soundtrack', 'Tangled');
INSERT INTO Music (title, genre, album) VALUES ('Mother Knows Best', 'Soundtrack', 'Tangled');
INSERT INTO Music (title, genre, album) VALUES ('I\'ve Got a Dream', 'Soundtrack', 'Tangled');
INSERT INTO Music (title, genre, album) VALUES ('I See the Light', 'Soundtrack', 'Tangled');
INSERT INTO Music (title, genre, album) VALUES ('Pressure Drop', 'Soundtrack', 'An Extremely Goofy Movie');
INSERT INTO Music (title, genre, album) VALUES ('You Make Me Feel Like Dancing', 'Soundtrack', 'An Extremely Goofy Movie');
INSERT INTO Music (title, genre, album) VALUES ('I\'m Still Here', 'Soundtrack', 'Treasure Planet');

INSERT INTO Artists (name, birthDate) VALUES ('John Rzeznik', '1965-12-05'); /*Treasure Planet I'm still here*/
INSERT INTO Artists (name, birthDate) VALUES ('Kristen Bell', '1980-07-18'); /*Three frozen songs*/
INSERT INTO Artists (name, birthDate) VALUES ('Adam Young', '1986-07-05'); /* wreck it ralph*/
INSERT INTO Artists (name, birthDate) VALUES ('Mandy Moore', '1984-04-10');/*Tangled*/
INSERT INTO Artists (name, birthDate) VALUES ('Elton John', '1947-03-25');/*Lion King*/





/*
INSERT INTO Employee (name, birthdate, address, salary) VALUES ('Joe', '1981-03-24', 'Acorn St', 25000.56);


INSERT INTO Employee (name, birthdate, address, salary) VALUES ('Larry', '1977-07-21', 'Butterscotch Dr', 40000.12);


INSERT INTO Employee (name, birthdate,address, salary) VALUES ('Jill', '1993-11-11', 'Quebec', 50000.44); 


INSERT INTO Employee (name, birthdate,address, salary) VALUES ('Jill', '1993-11-11', 'Quebec', 50000.44); 


create or replace trigger test_table_trigger
before insert or update on grade
for each row
begin
 if :new.number_grade between 90 and 100 then
	:new.letter_grade := 'A';
 elsif :new.number_grade between 80 and 89 then
	:new.letter_grade := 'B';
elsif :new.number_grade between 70 and 79 then
	:new.letter_grade := 'C';
elsif :new.number_grade between 60 and 69 then
	:new.letter_grade := 'D';
elsif :new.number_grade < 60 then
	:new.letter_grade := 'E';
end if;
END;
/


*/
