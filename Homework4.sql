--1)
/*SELECT SUM(sales_items.UnitPrice * sales_items.Quantity) AS TotalPrice
    FROM sales JOIN sales_items ON sales.SalesId = sales_items.SalesId
    WHERE sales.ShipCountry = "USA" AND sales.SalesDate >= date('2012-01-01') AND sales.SalesDate <= date('2012-03-31');*/

/*SELECT SUM(sales_items.UnitPrice * sales_items.Quantity) AS TotalPrice
FROM sales_items WHERE (sales_items.SalesId IN (
SELECT sales.SalesId FROM sales
WHERE sales.SalesDate >= date('2012-01-01') AND sales.SalesDate <= date('2012-03-31') AND sales.shipCountry = "USA" AND sales.SalesId IN (
SELECT sales_items.SalesId 
FROM sales_items WHERE sales.SalesId = sales_items.SalesId
)))*/


--2)
/*SELECT customers.FirstName
FROM customers WHERE (customers.FirstName NOT IN (
SELECT employees.FirstName FROM employees)
) GROUP BY customers.FirstName*/

/*SELECT FirstName
FROM customers WHERE customers.FirstName NOT IN (
    SELECT employees.FirstName
    FROM customers JOIN employees
    WHERE customers.FirstName = employees.FirstName
) GROUP BY customers.FirstName*/

/*SELECT customers.FirstName FROM customers EXCEPT 
SELECT employees.FirstName FROM employees*/


--3)
/*Нет. 
Потому что во втором случае мы получаем все строки из t1, а в первом только те, которые удовлетворяют WHERE. 
Во втором случае строк будет больше.*/


--4)
/*SELECT Title, (SELECT COUNT(*) FROM tracks 
WHERE tracks.AlbumId = albums.AlbumId GROUP BY tracks.AlbumId) AS Count
FROM albums GROUP BY albums.Title*/

/*SELECT albums.Title, COUNT(*) AS Count
FROM albums LEFT JOIN tracks ON albums.AlbumId = tracks.AlbumId
GROUP BY albums.Title*/


--5)
/*SELECT customers.LastName, customers.FirstName
FROM customers JOIN sales ON sales.CustomerId = customers.CustomerId
WHERE customers.Country = "Germany" and sales.ShipCity = "Berlin" and sales.SalesDate LIKE '2009-%'*/


--6)
/*SELECT LastName
FROM customers LEFT JOIN sales LEFT JOIN sales_items
ON customers.CustomerId = sales.CustomerId AND sales.SalesId = sales_items.SalesId
GROUP BY customers.CustomerId
HAVING sum(sales_items.Quantity) > 30*/

/*SELECT LastName
FROM customers, sales, sales_items
WHERE customers.CustomerId = sales.CustomerId AND sales.SalesId = sales_items.SalesId
GROUP BY customers.CustomerId
HAVING sum(sales_items.Quantity) > 30*/


--7)
/*SELECT genres.Name, AVG(tracks.UnitPrice) AS AveragePrice
FROM genres CROSS JOIN tracks ON genres.GenreId = tracks.GenreId
GROUP BY genres.GenreId*/


--8)
/*SELECT genres.Name
FROM genres CROSS JOIN tracks ON genres.GenreId = tracks.GenreId
GROUP BY genres.GenreId 
HAVING AVG(tracks.UnitPrice) > 1*/