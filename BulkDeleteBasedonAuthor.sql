CREATE PROCEDURE db.Book_Management_
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
 
      --DELETE
      IF @Action = 'DELETE'
      BEGIN
            DELETE FROM Book_Management
            WHERE Author_ID = @Author_ID
      END
END
