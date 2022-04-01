SELECT firstName, lastName
FROM author;

SELECT title, TYPE
FROM book;

SELECT publisherCode
FROM book
GROUP BY publisherCode;

SELECT title,price, price*.75 as discount
FROM book
LIMIT 5;

SELECT title,price
FROM book
WHERE price>20;

SELECT publisherName
FROM publisher
WHERE city='New York';

SELECT publisherName
FROM publisher
WHERE city!='New York';

SELECT bookCode, onHand
FROM inventory
WHERE onHand between 2 and 4;

SELECT count(title) AS PenguinBooks
FROM book
where publisherCode='PE';

SELECT count(title)
FROM book
where price<=20;

SELECT *
FROM book, publisher
WHERE book.publisherCode=publisher.publisherCode;

SELECT *
FROM book
JOIN publisher ON book.publisherCode=publisher.publisherCode;

SELECT title, city
FROM book
join publisher on book.publisherCode=publisher.publisherCode;

SELECT title as Title, branchNum as Number_On_Branch, onHand as Amount_Availible
FROM book
join inventory on book.bookCode=inventory.bookCode;

SELECT title as Title, sum(onHand) as total_inventory
FROM book
join inventory on book.bookCode=inventory.bookCode
group by title;

SELECT firstName, lastName, title
FROM author,book
WHERE paperback='Y'
ORDER BY lastName,title;

SELECT title as Title, lastName as Author_Last_Name
FROM book
JOIN wrote on book.bookCode=wrote.bookCode
JOIN author on wrote.authorNum=author.authorNum
ORDER BY lastName;
