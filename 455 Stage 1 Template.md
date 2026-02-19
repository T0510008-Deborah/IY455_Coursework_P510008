# IY4113 Milestone 4

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

|                        |              |                         |          |                 |         |                |
| ---------------------- | ------------ | ----------------------- | -------- | --------------- | ------- | --------------:|
| Loan<br> No. (FK) (PK) | DVD No. (PK) | DVD Title (FK)          | DVD Year | Rental Category | Copy No | Shelf Position |
| LN74857                | DN198        | Raiders of the Lost Ark | 1981     | Adventure       | CN1099  | AV123          |
| LN74857                | DN9829       | John Wick               | 2014     | Action          | CN8739  | AC8728         |



|                         |             |
| ----------------------- | ----------- |
| DVD Title (PK)          | Rental Cost |
| Raiders of the Lost Ark | £3.50       |
| John Wick               | £4.50       |

------------------------------------------------------------------------------------------------------------------------------

*Program code goes here:*

------------------------------------------------------------------------------------------------------------------------------

### Updated Gantt Chart

------------------------------------------------------------------------------------------------------------------------------

*Add your updated Gantt chart here!*

------------------------------------------------------------------------------------------------------------------------------

### Diary Entries

------------------------------------------------------------------------------------------------------------------------------

*Add diary entries here detailing what you have done, wny you have done it, and any problems encountered.*

------------------------------------------------------------------------------------------------------------------------------
