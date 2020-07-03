use bookstore;

DROP TABLE IF EXISTS Author;
DROP TABLE IF EXISTS BookDetails;
DROP TABLE IF EXISTS BookRatings;
DROP TABLE IF EXISTS Copy;
DROP TABLE IF EXISTS Publisher;
DROP TABLE IF EXISTS Wrote;
DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Branch;

CREATE TABLE Author 
(authorNum DEC(2,0) PRIMARY KEY,
authorLast CHAR(12),
authorFirst CHAR(10),
authorBio CHAR(40) )
;

CREATE TABLE BookDetails
(bookCode CHAR(4) PRIMARY KEY,
authorNum DEC(2,0),
title CHAR(40),
publisherCode CHAR(3),
genre CHAR(3),
bookDescription CHAR(40),
averageRating DOUBLE(2,1) )
;

CREATE TABLE BookRatings
(bookCode CHAR(4) PRIMARY KEY,
userID CHAR(4),
userComment CHAR(40),
genre CHAR(3),
rating DOUBLE(2,1) )
;


CREATE TABLE Branch 
(branchNum DECIMAL(2,0) PRIMARY KEY,
branchName CHAR(50),
branchLocation CHAR(50) )
;

CREATE TABLE Copy
(bookCode CHAR(4),
branchNum DECIMAL(2,0),
copyNum DECIMAL(2,0),
quality CHAR(20),
price DECIMAL(8,2),
PRIMARY KEY (bookCode, branchNum, copyNum) )
;

CREATE TABLE Publisher 
(publisherCode CHAR(3) PRIMARY KEY,
publisherName CHAR(25),
city CHAR(20) )
;

CREATE TABLE Wrote 
(bookCode CHAR(4),
authorNum DECIMAL(2,0),
sequence DECIMAL(2,0),
PRIMARY KEY (bookCode, authorNum) )
;

