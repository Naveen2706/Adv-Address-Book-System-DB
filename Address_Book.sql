CREATE DATABASE address_Book;
SHOW DATABASES;
USE address_Book;
CREATE TABLE address_Book (firstName VARCHAR(29) NOT NULL, lastName VARCHAR(20) NOT NULL,       /* TO CREATE TABLE */
		address VARCHAR(60) NOT NULL, city VARCHAR(10) NOT NULL, state VARCHAR(20) NOT NULL, 
        zip INT, phoneNumber VARCHAR(10) );
SELECT * FROM Address_Book_Table;
INSERT INTO Address_Book_Table VALUES ("Naveen","Patekar","Pune Maharashtra","Pune","MAharashtra",411030,"9876543210");
UPDATE Address_Book_Table SET firstName = "Kishor", lastName = "Bodakhe", address = "Ahmednagar Maharashtra", city = "Ahmednagar", zip = 454501 WHERE firstName = "Naveen" ;
ALTER TABLE address_book RENAME TO Address_Book_Table;
SET SQL_SAFE_UPDATES=0;
UPDATE address_Book.Address_Book_Table SET firstName = "Kishor", lastName = "Bodakhe", address = "Ahmednagar Maharashtra", city = "Ahmednagar", zip = 454501 WHERE firstName = "Naveen" ;
DELETE FROM Address_Book_Table WHERE firstName = "Kishor";
INSERT INTO Address_Book_Table VALUES ("Anil","Bodakhe","Ahmednagar Maharashtra","Ahmednagar","MAharashtra",422030,"9874563210");
SELECT * FROM Address_Book_Table WHERE city = "Pune";
SELECT firstName, lastName FROM Address_Book_Table WHERE city = "Pune";
SELECT count(city or state) FROM Address_Book_Table;
INSERT INTO Address_Book_Table VALUES ("Rao","Dhotre","Pune Maharashtra","Pune","Maharashtra",422030,"9874563210");
SELECT city, firstName FROM Address_Book_Table ORDER BY (firstName);
ALTER TABLE Address_Book_Table ADD COLUMN relation VARCHAR(6) AFTER zip;  
ALTER TABLE Address_Book_Table ADD COLUMN name VARCHAR(6) AFTER zip;  
UPDATE Address_Book_Table SET name = 'Naveen', relation = 'friend' WHERE firstName = 'Anil';
UPDATE Address_Book_Table SET name = 'Naveen', relation = 'family' WHERE firstName = 'Rao';
ALTER TABLE Address_Book_Table CHANGE name name VARCHAR(20); 
ALTER TABLE Address_Book_Table CHANGE relation relation VARCHAR(20);
UPDATE Address_Book_Table SET name = 'Deepak', relation = 'Profession,' WHERE firstName = 'Naveen';
UPDATE Address_Book_Table SET name = 'Deepak', relation = 'Profession' WHERE firstName = 'Naveen';
 SELECT count(relation) FROM Address_Book_Table;
 UPDATE Address_Book_Table SET name = 'sonu' WHERE relation = 'family';  
 UPDATE Address_Book_Table SET name = 'sonu' WHERE relation = 'friend'; 
 