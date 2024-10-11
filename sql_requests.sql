
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
