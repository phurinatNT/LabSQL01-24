-- áºº½Ö¡ËÑ´¤ÓÊÑè§ SQL ãªé°Ò¹¢éÍÁÙÅ Northwind
--1. µéÍ§¡ÒÃÃËÑÊ¾¹Ñ¡§Ò¹ ¤Ó¹ÓË¹éÒ ª×èÍ ¹ÒÁÊ¡ØÅ ¢Í§¾¹Ñ¡§Ò¹·ÕèÍÂÙèã¹àÁ×Í§ London
--2. µéÍ§¡ÒÃ¢éÍÁÙÅÊÔ¹¤éÒ·ÕèÁÕÃËÑÊ»ÃÐàÀ· 1,2,4,8 áÅÐÁÕÃÒ¤Ò ªèÇ§ 50-100$
--3. µéÍ§¡ÒÃ»ÃÐà·È àÁ×Í§ ª×èÍºÃÔÉÑ·ÅÙ¡¤éÒ ª×èÍ¼ÙéµÔ´µèÍ àºÍÃìâ·Ã ¢Í§ÅÙ¡¤éÒ·Ñé§ËÁ´
--4. ¢éÍÁÙÅ¢Í§ÊÔ¹¤éÒÃËÑÊ»ÃÐàÀ··Õè 1 ÃÒ¤ÒäÁèà¡Ô¹ 50 ËÃ×ÍÊÔ¹¤éÒÃËÑÊ»ÃÐàÀ··Õè 8 ÃÒ¤ÒäÁèà¡Ô¹ 75
--5. ª×èÍºÃÔÉÑ·ÅÙ¡¤éÒ ·ÕèÍÂÙèã¹ »ÃÐà·È USA ·ÕèäÁèÁÕËÁÒÂàÅ¢ FAX  àÃÕÂ§µÒÁÅÓ´Ñºª×èÍºÃÔÉÑ· 

SELECT EmployeeID, TitleOfCourtesy, FirstName, LastName
FROM Employees
WHERE City = 'London';

SELECT *
FROM Products
WHERE CategoryID IN (1, 2, 4, 8)
AND UnitPrice BETWEEN 50 AND 100;

SELECT Country, City, CompanyName, ContactName, Phone
FROM Customers;

SELECT *
FROM Products
WHERE (CategoryID = 1 AND UnitPrice <= 50)
OR (CategoryID = 8 AND UnitPrice <= 75);

SELECT CompanyName
FROM Customers
WHERE Country = 'USA'
AND Fax IS NULL
ORDER BY CompanyName;

SELECT CustomerID, CompanyName, ContactName
FROM Customers
WHERE CompanyName LIKE '%con%';




