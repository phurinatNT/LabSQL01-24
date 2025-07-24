-- Ẻ�֡�Ѵ����� SQL ��ҹ������ Northwind
--1. ��ͧ������ʾ�ѡ�ҹ �ӹ�˹�� ���� ���ʡ�� �ͧ��ѡ�ҹ�����������ͧ London
--2. ��ͧ��â������Թ��ҷ�������ʻ����� 1,2,4,8 ������Ҥ� ��ǧ 50-100$
--3. ��ͧ��û���� ���ͧ ���ͺ���ѷ�١��� ���ͼ��Դ��� ������ �ͧ�١��ҷ�����
--4. �����Ţͧ�Թ������ʻ�������� 1 �Ҥ�����Թ 50 �����Թ������ʻ�������� 8 �Ҥ�����Թ 75
--5. ���ͺ���ѷ�١��� �������� ����� USA �������������Ţ FAX  ���§����ӴѺ���ͺ���ѷ 

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



