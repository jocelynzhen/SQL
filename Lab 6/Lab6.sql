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


/************************************Lab 6 Questions************************************/
/*Question 4*/
SELECT * FROM Publisher;

/*Question 5*/
SELECT Name, Author FROM Book;

/*Question 6*/
SELECT * FROM Book WHERE Author = 'K.Vince';

/*Question 7*/
SELECT * FROM Book WHERE PublisherID = 'P01';

/*Question 8*/
SELECT * FROM Book WHERE Price > 100;

/*Question 9*/
SELECT * FROM Book WHERE Price <= 100;

/*Question 10*/
SELECT * FROM Book WHERE Price BETWEEN 100 AND 200;

/*Question 11*/
SELECT * FROM Book WHERE Price NOT BETWEEN 100 AND 200;

/*Question 12*/
SELECT * FROM Book WHERE Author = 'S.Hanson' AND Price = 100;

/*Question 13*/
SELECT * FROM Book WHERE Author = 'J.Wenton' AND Price = 30;

/*Question 14*/
SELECT * FROM Book WHERE Author = 'K.Vince' OR Price BETWEEN 50 AND 100;

/*Question 15*/
SELECT * FROM Book WHERE Author = 'K.Vince' OR Price not BETWEEN 50 AND 100;

/*Question 16*/
SELECT * FROM Publisher ORDER BY Name ASC;

/*Question 17*/
SELECT * FROM Book ORDER BY Name DESC;

/*Question 18*/
SELECT * FROM Book WHERE Author = 'K.Vince' ORDER BY Name DESC;

/*Question 19*/
SELECT * FROM Book WHERE Author <> 'J.Wenton' AND Price > 30 ORDER BY Price DESC;

/*Question 20*/
SELECT * FROM Book WHERE Name <> 'Science' ORDER BY Author ASC, Price DESC;

/*Question 21*/
SELECT * FROM Book WHERE PublisherID <> 'P01' ORDER BY Price ASC;

/*Question 22*/
SELECT * FROM Book WHERE Author <> 'S.Hanson' OR Price NOT BETWEEN 90 AND 160 ORDER BY Price ASC;