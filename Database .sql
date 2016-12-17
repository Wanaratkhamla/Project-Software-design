CREATE TABLE admin(
Username VARCHAR(20) NOT NULL,
Password VARCHAR(20) NOT NULL,
Name VARCHAR(250),
IDCard VARCHAR(13),
Address VARCHAR(250),
PhoneNO VARCHAR(10),
CONSTRAINT admin_Pri PRIMARY KEY (Username)
);

CREATE TABLE customers(
CustomersID VARCHAR(20) NOT NULL,
Name VARCHAR(250),
Address VARCHAR(250),
PhoneNO VARCHAR(10),
CONSTRAINT users_Pri PRIMARY KEY (CustomersID)
);

CREATE TABLE Product (
ProductID VARCHAR(50),
ProductName VARCHAR(100),
ProductPrice DOUBLE(7,2),
ProductDescription VARCHAR(500),
CONSTRAINT Product_Pri PRIMARY KEY (ProductID));

CREATE TABLE pawn(
PawnID int(4) AUTO_INCREMENT,
ProductID VARCHAR(50),
CustomersID VARCHAR(20),
PawnDate DATETIME,
Pawnstatus int(1),
Pawninterest DOUBLE(5,2),
PawnDateEnd VARCHAR(20),
PawnTotal DOUBLE(7,2),
Pawnpaid DOUBLE(7,2),
CONSTRAINT pawn_Pri PRIMARY KEY (PawnID),
CONSTRAINT pawn_foreign FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
CONSTRAINT pawn_foreign1 FOREIGN KEY (CustomersID) REFERENCES customers(CustomersID)
);

CREATE TABLE reportpawn(
reportID int(4) AUTO_INCREMENT,
PawnID int(4),
reportpawnDate DATETIME,
reportpawnBuy DOUBLE(7,2),
reportpawnUserbuy varchar(50),
reportpawnAdmin varchar(50),
CONSTRAINT reportpawn_Pri PRIMARY KEY (reportID),
CONSTRAINT reportpawn_foreign FOREIGN KEY (PawnID) REFERENCES pawn(PawnID)
);