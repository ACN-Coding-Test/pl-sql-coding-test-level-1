CREATE PROCEDURE db.User_Management_SP
      @Action VARCHAR(10)
	  @UserID = NULL,
	  @UserL_Name = NULL,
	  @UserF_Name = NULL,
	  @DateCreated = NULL,
	  @DateUpdated= NULL
	  
AS
BEGIN
      SET NOCOUNT ON;
 
      --INSERT
      IF @Action = 'INSERT'
      BEGIN
            INSERT INTO User_Management(UserID, UserL_Name,UserF_Name,DateCreated,DateUpdated)
            VALUES (@UserID, @UserL_Name, @UserF_Name, @DateCreated, @DateUpdated)
      END
 
      --UPDATE
      IF @Action = 'UPDATE'
      BEGIN
            UPDATE User_Management
            SET Name = @UserL_Name
            WHERE UserID = @UserID
      END
 
      --DELETE
      IF @Action = 'DELETE'
      BEGIN
            DELETE FROM User_Management
            WHERE UserID = @UserID
      END
END
