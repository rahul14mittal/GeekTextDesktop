use geektext;
DROP TABLE IF EXISTS BookDetails;
DROP TABLE IF EXISTS Author;
DROP TABLE IF EXISTS BookRatings;
CREATE TABLE Author (authorNum DEC(2,0) PRIMARY KEY,authorLast CHAR(12),authorFirst CHAR(10),authorBio CHAR(40),pubCode CHAR(3) );
CREATE TABLE BookDetails(bookCode CHAR(4) PRIMARY KEY,authorNum DEC(2,0),title CHAR(40),publisherCode CHAR(3),price double,genre CHAR(3),yearPub YEAR,copiesSold int,bookDescription CHAR(40),averageRating DOUBLE default 0,CONSTRAINT author_exists FOREIGN KEY (authorNum) REFERENCES Author(authorNum));
CREATE TABLE BookRatings(bookCode CHAR(4) PRIMARY KEY,userID CHAR(4),userComment CHAR(40),genre CHAR(3),rating DOUBLE );