INSERT INTO Author
VALUES
(1,'Morrison','Toni', null);
INSERT INTO Author
VALUES
(2,'Solotaroff','Paul', null);
INSERT INTO Author
VALUES
(3,'Vintage','Vernor', null);
INSERT INTO Author
VALUES
(4,'Francis','Dick', null);
INSERT INTO Author
VALUES
(5,'Straub','Peter', null);
INSERT INTO Author
VALUES
(6,'King','Stephen', null);
INSERT INTO Author
VALUES
(7,'Pratt','Philip', null);
INSERT INTO Author
VALUES
(8,'Chase','Truddi', null);
INSERT INTO Author
VALUES
(9,'Collins','Bradley', null);
INSERT INTO Author
VALUES
(10,'Heller','Joseph', null);
INSERT INTO Author
VALUES
(11,'Wills','Gary', null);
INSERT INTO Author
VALUES
(12,'Hofstadter','Douglas R.', null);
INSERT INTO Author
VALUES
(13,'Lee','Harper', null);
INSERT INTO Author
VALUES
(14,'Ambrose','Stephen E.', null);
INSERT INTO Author
VALUES
(15,'Rowling','J.K.', null);
INSERT INTO Author
VALUES
(16,'Salinger','J.D.', null);
INSERT INTO Author
VALUES
(17,'Heaney','Seamus', null);
INSERT INTO Author
VALUES
(18,'Camus','Albert', null);
INSERT INTO Author
VALUES
(19,'Collins, Jr.','Bradley', null);
INSERT INTO Author
VALUES
(20,'Steinbeck','John', null);
INSERT INTO Author
VALUES
(21,'Castelman','Riva', null);
INSERT INTO Author
VALUES
(22,'Owen','Barbara', null);
INSERT INTO Author
VALUES
(23,'O''Rourke','Randy', null);
INSERT INTO Author
VALUES
(24,'Kidder','Tracy', null);
INSERT INTO Author
VALUES
(25,'Schleining','Lon', null);
INSERT INTO BookDetails
VALUES
('0180','A Deepness in the Sky','TB','SFI','Y');
INSERT INTO Book
VALUES
('0189','Magic Terror','FA','HOR','Y');
INSERT INTO Book
VALUES
('0200','The Stranger','VB','FIC','Y');
INSERT INTO Book
VALUES
('0378','Venice','SS','ART','N');
INSERT INTO Book
VALUES
('079X','Second Wind','PU','MYS','N');
INSERT INTO Book
VALUES
('0808','The Edge','JP','MYS','Y');
INSERT INTO Book
VALUES
('1351','Dreamcatcher: A Novel','SC','HOR','N');
INSERT INTO Book
VALUES
('1382','Treasure Chests','TA','ART','N');
INSERT INTO Book
VALUES
('138X','Beloved','PL','FIC','Y');
INSERT INTO Book
VALUES
('2226','Harry Potter and the Prisoner of Azkaban','ST','SFI','N');
INSERT INTO Book
VALUES
('2281','Van Gogh and Gauguin','WP','ART','N');
INSERT INTO Book
VALUES
('2766','Of Mice and Men','PE','FIC','Y');
INSERT INTO Book
VALUES
('2908','Electric Light','FS','POE','N');
INSERT INTO Book
VALUES
('3350','Group: Six People in Search of a Life','BP','PSY','Y');
INSERT INTO Book
VALUES
('3743','Nine Stories','LB','FIC','Y');
INSERT INTO Book
VALUES
('3906','The Soul of a New Machine','BY','SCI','Y');
INSERT INTO Book
VALUES
('5163','Travels with Charley','PE','TRA','Y');
INSERT INTO Book
VALUES
('5790','Catch-22','SC','FIC','Y');
INSERT INTO Book
VALUES
('6128','Jazz','PL','FIC','Y');
INSERT INTO Book
VALUES
('6328','Band of Brothers','TO','HIS','Y');
INSERT INTO Book
VALUES
('669X','A Guide to SQL','CT','CMP','Y');
INSERT INTO Book
VALUES
('6908','Franny and Zooey','LB','FIC','Y');
INSERT INTO Book
VALUES
('7405','East of Eden','PE','FIC','Y');
INSERT INTO Book
VALUES
('7443','Harry Potter and the Goblet of Fire','ST','SFI','N');
INSERT INTO Book
VALUES
('7559','The Fall','VB','FIC','Y');
INSERT INTO Book
VALUES
('8092','Godel, Escher, Bach','BA','PHI','Y');
INSERT INTO Book
VALUES
('8720','When Rabbit Howls','JP','PSY','Y');
INSERT INTO Book
VALUES
('9611','Black House','RH','HOR','N');
INSERT INTO Book
VALUES
('9627','Song of Solomon','PL','FIC','Y');
INSERT INTO Book
VALUES
('9701','The Grapes of Wrath','PE','FIC','Y');
INSERT INTO Book
VALUES
('9882','Slay Ride','JP','MYS','Y');
INSERT INTO Book
VALUES
('9883','The Catcher in the Rye','LB','FIC','Y');
INSERT INTO Book
VALUES
('9931','To Kill a Mockingbird','HC','FIC','N');
INSERT INTO Branch
VALUES
(1,'Henry Downtown','16 Riverview');
INSERT INTO Branch
VALUES
(2,'Henry on the Hill','1289 Bedford');
INSERT INTO Branch
VALUES
(3,'Henry Brentwood','Brentwood Mall');
INSERT INTO Branch
VALUES
(4,'Henry Eastshore','Eastshore Mall');
INSERT INTO Copy
VALUES
('0180',1,1,'Excellent',7.19);
INSERT INTO Copy
VALUES
('0180',1,2,'Excellent',7.19);
INSERT INTO Copy
VALUES
('0189',2,1,'Excellent',7.99);
INSERT INTO Copy
VALUES
('0189',2,2,'Good',5.99);
INSERT INTO Copy
VALUES
('0200',1,1,'Excellent',8.00);
INSERT INTO Copy
VALUES
('0200',2,1,'Excellent',8.00);
INSERT INTO Copy
VALUES
('0200',2,2,'Fair',3.50);
INSERT INTO Copy
VALUES
('0200',2,3,'Poor',2.25);
INSERT INTO Copy
VALUES
('0378',3,1,'Excellent',24.50);
INSERT INTO Copy
VALUES
('0378',3,2,'Excellent',24.50);
INSERT INTO Copy
VALUES
('079X',2,1,'Excellent',25.95);
INSERT INTO Copy
VALUES
('079X',3,1,'Excellent',25.95);
INSERT INTO Copy
VALUES
('079X',3,2,'Good',19.95);
INSERT INTO Copy
VALUES
('079X',4,1,'Excellent',25.95);
INSERT INTO Copy
VALUES
('079X',4,2,'Excellent',25.95);
INSERT INTO Copy
VALUES
('079X',4,3,'Good',19.95);
INSERT INTO Copy
VALUES
('0808',2,1,'Excellent',7.99);
INSERT INTO Copy
VALUES
('1351',2,1,'Excellent',21.95);
INSERT INTO Copy
VALUES
('1351',2,2,'Excellent',21.95);
INSERT INTO Copy
VALUES
('1351',2,3,'Excellent',21.95);
INSERT INTO Copy
VALUES
('1351',2,4,'Excellent',21.95);
INSERT INTO Copy
VALUES
('1351',3,1,'Excellent',21.95);
INSERT INTO Copy
VALUES
('1351',3,2,'Good',13.95);
INSERT INTO Copy
VALUES
('1382',2,1,'Good',34.50);
INSERT INTO Copy
VALUES
('138X',2,1,'Excellent',12.95);
INSERT INTO Copy
VALUES
('138X',2,2,'Excellent',12.95);
INSERT INTO Copy
VALUES
('138X',2,3,'Good',6.95);
INSERT INTO Copy
VALUES
('2226',1,1,'Excellent',14.96);
INSERT INTO Copy
VALUES
('2226',1,2,'Excellent',14.96);
INSERT INTO Copy
VALUES
('2226',1,3,'Good',8.95);
INSERT INTO Copy
VALUES
('2226',3,1,'Excellent',14.95);
INSERT INTO Copy
VALUES
('2226',3,2,'Excellent',14.95);
INSERT INTO Copy
VALUES
('2226',4,1,'Fair',3.95);
INSERT INTO Copy
VALUES
('2281',4,1,'Excellent',21.00);
INSERT INTO Copy
VALUES
('2766',3,1,'Excellent',7.95);
INSERT INTO Copy
VALUES
('2766',3,2,'Good',3.95);
INSERT INTO Copy
VALUES
('2908',1,1,'Excellent',14.95);
INSERT INTO Copy
VALUES
('2908',1,2,'Excellent',14.95);
INSERT INTO Copy
VALUES
('2908',1,3,'Good',8.50);
INSERT INTO Copy
VALUES
('2908',4,1,'Good',8.50);
INSERT INTO Copy
VALUES
('3350',1,1,'Excellent',10.40);
INSERT INTO Copy
VALUES
('3350',1,2,'Excellent',10.40);
INSERT INTO Copy
VALUES
('3743',2,1,'Excellent',5.99);
INSERT INTO Copy
VALUES
('3906',2,1,'Excellent',12.16);
INSERT INTO Copy
VALUES
('3906',3,1,'Excellent',12.16);
INSERT INTO Copy
VALUES
('3906',3,2,'Good',4.50);
INSERT INTO Copy
VALUES
('5163',1,1,'Excellent',7.95);
INSERT INTO Copy
VALUES
('5790',4,1,'Excellent',12.00);
INSERT INTO Copy
VALUES
('5790',4,2,'Good',5.95);
INSERT INTO Copy
VALUES
('6128',2,1,'Excellent',12.95);
INSERT INTO Copy
VALUES
('6128',2,2,'Excellent',12.95);
INSERT INTO Copy
VALUES
('6128',2,3,'Excellent',12.95);
INSERT INTO Copy
VALUES
('6128',2,4,'Excellent',12.95);
INSERT INTO Copy
VALUES
('6128',3,1,'Excellent',12.95);
INSERT INTO Copy
VALUES
('6128',3,2,'Excellent',12.95);
INSERT INTO Copy
VALUES
('6128',3,3,'Good',4.75);
INSERT INTO Copy
VALUES
('6328',2,1,'Excellent',9.95);
INSERT INTO Copy
VALUES
('6328',2,2,'Excellent',9.95);
INSERT INTO Copy
VALUES
('669X',1,1,'Excellent',39.95);
INSERT INTO Copy
VALUES
('669X',2,1,'Excellent',39.95);
INSERT INTO Copy
VALUES
('6908',2,1,'Excellent',5.99);
INSERT INTO Copy
VALUES
('6908',2,2,'Excellent',5.99);
INSERT INTO Copy
VALUES
('7405',3,1,'Good',5.00);
INSERT INTO Copy
VALUES
('7405',3,2,'Fair',2.95);
INSERT INTO Copy
VALUES
('7443',4,1,'Good',9.25);
INSERT INTO Copy
VALUES
('7559',2,1,'Fair',3.65);
INSERT INTO Copy
VALUES
('7559',2,2,'Good',8.00);
INSERT INTO Copy
VALUES
('8092',3,1,'Good',9.50);
INSERT INTO Copy
VALUES
('8720',1,1,'Excellent',6.29);
INSERT INTO Copy
VALUES
('8720',1,2,'Excellent',6.29);
INSERT INTO Copy
VALUES
('8720',1,3,'Good',3.95);
INSERT INTO Copy
VALUES
('9611',1,1,'Excellent',18.81);
INSERT INTO Copy
VALUES
('9611',1,2,'Good',8.25);
INSERT INTO Copy
VALUES
('9627',3,1,'Excellent',14.00);
INSERT INTO Copy
VALUES
('9627',3,2,'Excellent',14.00);
INSERT INTO Copy
VALUES
('9627',3,3,'Excellent',14.00);
INSERT INTO Copy
VALUES
('9627',3,4,'Excellent',14.00);
INSERT INTO Copy
VALUES
('9627',3,5,'Good',6.50);
INSERT INTO Copy
VALUES
('9627',4,1,'Excellent',14.00);
INSERT INTO Copy
VALUES
('9627',4,2,'Good',6.50);
INSERT INTO Copy
VALUES
('9701',1,1,'Excellent',13.00);
INSERT INTO Copy
VALUES
('9701',1,2,'Excellent',13.00);
INSERT INTO Copy
VALUES
('9701',2,1,'Excellent',13.00);
INSERT INTO Copy
VALUES
('9701',3,1,'Fair',4.00);
INSERT INTO Copy
VALUES
('9701',3,2,'Fair',4.00);
INSERT INTO Copy
VALUES
('9701',3,3,'Good',7.25);
INSERT INTO Copy
VALUES
('9701',4,1,'Excellent',13.00);
INSERT INTO Copy
VALUES
('9701',4,2,'Poor',1.55);
INSERT INTO Copy
VALUES
('9882',3,1,'Excellent',6.99);
INSERT INTO Copy
VALUES
('9882',3,2,'Good',3.75);
INSERT INTO Copy
VALUES
('9882',3,3,'Excellent',6.99);
INSERT INTO Copy
VALUES
('9883',2,1,'Excellent',5.99);
INSERT INTO Copy
VALUES
('9883',2,2,'Excellent',5.99);
INSERT INTO Copy
VALUES
('9883',2,3,'Fair',1.95);
INSERT INTO Copy
VALUES
('9883',4,1,'Good',3.99);
INSERT INTO Copy
VALUES
('9883',4,2,'Excellent',5.99);
INSERT INTO Copy
VALUES
('9931',1,1,'Excellent',13.00);
INSERT INTO Copy
VALUES
('9931',1,2,'Excellent',13.00);
INSERT INTO Publisher
VALUES
('AH','Arkham House','Sauk City WI');
INSERT INTO Publisher
VALUES
('AP','Arcade Publishing','New York');
INSERT INTO Publisher
VALUES
('BA','Basic Books','Boulder CO');
INSERT INTO Publisher
VALUES
('BP','Berkley Publishing','Boston');
INSERT INTO Publisher
VALUES
('BY','Back Bay Books','New York');
INSERT INTO Publisher
VALUES
('CT','Course Technology','Boston');
INSERT INTO Publisher
VALUES
('FA','Fawcett Books','New York');
INSERT INTO Publisher
VALUES
('FS','Farrar Straus and Giroux','New York');
INSERT INTO Publisher
VALUES
('HC','HarperCollins Publishers','New York');
INSERT INTO Publisher
VALUES
('JP','Jove Publications','New York');
INSERT INTO Publisher
VALUES
('JT','Jeremy P. Tarcher','Los Angeles');
INSERT INTO Publisher
VALUES
('LB','Lb Books','New York');
INSERT INTO Publisher
VALUES
('MP','McPherson and Co.','Kingston');
INSERT INTO Publisher
VALUES
('PE','Penguin USA','New York');
INSERT INTO Publisher
VALUES
('PL','Plume','New York');
INSERT INTO Publisher
VALUES
('PU','Putnam Publishing Group','New York');
INSERT INTO Publisher
VALUES
('RH','Random House','New York');
INSERT INTO Publisher
VALUES
('SB','Schoken Books','New York');
INSERT INTO Publisher
VALUES
('SC','Scribner','New York');
INSERT INTO Publisher
VALUES
('SS','Simon and Schuster','New York');
INSERT INTO Publisher
VALUES
('ST','Scholastic Trade','New York');
INSERT INTO Publisher
VALUES
('TA','Taunton Press','Newtown CT');
INSERT INTO Publisher
VALUES
('TB','Tor Books','New York');
INSERT INTO Publisher
VALUES
('TH','Thames and Hudson','New York');
INSERT INTO Publisher
VALUES
('TO','Touchstone Books','Westport CT');
INSERT INTO Publisher
VALUES
('VB','Vintage Books','New York');
INSERT INTO Publisher
VALUES
('WN','W.W. Norton','New York');
INSERT INTO Publisher
VALUES
('WP','Westview Press','Boulder CO');
INSERT INTO Wrote
VALUES
('0180',3,1);
INSERT INTO Wrote
VALUES
('0189',5,1);
INSERT INTO Wrote
VALUES
('0200',18,1);
INSERT INTO Wrote
VALUES
('0378',11,1);
INSERT INTO Wrote
VALUES
('079X',4,1);
INSERT INTO Wrote
VALUES
('0808',4,1);
INSERT INTO Wrote
VALUES
('1351',6,1);
INSERT INTO Wrote
VALUES
('1382',23,2);
INSERT INTO Wrote
VALUES
('1382',25,1);
INSERT INTO Wrote
VALUES
('138X',1,1);
INSERT INTO Wrote
VALUES
('2226',15,1);
INSERT INTO Wrote
VALUES
('2281',9,2);
INSERT INTO Wrote
VALUES
('2281',19,1);
INSERT INTO Wrote
VALUES
('2766',20,1);
INSERT INTO Wrote
VALUES
('2908',17,1);
INSERT INTO Wrote
VALUES
('3350',2,1);
INSERT INTO Wrote
VALUES
('3743',16,1);
INSERT INTO Wrote
VALUES
('3906',24,1);
INSERT INTO Wrote
VALUES
('5163',20,1);
INSERT INTO Wrote
VALUES
('5790',10,1);
INSERT INTO Wrote
VALUES
('6128',1,1);
INSERT INTO Wrote
VALUES
('6328',14,1);
INSERT INTO Wrote
VALUES
('669X',7,1);
INSERT INTO Wrote
VALUES
('6908',16,1);
INSERT INTO Wrote
VALUES
('7405',20,1);
INSERT INTO Wrote
VALUES
('7443',15,1);
INSERT INTO Wrote
VALUES
('7559',18,1);
INSERT INTO Wrote
VALUES
('8092',12,1);
INSERT INTO Wrote
VALUES
('8720',8,1);
INSERT INTO Wrote
VALUES
('9611',5,2);
INSERT INTO Wrote
VALUES
('9611',6,1);
INSERT INTO Wrote
VALUES
('9627',1,1);
INSERT INTO Wrote
VALUES
('9701',20,1);
INSERT INTO Wrote
VALUES
('9882',4,1);
INSERT INTO Wrote
VALUES
('9883',16,1);
INSERT INTO Wrote
VALUES
('9931',13,1);
