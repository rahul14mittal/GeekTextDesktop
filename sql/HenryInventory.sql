CREATE TABLE Inventory 
( BookCode CHAR(4) not null,
  BranchNum DECIMAL(2,0) not null,
  OnHand DECIMAL(2,0),
  constraint Invent_pk
    primary key(BookCode, BranchNum),
  constraint InventBranch_fk
    foreign key (BranchNum) references Branch(branchNum)
);

-- Insertion of forty seven Inventory rows
INSERT INTO Inventory
VALUES
('0180',1,2);
INSERT INTO Inventory
VALUES
('0189',2,2);
INSERT INTO Inventory
VALUES
('0200',1,1);
INSERT INTO Inventory
VALUES
('0200',2,3);
INSERT INTO Inventory
VALUES
('0378',3,2);
INSERT INTO Inventory
VALUES
('079X',2,1);
INSERT INTO Inventory
VALUES
('079X',3,2);
INSERT INTO Inventory
VALUES
('079X',4,3);
INSERT INTO Inventory
VALUES
('0808',2,1);
INSERT INTO Inventory
VALUES
('1351',2,4);
INSERT INTO Inventory
VALUES
('1351',3,2);
INSERT INTO Inventory
VALUES
('1382',2,1);
INSERT INTO Inventory
VALUES
('138X',2,3);
INSERT INTO Inventory
VALUES
('2226',1,3);
INSERT INTO Inventory
VALUES
('2226',3,2);
INSERT INTO Inventory
VALUES
('2226',4,1);
INSERT INTO Inventory
VALUES
('2281',4,3);
INSERT INTO Inventory
VALUES
('2766',3,2);
INSERT INTO Inventory
VALUES
('2908',1,3);
INSERT INTO Inventory
VALUES
('2908',4,1);
INSERT INTO Inventory
VALUES
('3350',1,2);
INSERT INTO Inventory
VALUES
('3743',2,1);
INSERT INTO Inventory
VALUES
('3906',2,1);
INSERT INTO Inventory
VALUES
('3906',3,2);
INSERT INTO Inventory
VALUES
('5163',1,1);
INSERT INTO Inventory
VALUES
('5790',4,2);
INSERT INTO Inventory
VALUES
('6128',2,4);
INSERT INTO Inventory
VALUES
('6128',3,3);
INSERT INTO Inventory
VALUES
('6328',2,2);
INSERT INTO Inventory
VALUES
('669X',1,1);
INSERT INTO Inventory
VALUES
('6908',2,2);
INSERT INTO Inventory
VALUES
('7405',3,2);
INSERT INTO Inventory
VALUES
('7443',4,1);
INSERT INTO Inventory
VALUES
('7559',2,2);
INSERT INTO Inventory
VALUES
('8092',3,1);
INSERT INTO Inventory
VALUES
('8720',1,3);
INSERT INTO Inventory
VALUES
('9611',1,2);
INSERT INTO Inventory
VALUES
('9627',3,5);
INSERT INTO Inventory
VALUES
('9627',4,2);
INSERT INTO Inventory
VALUES
('9701',1,2);
INSERT INTO Inventory
VALUES
('9701',2,1);
INSERT INTO Inventory
VALUES
('9701',3,3);
INSERT INTO Inventory
VALUES
('9701',4,2);
INSERT INTO Inventory
VALUES
('9882',3,3);
INSERT INTO Inventory
VALUES
('9883',2,3);
INSERT INTO Inventory
VALUES
('9883',4,2);
INSERT INTO Inventory
VALUES
('9931',1,2);
