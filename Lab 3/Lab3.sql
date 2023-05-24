/*CREATE TABLE*/
CREATE TABLE Supplier (
    SupplierID varchar(50),
    Name varchar(50),
    Address varchar(50)
);

SELECT * FROM Supplier

/*INSERT query*/
INSERT INTO Supplier VALUES('S01','ABC Company','Penang')
INSERT INTO Supplier VALUES('S02','XYZ Company','Johor')
INSERT INTO Supplier VALUES('S03','HJK Company','Selangor')
INSERT INTO Supplier VALUES('S04','PQR Company','Selangor')




/*CREATE TABLE*/
CREATE TABLE Product (
    ProductID varchar(50),
    Name varchar(50),
    Price_RM decimal(10,2),
    QuantityInStock integer
);

SELECT * FROM Product

INSERT INTO Product VALUES('P01','Keyboard','103.55','60')
INSERT INTO Product VALUES('P02','MOUSE','30.90','70')
INSERT INTO Product VALUES('P03','Monitor','200','80')
INSERT INTO Product VALUES('P04','Pendrive','40.30','50')




/*CREATE TABLE*/
CREATE TABLE Supplies (
    SuppliesID varchar(50),
    SupplierID varchar(50),
    ProductID varchar(50),
    SuppliedDate date,
    QuantitySupplied integer
);

SELECT * FROM Supplies

/*INSERT query*/
INSERT INTO Supplies VALUES('001','S01','P01','11 January 2017','100')
INSERT INTO Supplies VALUES('002','S01y','P02','22 February 2017','200')
INSERT INTO Supplies VALUES('003','S01','P03',NULL,'300')
INSERT INTO Supplies VALUES('004','S02','P03','30 April 2017','400')
