/************************************Publisher Table************************************/
/*CREATE TABLE*/
CREATE TABLE Publisher (
    PublisherID nvarchar(50),
    Name nvarchar(50),
    Address nvarchar(50),
    PRIMARY KEY(PublisherID)
);

/*INSERT QUERY*/
INSERT INTO Publisher VALUES('P01','Pearson','Bukit Jalil')
INSERT INTO Publisher VALUES('P02','Deitel','Puchong')
INSERT INTO Publisher VALUES('P03','Rainbow','Subang')
INSERT INTO Publisher VALUES('P04','MacHill','Kuala Lumpur')


/************************************Book Table************************************/
CREATE TABLE Book (
    BookID nvarchar(50),
    Name nvarchar(50),
    Author nvarchar(50),
    Price decimal(10,2),
    PublishedDate date,
    PublisherID nvarchar(50),
    PRIMARY KEY(BookID),
    FOREIGN KEY(PublisherID) REFERENCES Publisher(PublisherID)
);

/*INSERT QUERY*/
INSERT INTO Book VALUES('B01','Maths','J.Wenton','50.60','10 Jan 2016','P01')
INSERT INTO Book VALUES('B02','Science','S.Hanson','100.00','12 Feb 2016','P01')
INSERT INTO Book VALUES('B03','English','K.Vince','89.30','9 March 2016','P02')
INSERT INTO Book VALUES('B04','Biology','K.Vince','150.80','24 April 2016','P03')
INSERT INTO Book VALUES('B05','Computing','J.Denzin', NULL, NULL, NULL)


/************************************Lab 7 Questions************************************/
/*Question 4*/
SELECT * FROM Publisher WHERE Name LIKE 'r%';

/*Question 5*/
SELECT * FROM Publisher WHERE Name LIKE '%n';

/*Question 6*/
SELECT * FROM Book WHERE Name LIKE '_a%';

/*Question 7*/
SELECT * FROM Book WHERE Name LIKE '%i%';

/*Question 8*/
SELECT * FROM Book WHERE Name LIKE 'e%h';

/*Question 9*/
SELECT * FROM Book WHERE Author LIKE '%n%' ORDER BY Author ASC, Price DESC;

/*Question 10*/
SELECT * FROM Book WHERE Author LIKE '%__e' ORDER BY Name DESC;

/*Question 11*/
SELECT * FROM Publisher WHERE Address IN ('Puchong', 'Subang');

/*Question 12*/
SELECT * FROM Book WHERE Price IN ('50', '100');

/*Question 13*/
SELECT * FROM Book WHERE Name IN ('Maths','Science','English') ORDER BY Price ASC;

/*Question 14*/
UPDATE Publisher
SET Address = 'Serdang'
WHERE Name = 'Pearson';

/*Question 15*/
UPDATE Book
SET Price = '99.30'
WHERE Name = 'English' AND Author = 'K.Vince';

/*Question 16*/
UPDATE Book
SET PublishedDate = '3 September 2017'
WHERE Name = 'Science' AND Author = 'S.Hanson';

/*Question 17*/
ALTER TABLE Book
ALTER COLUMN Name varchar(100);

/*Question 18*/
ALTER TABLE Publisher
ADD Telephone int;

/*Question 19*/
ALTER TABLE Publisher
DROP COLUMN Telephone;

/*Question 20*/
DELETE FROM Book WHERE Name = 'Biology' AND Author = 'K.Vince';


/*SELECT ALL*/
SELECT * FROM Publisher;
SELECT * FROM Book;