CREATE DATABASE DVD_Loan_Management_System;
USE DVD_Loan_Management_System;

-- ================================================
-- TABLE 1: BORROWER

CREATE TABLE Borrower(
    BorrowerID INT PRIMARY KEY AUTO_INCREMENT,
    BorrowerName VARCHAR(255) NOT NULL,
    BorrowerAddress VARCHAR(255) NOT NULL,
    BorrowerStatus ENUM('Allowed', 'Suspended', 'Banned', 'Pending') NOT NULL DEFAULT 'Allowed'
);

INSERT INTO Borrower (BorrowerName, BorrowerAddress, BorrowerStatus) VALUES
('Ben Jones', '28 Low Road, Nottingham NG5 3PB', 'Allowed'),
('Sarah Mitchell', '14 Oak Avenue, Derby DE1 2LQ', 'Allowed'),
('James Carter', '7 Maple Street, Leicester LE3 5RY', 'Allowed'),
('Priya Sharma', '33 Birchwood Lane, Nottingham NG7 4TW', 'Allowed'),
('Daniel Hughes', '9 Elm Close, Loughborough LE11 2AS', 'Suspended'),
('Emma Thompson', '52 Riverside Drive, Derby DE21 6PH', 'Allowed'),
('Omar Ali', '18 Chestnut Road, Nottingham NG3 1BK', 'Allowed'),
('Lucy Evans', '41 Parkside View, Leicester LE2 3SD', 'Banned'),
('Michael Brown', '6 Holly Court, Beeston NG9 2WA', 'Allowed'),
('Fatima Malik', '29 Cedar Way, Nottingham NG6 8MN', 'Allowed'),
('Ryan O Brien', '3 Willow Bank, Derby DE3 9JT', 'Allowed'),
('Chloe Walker', '77 Hazel Grove, Loughborough LE12 5QP', 'Pending'),
('Aisha Patel', '15 Poplar Lane, Nottingham NG8 6KL', 'Allowed'),
('Tom Richards', '22 Beech Drive, Leicester LE5 4RP', 'Allowed'),
('Zara Khan', '8 Sycamore Close, Nottingham NG2 7HX', 'Banned'),
('Liam Foster', '31 Ash Road, Nottingham NG1 2PL', 'Allowed'),
('Grace Okafor', '19 Cherry Lane, Derby DE4 3NM', 'Allowed'),
('Noah Williams', '5 Fern Close, Leicester LE7 9WQ', 'Pending'),
('Amara Diallo', '44 Spruce Drive, Nottingham NG4 5JH', 'Allowed'),
('Jack Harrison', '12 Pine Street, Beeston NG9 1RT', 'Allowed'),
('Isla Murray', '67 Magnolia Way, Derby DE2 8KP', 'Suspended'),
('Ethan Clarke', '3 Rowan Avenue, Loughborough LE11 7SD', 'Allowed'),
('Sofia Reyes', '28 Willow Court, Nottingham NG6 3BX', 'Allowed'),
('Harry Singh', '9 Oakfield Road, Leicester LE4 2WN', 'Allowed'),
('Mia Johnson', '55 Beech Close, Nottingham NG8 9TR', 'Allowed'),
('Oliver Patel', '21 Elm Way, Derby DE5 1QA', 'Pending'),
('Amelia White', '14 Cedar Avenue, Nottingham NG3 7LK', 'Allowed'),
('George Thomas', '38 Sycamore Road, Leicester LE6 4DP', 'Allowed'),
('Poppy Green', '7 Birch Lane, Beeston NG9 4MV', 'Allowed'),
('Charlie Adams', '26 Hawthorn Drive, Nottingham NG7 2SB', 'Suspended');

SELECT * FROM Borrower;

-- ================================================
-- TABLE 2: RENTAL CATEGORY

CREATE TABLE RentalCategory(
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    RentalCategory VARCHAR(255)  NOT NULL,
    RentalCost     DECIMAL(4, 2) NOT NULL,
    LoanDuration  INT NOT NULL,
    FineChargeRate DECIMAL(4, 2) NOT NULL
);

