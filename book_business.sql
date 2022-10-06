DROP DATABASE IF EXISTS `book_business`;
CREATE DATABASE IF NOT EXISTS `book_business`; 
USE `book_business`;


-- ADD TABLES

DROP TABLE IF EXISTS Editors;
CREATE TABLE `Editors` (
	`Editor_ID` 		int NOT NULL,
	`Name` 				varchar (20) NULL,
    PRIMARY KEY (`Editor_ID`)
);


DROP TABLE IF EXISTS Authors;
CREATE TABLE `Authors` (
	`Author_ID` 		int NOT NULL,
	`Name` 				varchar (20) NULL,
    PRIMARY KEY (`Author_ID`)
);

DROP TABLE IF EXISTS Books;
CREATE TABLE `Books` (
	`ISBN` 		int NOT NULL,
	`Name` 				varchar (20)  NULL,
	`Publisher_ID` 			int NULL,
    `Genre`				varchar (20)  NULL,
    PRIMARY KEY (`ISBN`)
);


DROP TABLE IF EXISTS Publishers;
CREATE TABLE `Publishers` (
	`Publisher_ID` 		int NOT NULL,
	`Publisher_name` 				varchar (20)  NULL,
    PRIMARY KEY (`Publisher_ID`)
);

DROP TABLE IF EXISTS Customers;
CREATE TABLE `Customers` (
	`Customer_ID` 		int NOT NULL,
	`Customer_name` 		varchar (20)  NULL,
    PRIMARY KEY (`Customer_ID`)
);

DROP TABLE IF EXISTS Orders;
CREATE TABLE `Orders` (
	`Order_ID` 		int NOT NULL,
	`customer_id` 				int NULL,
    PRIMARY KEY (`Order_ID`)
); 

DROP TABLE IF EXISTS Books_editors_tab;
CREATE TABLE `Books_editors_tab` (
	`Books_editors_ID` 		int NOT NULL,
	`Book_ISBN` 				int NULL,
	`Editor_ID` 			int NULL,
    PRIMARY KEY (`Books_editors_ID`)
); 

DROP TABLE IF EXISTS Books_authors_tab;
CREATE TABLE `Books_authors_tab` (
	`Books_authors_ID` 		int NOT NULL,
	`Book_ISBN` 				int NULL,
	`Author_ID` 			int NULL,
    `Author_royalty` 			int NULL,
    PRIMARY KEY (`Books_authors_ID`)
); 

DROP TABLE IF EXISTS Books_orders_tab;
CREATE TABLE `Books_orders_tab` (
	`Books_orders_ID` 		int NOT NULL,
	`Book_ISBN` 				int NULL,
	`Order_ID` 			int NULL,
    PRIMARY KEY (`Books_orders_ID`)
); 






-- MAKE RELATIONS BETWEEN TABLES

SELECT*
FROM Editors e
JOIN Books_editors_tab cb
	ON e.Editor_ID = cb.Editor_ID
JOIN Books b
	ON b.ISBN = cb.Book_ISBN;
    
SELECT*
FROM Authors a
JOIN Books_authors_tab ba
	ON a.Author_ID = ba.Author_ID
JOIN Books b
	ON b.ISBN = ba.Book_ISBN;


SELECT*
FROM Books b
JOIN Books_orders_tab bo
	ON b.ISBN = bo.Book_ISBN
JOIN Orders o
	ON o.Order_ID = bo.Order_ID;
    
SELECT*
FROM Publishers p
JOIN Books b
	ON p.Publisher_ID = b.Publisher_ID;

SELECT*
FROM Customers c
JOIN Orders o
	ON c.Customer_ID = o.Customer_ID



