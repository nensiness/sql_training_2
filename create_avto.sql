

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
