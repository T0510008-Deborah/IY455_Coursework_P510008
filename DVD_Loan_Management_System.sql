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
('Aisha Patel', '15 Poplar Lane, Nottingham NG8 6KL', 'Suspended'),
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
('Harry Singh', '9 Oakfield Road, Leicester LE4 2WN', 'Banned'),
('Mia Johnson', '55 Beech Close, Nottingham NG8 9TR', 'Allowed'),
('Oliver Patel', '21 Elm Way, Derby DE5 1QA', 'Pending'),
('Amelia White', '14 Cedar Avenue, Nottingham NG3 7LK', 'Pending'),
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
('Biography', 3.80, 1, 0.20),
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

INSERT INTO DVD(DvdTitle, StarringActor, DvdYear, CategoryID) VALUES
('La La Land','Ryan Gosling',2016,5),
('Prometheus','Noomi Rapace',2012,2),
('Guardians of the Galaxy','Chris Pratt',2014,9),
('Split','James McAvoy',2016,4),
('Arrival','Amy Adams',2016,7),
('Gone Girl','Ben Affleck',2014,6),
('Moana','Aulii Cravalho',2016,3),
('Passengers','Jennifer Lawrence',2016,2),
('The Conjuring','Vera Farmiga',2013,4),
('Moonlight','Mahershala Ali',2016,10),
('Fantastic Beasts and Where to Find Them','Eddie Redmayne',2016,2),
('Toy Story','Tom Hanks',1995,3),
('Suicide Squad','Will Smith',2016,10),
('The Hateful Eight','Samuel L. Jackson',2015,6),
('The Edge of Seventeen','Hailee Steinfeld',2016,5),
('Interstellar','Matthew McConaughey',2014,2),
('Black Panther','Chadwick Boseman',2018,9),
('Insidious','Patrick Wilson',2010,4),
('The Prestige','Christian Bale',2006,7),
('Bad Moms','Mila Kunis',2016,5),
('Shutter Island','Leonardo DiCaprio',2010,6),
('Finding Nemo','Albert Brooks',2003,3),
('Doctor Strange','Benedict Cumberbatch',2016,9),
('Why Him?','Zoey Deutch',2016,5),
('The Martian','Matt Damon',2015,10),
('Get Out','Daniel Kaluuya',2017,4),
('The Departed','Leonardo DiCaprio',2006,6),
('Frozen','Idina Menzel',2013,3),
('Mamma Mia!','Meryl Streep',2008,5),
('X-Men: Apocalypse','James McAvoy',2016,9),
('Prisoners','Hugh Jackman',2013,6),
('Manchester by the Sea','Casey Affleck',2016,7),
('Superbad','Michael Cera',2007,5),
('The Nun','Taissa Farmiga',2018,4),
('The Secret Life of Pets','Louis C.K.',2016,3),
('Inglourious Basterds','Brad Pitt',2009,2),
('The Intern','Robert De Niro',2015,5),
('Nocturnal Animals','Amy Adams',2016,7),
('Diary of a Wimpy Kid','Zachary Gordon',2010,5),
('The Help','Emma Stone',2011,7),
('The Great Wall','Matt Damon',2016,1),
('Bahubali: The Beginning','Prabhas',2015,1),
('Hacksaw Ridge','Andrew Garfield',2016,4),
('Lion','Dev Patel',2016,7),
('Mindhorn','Essie Davis',2016,5);

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
(1, 'AA101', 'On Loan'),
(2, 'AA102', 'Available'),
(3, 'AA103', 'On Loan'),
(4, 'AA104', 'Available'),
(5, 'AA105', 'On Loan'),
(6, 'AA106', 'Available'),
(7, 'AA107', 'On Loan'),
(8, 'AA108', 'Available'),
(9, 'AB101', 'On Loan'),
(10, 'AB102', 'Reserved'),
(11, 'AB103', 'On Loan'),
(12, 'AB104', 'Available'),
(13, 'AB105', 'On Loan'),
(14, 'AB106', 'Available'),
(15, 'AB107', 'On Loan'),
(16, 'AC101', 'On Loan'),
(17, 'AC102', 'Reserved'),
(18, 'AC103', 'On Loan'),
(19, 'AC104', 'Available'),
(20, 'AC105', 'On Loan'),
(21, 'AC106', 'Available'),
(22, 'AC107', 'On Loan'),
(23, 'AD101', 'Available'),
(24, 'AD102', 'On Loan'),
(25, 'AD103', 'Retired'),
(26, 'AD104', 'Available'),
(27, 'AD105', 'On Loan'),
(28, 'AE101', 'On Loan'),
(29, 'AE102', 'Available'),
(30, 'AE103', 'On Loan'),
(31, 'AE104', 'Available'),
(32, 'AE105', 'On Loan'),
(33, 'AF101', 'Available'),
(34, 'AF102', 'On Loan'),
(35, 'AF103', 'Available'),
(36, 'AF104', 'Available'),
(37, 'AF105', 'On Loan'),
(38, 'AF106', 'Retired'),
(39, 'AF107', 'On Loan'),
(40, 'AF108', 'Available'),
(41, 'AG101', 'On Loan'),
(42, 'AG102', 'Available'),
(43, 'AG103', 'Reserved'),
(44, 'AG104', 'On Loan');

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
(1, '2025-01-10 10:00:00'),
(2, '2025-01-15 11:30:00'),
(3, '2025-01-20 09:45:00'),
(4, '2025-02-01 14:00:00'),
(6, '2025-02-05 16:20:00'),
(7, '2025-02-10 10:10:00'),
(9, '2025-02-14 13:30:00'),
(10, '2025-02-20 09:00:00'),
(11, '2025-03-01 11:00:00'),
(13, '2025-03-05 15:45:00'),
(14, '2025-03-10 10:30:00'),
(16, '2025-03-15 14:15:00'),
(17, '2025-03-20 09:20:00'),
(19, '2025-04-01 11:40:00'),
(20, '2025-04-05 13:00:00'),
(22, '2025-04-10 10:50:00'),
(23, '2025-04-15 15:30:00'),
(24, '2025-04-20 09:10:00'),
(25, '2025-04-25 14:00:00'),
(27, '2025-05-01 11:20:00'),
(1, '2025-05-05 10:00:00'),
(2, '2025-05-10 13:15:00'),
(3, '2025-05-14 09:30:00'),
(4, '2025-05-18 15:00:00'),
(6, '2025-05-22 11:45:00'),
(9, '2025-05-26 10:20:00'),
(10, '2025-06-01 14:30:00'),
(13, '2025-06-05 09:00:00'),
(16, '2025-06-10 11:10:00'),
(19, '2025-06-14 13:40:00');

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