INSERT INTO RentalCategory(RentalCategory, RentalCost, LoanDuration, FineChargeRate) VALUES
('Action',4.00, 7, 0.75),
('Adventure', 3.50, 7, 0.50),
( 'Animation', 3.50, 3, 0.50),
('Biography', 3.80, 7, 0.60),
('Comedy', 4.50, 7, 0.75),
('Crime', 3.80, 3, 0.60),
('Drama', 4.20, 7, 0.75),
('Horror', 4.00, 3, 0.75),
('Superhero', 4.50, 7, 1.00),
('Thriller', 4.00, 3, 0.75);

SELECT * FROM RentalCategory;

-- ================================================
-- TABLE 3: DVD

CREATE TABLE DVD(
    DvdID INT PRIMARY KEY AUTO_INCREMENT,
    DvdTitle VARCHAR(255) NOT NULL,
    StarringActor VARCHAR(255) NOT NULL,
    DvdYear YEAR NULL,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES RentalCategory (CategoryID)
);

INSERT INTO DVD(DVDTitle, StarringActor, DVDYear, CategoryID) VALUES
('Guardians of the Galaxy', 'Chris Pratt', 2014, 'CAT9'),
('Prometheus', 'Noomi Rapace', 2012, 'CAT2'),
('Split', 'James McAvoy', 2016, 'CAT8'),
('Sing', 'Matthew McConaughey', 2016, 'CAT3'),
('Suicide Squad', 'Will Smith', 2016, 'CAT9'),
('The Great Wall', 'Matt Damon', 2016, 'CAT1'),
('La La Land', 'Ryan Gosling', 2016, 'CAT5'),
('Mindhorn', 'Essie Davis', 2016, 'CAT5'),
('The Lost City of Z', 'Charlie Hunnam', 2016, 'CAT1'),
('Passengers', 'Jennifer Lawrence', 2016, 'CAT2'),
('Fantastic Beasts and Where to Find Them', 'Eddie Redmayne',2016, 'CAT2'),
('Hidden Figures', 'Taraji P. Henson', 2016, 'CAT4'),
('Rogue One', 'Felicity Jones', 2016, 'CAT1'),
('Moana', 'Aulli Cravalho', 2016, 'CAT3'),
('The Secret Life of Pets', 'Louis C.K.', 2016, 'CAT3'),
('Hacksaw Ridge', 'Andrew Garfield', 2016, 'CAT4');

SELECT * FROM DVD;

-- ================================================
-- TABLE 4: DVD COPY

CREATE TABLE DvdCopy(
    CopyID INT PRIMARY KEY AUTO_INCREMENT,
    DvdID INT,
    FOREIGN KEY (DvdID) REFERENCES DVD (DvdID),
    ShelfPosition VARCHAR(255)  NOT NULL,
    DvdStatus ENUM ('On Loan' , 'Available', 'Reserved', 'Retired') NOT NULL DEFAULT 'Available'
);

INSERT INTO DvdCopy(DvdID, ShelfPosition, DvdStatus) VALUES

SELECT * FROM DvdCopy;

-- ================================================
-- TABLE 5: LOAN

CREATE TABLE Loan(
    LoanID INT PRIMARY KEY AUTO_INCREMENT,
    BorrowerID INT,
    FOREIGN KEY (BorrowerID) REFERENCES Borrower (BorrowerID),
    LoanDate DATETIME DEFAULT CURRENT_TIMESTAMP  NOT NULL
);

INSERT INTO Loan(BorrowerID, LoanDate) VALUES

SELECT * FROM Loan;

-- ================================================
-- TABLE 6: LOAN COPY

CREATE TABLE LoanCopy(
    LoanID INT,
    CopyID INT,
    PRIMARY KEY (LoanID, CopyID),
    FOREIGN KEY (LoanID) REFERENCES Loan (LoanID),
    FOREIGN KEY (CopyID) REFERENCES DvdCopy (CopyID),
    ReturnDueDate DATETIME DEFAULT CURRENT_TIMESTAMP  NOT NULL,
    ActualReturnDate DATETIME DEFAULT CURRENT_TIMESTAMP  NOT NULL
);

INSERT INTO LoanCopy(ReturnDueDate, ActualReturnDate) VALUES

SELECT * FROM LoanCopy;