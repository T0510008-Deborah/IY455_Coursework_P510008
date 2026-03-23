CREATE DATABASE DVD Loan Management System;
USE DVD Loan Management System;

CREATE TABLE Borrower(
    BorrowerID INT PRIMARY KEY AUTO_INCREMENT,
    BorrowerName VARCHAR(255) NOT NULL,
    BorrowerAddress VARCHAR(255) NOT NULL,
    BorrowerStatus VARCHAR(255) NOT NULL
);

INSERT INTO Borrower (BorrowerName, BorrowerAddress, BorrowerStatus) VALUES


CREATE TABLE RentalCategory(
    RentalCategory VARCHAR(255)  NOT NULL,
    RentalDuration VARCHAR(255)  NOT NULL,
    RentalCost     DECIMAL(4, 2) NOT NULL,
    FineChargeRate DECIMAL(4, 2) NOT NULL
);

INSERT INTO RentalCategory(RentalDuration, RentalCost, FineChargeRate) VALUES


CREATE TABLE DVD(
    DVDID VARCHAR(255)  NOT NULL,
    DVDTitle VARCHAR(255)  NOT NULL,
    StarringActor     DECIMAL(4, 2) NOT NULL,
    DVDYear DECIMAL(4, 2) NOT NULL
    RentalCategory VARCHAR(255) NOT NULL, FOREIGN KEY (RentalCategory) REFERENCES RentalCategory (RentalCategory)
);

