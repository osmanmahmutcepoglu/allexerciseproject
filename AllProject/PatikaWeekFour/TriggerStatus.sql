CREATE TRIGGER [dbo].[StudentEducationSuccessStatus] ON [dbo].[EducationAttendance]
after INSERT, UPDATE, DELETE AS
BEGIN
	DECLARE @Id INT;
 	DECLARE @EducationWeekId INT;
	DECLARE @StudentId INT;
 	DECLARE @EducationId INT;

	DECLARE @true int;
	DECLARE @total int;
	DECLARE @ratio int;


-- Insert || Delete || Update
IF EXISTS (Select * From inserted) OR EXISTS (Select * From deleted)
BEGIN
SELECT @Id = Id, @StudentId = @StudentId, @EducationWeekId = @EducationWeekId from inserted;
SELECT @EducationId = @EducationId  FROM EducationWeeks WHERE EducationWeekNumber = @EducationWeekId

SELECT @true FROM EducationAttendance WHERE @StudentId = @StudentId AND Attendance = 1
SELECT @total FROM EducationAttendance WHERE @StudentId = @StudentId 

SELECT @ratio = CAST((100*@true)/@total)



IF EXISTS(SELECT * FROM StudentEducationSuccessStatus WHERE  StudentId=@StudentId)
BEGIN
UPDATE StudentEducationSuccessStatus set StudentId=@StudentId, EducationId=@EducationId, SuccessRate=@ratio where StudentId=@StudentId
END
ELSE
BEGIN
INSERT INTO StudentEducationSuccessStatus VALUES(@StudentId,@EducationId,@ratio)
END

RETURN;
END
END; 
GO