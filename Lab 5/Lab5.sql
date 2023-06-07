/*CREATE TABLE*/
CREATE TABLE Supplier (
    SupplierID nvarchar(50) PRIMARY KEY,
    Name nvarchar(50),
    Address nvarchar(50)
);

/*INSERT QUERY*/
INSERT INTO Supplier VALUES('S01','ABC Company','Penang')
INSERT INTO Supplier VALUES('S02','XYZ Company','Johor')
INSERT INTO Supplier VALUES('S03','HJK Company','Selangor')
INSERT INTO Supplier VALUES('S04','PQR Company','Selangor')



/*CREATE TABLE*/
CREATE TABLE Product_P (
    ProductID nvarchar(50) PRIMARY KEY,
    Name nvarchar(50),
    Price_RM decimal(10,2),
    QuantityInStock integer
);

/*INSERT QUERY*/
INSERT Product_P VALUES('P01', 'Keyboard', 103.55, 60)
INSERT Product_P VALUES('P02', 'Mouse', 30.90, 70)
INSERT Product_P VALUES('P03', 'Monitor', 200, 80)
INSERT Product_P VALUES('P04', 'Pendrive', 40.30, 50)
INSERT Product_P VALUES('P05', 'Mouse (wireless)', 45.50, 25)



/*CREATE TABLE*/
CREATE TABLE Supplies (
    SuppliesID nvarchar(50) PRIMARY KEY,
    SupplierID nvarchar(50),
    ProductID nvarchar(50),
    SuppliedDate date,
    QuantitySupplied integer,
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID),
    FOREIGN KEY (ProductID) REFERENCES Product_P(ProductID)
);

/*INSERT QUERY*/
INSERT Supplies VALUES('001', 'S01', 'P01', '2023-01-11', 70)
INSERT Supplies VALUES('002', 'S01', 'P02', '2023-02-22', 20)
INSERT Supplies VALUES('003', 'S01', 'P03', NULL, 55)
INSERT Supplies VALUES('004', 'S02', 'P03', '2023-02-26', 20)
INSERT Supplies VALUES('005', 'S04', 'P05', '2023-03-01', 25)
INSERT Supplies VALUES('006', 'S04', 'P02', '2023-03-01', 35)



SELECT * FROM Supplier; 
SELECT * FROM Product_P;
SELECT * FROM Supplies;

SELECT Name, Price_RM FROM Product_P;

SELECT Address FROM Supplier;
SELECT DISTINCT Address FROM Supplier;

SELECT * FROM Supplies WHERE SuppliedDate IS NULL;
SELECT * FROM Supplies WHERE SuppliedDate IS NOT NULL;

SELECT * FROM Supplier WHERE Address='Selangor';



UPDATE Product_P
SET Name = 'Monitor (14inch)'
WHERE ProductID = 'P03';

UPDATE Supplies
SET QuantitySupplied = 45
WHERE SuppliesID = '006';

SELECT ProductID FROM Supplies WHERE SupplierID = 'S01';

SELECT SupplierID, Name, Product_P.ProductID, Price_RM, QuantityInStock FROM Supplies 
INNER JOIN Product_P 
ON Product_P.ProductID = Supplies.ProductID
WHERE SupplierID = 'S01';