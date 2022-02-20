-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewEducationStudents]
AS
SELECT E.EducationName, S.Name, S.LastName, SE.EducationId
FROM 
dbo.Students as S 
INNER JOIN
dbo.StudentEducation as SE ON S.Id = SE.StudentId 
INNER JOIN
dbo.Education as E ON E.Id = SE.EducationId
GROUP BY  SE.EducationId
ORDER BY E.EducationName
GO
