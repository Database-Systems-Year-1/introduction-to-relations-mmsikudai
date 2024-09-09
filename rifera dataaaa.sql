CREATE TABLE Cakes (
    CakeID INT,
    CakeName VARCHAR(50),
    TypeID INT,
    Price DECIMAL(10, 2)
);
CREATE TABLE CakeTypes (
    TypeID INT,
    TypeName VARCHAR(50)
);
CREATE TABLE Bakeries (
    BakeryID INT,
    BakeryName VARCHAR(50),
    Location VARCHAR(100)
);
INSERT INTO CakeTypes (TypeID, TypeName)
VALUES (1, 'Chocolate'), (2, 'Vanilla'), (3, 'Red Velvet');
INSERT INTO Cakes (CakeID, CakeName, TypeID, Price)
VALUES (1, 'Chocolate Delight', 1, 25.50),
       (2, 'Vanilla Dream', 2, 20.00),
       (3, 'Red Velvet Love', 3, 30.00);
INSERT INTO Bakeries (BakeryID, BakeryName, Location)
VALUES (1, 'Sweet Treats', 'New York'),
       (2, 'Cake Heaven', 'Los Angeles'),
       (3, 'Bakehouse Bliss', 'Chicago');
SELECT * FROM Cakes;
SELECT * FROM CakeTypes;
SELECT * FROM Bakeries;
UPDATE Cakes
SET Price = 22.00
WHERE CakeName = 'Vanilla Dream';
ALTER TABLE Cakes
ADD Description VARCHAR(255);
ALTER TABLE Cakes
DROP COLUMN Description;
DROP TABLE Bakeries;