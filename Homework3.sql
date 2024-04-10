--1)
/*SELECT FirstName, LastName
  FROM customers WHERE City = "Prague"*/

--2)
/*SELECT FirstName, LastName
  FROM customers WHERE FirstName LIKE 'M%'*/

/*SELECT FirstName, LastName
  FROM customers WHERE FirstName LIKE '%ch%'*/

--3)
/*SELECT Name, Bytes / 1024. / 1024. AS MegaBytes
  FROM tracks*/

--4)
/*SELECT FirstName, LastName
  FROM employees WHERE HireDate LIKE "2002%"  AND City == "Calgary"*/

--5)
/*SELECT FirstName, LastName
  FROM employees WHERE HireDate - BirthDate >= 40*/

--6)
/*SELECT FirstName, LastName
  FROM customers WHERE Country == "USA" AND Fax IS NULL*/

--7)
/*SELECT ShipCity
  FROM sales WHERE ShipCountry == "Canada" AND SalesDate LIKE '%-08-%' OR '%-09-%'*/

--8)
/*SELECT Email
  FROM customers WHERE Email LIKE '%gmail.com'*/

--9)
/*SELECT FirstName, LastName
  FROM employees WHERE '2024-04-04' - HireDate >= 18*/

--10)
/*SELECT Title
  FROM employees ORDER BY Title*/

--11)
/*SELECT FirstName, LastName, 2024 - Age AS BirthYear
  FROM customers ORDER BY FirstName, LastName, BirthYear*/

--12)
/*SELECT MIN(Milliseconds) / 1000. AS Seconds
  FROM tracks*/

--13)
/*SELECT Name, MIN(Milliseconds) / 1000. AS Seconds
  FROM tracks*/

--14)
/*SELECT Country, AVG(Age) AS AverageAge
  FROM customers GROUP BY Country*/

--15)
/*SELECT LastName
  FROM employees WHERE HireDate LIKE '%-10-%'*/

--16)
/*SELECT LastName
  FROM employees WHERE HireDate = (SELECT MIN(HireDate) FROM employees)*/