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
('Zara Khan', '8 Sycamore Close, Nottingham NG2 7HX', 'Banned');

SELECT * FROM Borrower;

-- ================================================
-- TABLE 2: RENTAL CATEGORY

CREATE TABLE RentalCategory(
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    RentalCategory VARCHAR(255)  NOT NULL PRIMARY KEY,
    RentalCost     DECIMAL(4, 2) NOT NULL,
    LoanDuration  INT NOT NULL,
    FineChargeRate DECIMAL(4, 2) NOT NULL
);

INSERT INTO RentalCategory(RentalCategory, RentalCost, LoanDuration, FineChargeRate) VALUES

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