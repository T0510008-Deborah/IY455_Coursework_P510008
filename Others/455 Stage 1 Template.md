# IY455 Stage 1

| Assessment Details | Please Complete All Details             |
| ------------------ | --------------------------------------- |
| Group              | B                                       |
| Module Title       | Information Systems Analysis and Design |
| Assessment Type    | Coursework Stage 1                      |
| Module Tutor Name  | Ghashim Mustafa                         |
| Student ID Number  | P510008                                 |
| Date of Submission | 19/02/2026                              |

- [x] *I confirm that this assignment is my own work. Where I have referred to academic sources, I have provided in-text citations and included the sources in
  the final reference list.*

- [x] *Where I have used AI, I have cited and referenced appropriately.

------------------------------------------------------------------------------------------------------------------------------

### Normalisation Table

------------------------------------------------------------------------------------------------------------------------------

##### 1NF

Borrow_Details

| Loan No. (PK) | Borrower No. | Borrower Name | Borrower Address                | Borrower Total Fine | Borrower Status | Loan Date  | Total loan Cost | DVD Status | Return Due Date |
| ------------- | ------------ | ------------- | ------------------------------- | ------------------- | --------------- | ---------- | --------------- | ---------- | --------------- |
| LN74857       | BN1721       | Ben Jones     | 28 Low Road, Nottingham NG5 3PB | £0.00               | Allowed         | 06/02/2002 | £8.00           | On Loan    | 13/02/2002      |

Loan Details

| Loan No. (FK) | DVD No. (PK) | DVD Title               | DVD Starring Actor | DVD Year | Rental Category | Rental Cost | Copy No | Shelf Position |
| ------------- | ------------ | ----------------------- | ------------------ | -------- | --------------- | ----------- | ------- | -------------- |
| LN74857       | DN198        | Raiders of the Lost Ark | Harrison Ford      | 1981     | Adventure       | £3.50       | CN1099  | AV123          |
| LN74857       | DN9829       | John Wick               | Keanu Reeves       | 2014     | Action          | £4.50       | CN8739  | AC8728         |

##### 2NF

Borrow_Details

| Loan No. (PK) | Borrower No. | Borrower Name | Borrower Address                | Borrower Total Fine | Borrower Status | Loan Date  | Total loan Cost | DVD Status | Return Due Date |
| ------------- | ------------ | ------------- | ------------------------------- | ------------------- | --------------- | ---------- | --------------- | ---------- | --------------- |
| LN74857       | BN1721       | Ben Jones     | 28 Low Road, Nottingham NG5 3PB | £0.00               | Allowed         | 06/02/2002 | £8.00           | On Loan    | 13/02/2002      |

Loan_Details

| Loan No. (FK) (PK) | DVD No. (PK) | DVD Title (FK)          | DVD Year | Rental Category | Copy No | Shelf Position |
|:------------------:| ------------ | ----------------------- | -------- | --------------- | ------- | --------------:|
| LN74857            | DN198        | Raiders of the Lost Ark | 1981     | Adventure       | CN1099  | AV123          |
| LN74857            | DN9829       | John Wick               | 2014     | Action          | CN8739  | AC8728         |




DVD_Details

| DVD Title (PK)          | Rental Cost |
| ----------------------- | ----------- |
| Raiders of the Lost Ark | £3.50       |
| John Wick               | £4.50       |

##### 3NF

Loan_Details

| Loan No. (PK) | Borrower No(FK). | Loan Date  | Return Due Date |
| ------------- | ---------------- | ---------- | --------------- |
| LN74857       | BN1721           | 06/02/2002 | 13/02/2002      |

Borrow_details

| Borrower No (PK). | Borrower Name | Borrower Address                | Borrower Status |
| ----------------- | ------------- | ------------------------------- | --------------- |
| BN1721            | Ben Jones     | 28 Low Road, Nottingham NG5 3PB | Allowed         |

Copy_Details   

| Copy No (PK) (FK) | Shelf Position | DVD Status |
| ----------------- | -------------- | ---------- |
| CN1099            | AV123          | On Loan    |
| CN8739            | AC8728         | On Loan    |

Rental_details

| Rental Category (PK) | Borrower Total Fine | Rental Cost | Rental Duration |
| -------------------- | ------------------- | ----------- | --------------- |
| Adventure            | £0.00               | £3.50       | One day loan    |
| Action               | £0.00               | £4.50       | Three day loan  |

DVD _Details

| DVD No. (PK) (FK) | DVD Title (PK, FK)      | DVD Year | Rental Category |
| ----------------- | ----------------------- | -------- | --------------- |
| DN198             | Raiders of the Lost Ark | 1981     | Adventure       |
| DN9829            | John Wick               | 2014     | Action          |

Dvd_Copy    

| Copy No (PK) (FK) | DVD No. (PK) (FK) |
| ----------------- | ----------------- |
| CN1099            | DN198             |
| CN8739            | DN9829            |

------------------------------------------------------------------------------------------------------------------------------

##### ERD

------------------------------------------------------------------------------------------------------------------------------

<img title="" src="file:///C:/Users/user/AppData/Roaming/marktext/images/2026-02-20-03-54-06-image.png" alt="" width="710">



##### •    Describe what normalisation is and what are its advantages and disadvantages

**Normalisation**

Normalisation is a set of procedures that make sure that a database is organised in an effective manner. This allows the data to be accessed using queries in an effective manner.
**Advantages of Normalisation**

The database doesn’t have redundant data, it is smaller in size and so less money needs to be spent of storage. There is less data to search through and therefore much faster to run a query on the data. There is no data duplication so less mistakes

**Disadvantages of Normalisation**

It is time consuming to organise the data to the normalised form.
