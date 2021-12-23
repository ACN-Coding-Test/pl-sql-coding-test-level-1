CREATE PROCEDURE db.Book_Management_SP
      @Action VARCHAR(10)
      @Book_ID = NULL,
      @Book_Name = NULL,
	  @ISBN = NULL,
      @Author_ID = NULL,
	  @Publisher_ID = NULL,
	  @Country_CD = NULL,
	  @City_CD = NULL,
	  @Region_ID = NULL,
	  @UserID = NULL,
	  @DateUpdated= NULL,
	  @DateDeleted = NULL

AS
BEGIN
      SET NOCOUNT ON;
 
      --INSERT
      IF @Action = 'INSERT'
      BEGIN
            INSERT INTO Book_Management(Book_ID, Book_Name, ISBN, Author_ID, Publisher_ID, Country_CD, City_CD, Region_ID, UserID, DateUpdated, DateDeleted)
            VALUES (@Book_ID, @Book_Name, @ISBN, @Author_ID, @Publisher_ID, @Country_CD, @City_CD, @Region_ID, @UserID, @DateUpdated, @DateDeleted)
      END
 
      --UPDATE
      IF @Action = 'UPDATE'
      BEGIN
            UPDATE Book_Management
            SET Book_Name = @Book_Name
            WHERE Book_ID = @Book_ID
      END
 
      --DELETE
      IF @Action = 'DELETE'
      BEGIN
            DELETE FROM Book_Management
            WHERE Book_ID = @Book_ID
      END
END
