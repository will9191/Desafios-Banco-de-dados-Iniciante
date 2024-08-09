CREATE DATABASE ProductionDB;
GO

USE ProductionDB;
GO

CREATE SCHEMA Production;
GO

CREATE TABLE Production.Product
(
	ProductID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Name NVARCHAR(100) NOT NULL,
	DefaultPrice DECIMAL(10,2) NOT NULL,
	ListPrice DECIMAL(10,2) NOT NULL,
	ModifiedDate DATETIME DEFAULT GETDATE()
);
GO

INSERT INTO Production.Product(Name, DefaultPrice, ListPrice)
VALUES
('Mountain Bike Socks', 8.00, 12.00),
('ACER Monitor 240hz', 1800.00, 2100.00),
('G29 Driving Force', 1800.00, 2500.00),
('GEFORCE RTX 2060', 1800.00, 2400.00),
('Ducky One 2 Mini Keyboard', 1000.00, 1400.00),
('G PRO Logitech Wireless', 400.00, 600.00),
('Industrial Table', 300.00, 650.00);
GO

INSERT INTO Production.Product(Name, DefaultPrice, ListPrice)
VALUES
('Smartphone', 200.00, 400.00);

UPDATE Production.Product
SET ListPrice = 15.00
WHERE Name  = 'Mountain Bike Socks';

SELECT TOP 5 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;