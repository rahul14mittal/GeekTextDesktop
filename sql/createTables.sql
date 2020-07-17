use geektext;
DROP TABLE IF EXISTS BookDetails;
DROP TABLE IF EXISTS Author;
DROP TABLE IF EXISTS BookRatings;
CREATE TABLE Author (authorNum int PRIMARY KEY,authorLast VARCHAR(12),authorFirst VARCHAR(10),authorBio TEXT,pubCode CHAR(3) );
CREATE TABLE BookDetails(bookCode int PRIMARY KEY,authorNum int,title VARCHAR(40),publisherCode CHAR(3),price double,genre CHAR(3),yearPub YEAR,copiesSold int,bookDescription text,averageRating DOUBLE default 0,CONSTRAINT author_exists FOREIGN KEY (authorNum) REFERENCES Author(authorNum));
CREATE TABLE BookRatings(bookCode CHAR(4) PRIMARY KEY,userID VARCHAR(32),userComment TEXT,genre CHAR(3),rating DOUBLE,subimtted DATE);