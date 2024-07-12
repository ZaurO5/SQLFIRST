CREATE DATABASE MyApp;

USE MyApp;

CREATE TABLE Users (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(255) NOT NULL,
    Surname VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    RegistrationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    ContactNumber VARCHAR(15) DEFAULT '9940502739261',
    Age INT CHECK (Age > 18),
    Address VARCHAR(255) NOT NULL
);

INSERT INTO Users (Name, Surname, Email, Age, Address)
VALUES
    ('Zaur', 'Huseynov', 'zaur2134@icloud.com', 25, '28 May'),
    ('Ulvi', 'Orucov', 'ulv10ruc0v@gmail.com', 30, 'Memar Ajemi');

CREATE TABLE Categories (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(255) NOT NULL,
    Slug VARCHAR(255) NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
);

INSERT INTO Categories (Name, Slug)
VALUES
    ('Baku Electronics', 'Iphone'),
    ('Bravo Market', 'Bread'),
    ('Zara', 'T-shirt');


SELECT Name, Surname, Email FROM Users;