INSERT INTO LoanCopy(LoanID, CopyID, ReturnDueDate, ActualReturnDate) VALUES
(1,  9,  '2025-01-17 10:00:00', '2025-01-17 09:00:00'),
(1,  16, '2025-07-17 10:00:00', '2025-07-18 11:00:00'),
(2,  23, '2025-01-22 11:30:00', '2025-01-22 10:00:00'),
(2,  33, '2025-01-22 11:30:00', '2025-01-24 14:00:00'),
(3,  11, '2025-10-27 09:45:00', '2025-10-27 09:00:00'),
(3,  28, '2025-01-27 09:45:00', '2025-01-29 10:00:00'),
(4,  13, '2025-06-08 14:00:00', '2025-06-08 13:00:00'),
(4,  32, '2025-02-08 14:00:00', '2025-02-10 15:00:00'),
(5,  17, '2025-02-12 16:20:00', '2025-02-12 15:00:00'),
(5,  37, '2025-02-12 16:20:00', '2025-02-14 10:00:00'),
(6,  24, '2025-02-17 10:10:00', '2025-02-17 09:00:00'),
(6,  41, '2025-10-17 10:10:00', '2025-10-19 11:00:00'),
(7,  18, '2025-04-21 13:30:00', '2025-04-21 12:00:00'),
(7,  34, '2025-02-21 13:30:00', '2025-02-23 09:00:00'),
(8,  25, '2025-02-27 09:00:00', '2025-02-26 10:00:00'),
(8,  44, '2025-02-27 09:00:00', '2025-02-27 08:00:00'),
(9,  10, '2025-03-08 11:00:00', '2025-03-08 10:00:00'),
(9,  29, '2025-05-08 11:00:00', '2025-05-11 14:00:00'),
(10, 19, '2025-03-12 15:45:00', '2025-03-12 14:00:00'),
(10, 38, '2025-12-12 15:45:00', '2025-12-16 09:00:00'),
(11, 12, '2025-03-08 11:00:00', '2025-03-08 10:00:00'),
(11, 30, '2025-03-08 11:00:00', '2025-03-10 12:00:00'),
(12, 20, '2025-08-22 14:15:00', '2025-08-22 13:00:00'),
(12, 45, '2025-03-22 14:15:00', '2025-03-25 10:00:00'),
(13, 26, '2025-11-27 09:20:00', '2025-11-27 08:00:00'),
(13, 39, '2025-03-27 09:20:00', '2025-03-30 11:00:00'),
(14, 14, '2025-04-08 11:40:00', '2025-04-08 10:00:00'),
(14, 31, '2025-04-08 11:40:00', '2025-04-10 09:00:00'),
(15, 21, '2025-04-12 13:00:00', '2025-04-12 12:00:00'),
(15, 21, '2025-05-16 14:00:00', '2025-05-19 14:00:00');

SELECT * FROM LoanCopy;