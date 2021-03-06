USE [PatikaWeekFour]
GO
/****** Object:  StoredProcedure [dbo].[AddStudent]    Script Date: 30.01.2022 21:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROC [dbo].[AddStudent](
@Name nvarchar,
@LastName nvarchar,
@CreateDate smalldatetime,
@IsActive bit,
@StudentTcNumber nvarchar(11)
)

AS
IF EXISTS(SELECT * FROM Students WHERE  StudentTcNumber=@StudentTcNumber)
BEGIN
raiserror('Bu Öğrenci Zaten Kayıtlı',1,1);
END
ELSE
BEGIN
INSERT INTO Students VALUES(@Name,@LastName,@CreateDate,@IsActive,@StudentTcNumber)
END
