

CREATE Table Auto
(
	AvtoID INTEGER PRIMARY KEY,
	CarBrand VARCHAR(255) NOT NULL,
	Model VARCHAR(255) NOT NULL,
	YearOfRelease INTEGER NOT NULL,
	Price INTEGER NOT NULL
);



INSERT INTO Auto 
	(CarBrand,Model,YearOfRelease,Price)
VALUES
	('Toyota','Corolla',2013,2500000),
	('Lada','Kalina',2004,500000),
	('Haval','M6',2017,1800000),
	('Geely','Monjaro',2021,3500000),
	('Toyota','Camry',1982,3900000),
	('Kia','Rio',2001,1800000),
	('Daewoo','Nexia',2009,300000),
	('Chevrolet','Camaro',1966,9000000),
	('Renault','Duster',2010,2000000),
	('Hyundai','Palisade',2018,4600000);

--Примеры SQL запросов

SELECT * 
FROM Auto
WHERE CarBrand = 'Toyota';
--Запрос по выдаче авто только марки Toyota


SELECT * 
FROM Auto
Order by AvtoID DESC
LIMIT 3;
--Запрос по выдаче последних 3 авто


SELECT * 
FROM Auto
Order by Price DESC 
LIMIT 1;
--Запрос по выдаче самого дорогостоящего авто 1 вариант


SELECT * FROM Auto
WHERE Price = (SELECT MAX(Price) FROM Auto);
--Запрос по выдаче самого дорогостоящего авто 2 вариант


SELECT * 
FROM Auto
Order by YearOfRelease  
LIMIT 1;
--Запрос по выдаче самого старого авто 1 вариант


SELECT * FROM Auto
WHERE YearOfRelease = (SELECT MIN(YearOfRelease) FROM Auto);
--Запрос по выдаче самого старого авто 2 вариант



SELECT * FROM Auto
WHERE Price >= 1000000;
--Запрос по выдаче авто стоимостью 1 000 000 рублей и более
