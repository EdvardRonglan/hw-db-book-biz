USE `book_business`;


-- Number of books per Author
SELECT Author_ID,COUNT(*) as 'Number of Books' 
FROM Books_authors_tab 
GROUP BY Author_ID ORDER BY 'Number of Books';


-- Number of authors per book
SELECT Book_ISBN,COUNT(*) as 'Number of Authors' 
FROM Books_authors_tab 
GROUP BY Book_ISBN ORDER BY 'Number of Authors';


-- Book royalties for book ISBN equal to 2 (change the number if you want another book)  
SELECT Author_ID, Author_royalty
FROM Books_authors_tab 
WHERE Book_ISBN=2;


-- Book royalties per Author
SELECT Author_ID,COUNT(*) as 'Book royalties' 
FROM Books_authors_tab 
WHERE Author_royalty IS NOT NULL
GROUP BY Author_ID ORDER BY 'Book royalties';

-- Books within 'Biography' (change genre to get other genres )
SELECT ISBN as 'Book ISBN with chosen genre'
FROM Books
WHERE Genre LIKE '%Biography%';


-- Books within 'Biography' (change genre to get other genres )
SELECT ISBN as 'ISBN for books from chosen publisher'
FROM Books
WHERE Publisher_ID =2;


-- Editors per book
SELECT Book_ISBN,COUNT(*) as 'Number of Editors' 
FROM Books_editors_tab 
GROUP BY Book_ISBN ORDER BY 'Number of Editors';


-- Books per editor
SELECT Editor_ID,COUNT(*) as 'Number of books' 
FROM Books_editors_tab 
GROUP BY Editor_ID ORDER BY 'Number of books';

-- Books in order 2 (change the order in the last row to se another order)
SELECT Book_ISBN as 'ISBN for books in chosen order'
FROM Books_orders_tab
WHERE Order_ID =2;

-- Orders for book with ISBN equal to 1 (change the ISBN in the last row to se another book)
SELECT Order_ID as 'Orders including chosen book'
FROM Books_orders_tab
WHERE Book_ISBN =2;


-- Customer orders
SELECT *
FROM Orders;

-- 
-- Orders per customer
SELECT Customer_ID,COUNT(*) as 'Number of orders' 
FROM Orders
GROUP BY Customer_ID ORDER BY 'Number of orders';

