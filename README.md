# PL/SQL Coding Test - Level 1

### Disclaimer
- This test assume that you are familiar with basic Git commands
- This test assume that you have necessary tools to complete the test such as code editor, installation of SQL database

## FORK THIS REPOSITORY FIRST
- By forking this repository, we can see your submission right away (submission is not valid unless you do this)
- Commit early and often

### Stage 1 - Table Design
Your task is to come up with an ERD (in `.png` format) and a DDL script in `.sql` format. Your requirement as follows.
- Company **BookWonder** also known as **BW** wants to create a new book management system
- This system should handle a user management part and a book management part
  - User Management
    - This table need to have at least the first and last name of the user and a unique identifier of the user.
    - BW management also wants to know when the user is created and updated.
    - A user can be blacklisted and is not allowed to access the system. However, this can be restored on demand.
    - BW management forsee that there's going to be at least 100 users during the pilot program of the application, with possibility to reach a global audience with 100k potential users.
    - From the UI, management can search the user based on their first name and last name.
  - Book Management
    - This table need to have at least the name of the book, the author name, publisher name and a unique identifier of the book.
    - A book can only be added by a user.
    - BW management wants to have a detailed audit trail on who created the book, updated the book the last time and deleted the book as well as when it all happened.
    - As a part of international standard, a book will have ISBN which is unique.
    - There will be a summary section which at the moment the management are not sure on how many characters the summary is going to be for each book.
    
### Stage 2 - More Features Coming In
- BW management decided to add geo-taging to the book
  - You will need to add a lang and lat information tied to the book as well as the country of origin for the book.
  - With the addition of country of origin, management are hoping to get a:
    - View of how many books per region
    - View of how many books per region per author
    - View of how many books per region per publisher
- Due to recent changes in database access operation, any data manipulation must be done through a store procedure or function.
  - Create a stored procedure to insert, update and delete user and book
  - Create a bulk delete stored procedure for book based on their author
  - Create a stored procedure to blacklist and restore user access
TestEdit
