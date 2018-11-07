USE [master]
GO

/****** Object:  Database [ATRSdBASE_200]    Script Date: 11/6/2018 10:58:23 PM ******/
DROP DATABASE [ATRSdBASE_200]
GO

/****** Object:  Database [ATRSdBASE_200]    Script Date: 11/6/2018 10:58:23 PM ******/
CREATE DATABASE [ATRSdBASE_200]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ATRSdBASE_200', FILENAME = N'C:\Users\public\ATRSdBASE_200.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ATRSdBASE_200_log', FILENAME = N'C:\Users\public\ATRSdBASE_200_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [ATRSdBASE_200] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ATRSdBASE_200].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ATRSdBASE_200] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET ARITHABORT OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ATRSdBASE_200] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ATRSdBASE_200] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ATRSdBASE_200] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ATRSdBASE_200] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [ATRSdBASE_200] SET  MULTI_USER 
GO

ALTER DATABASE [ATRSdBASE_200] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ATRSdBASE_200] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ATRSdBASE_200] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ATRSdBASE_200] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [ATRSdBASE_200] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [ATRSdBASE_200] SET QUERY_STORE = OFF
GO

ALTER DATABASE [ATRSdBASE_200] SET  READ_WRITE 
GO





USE [ATRSdBASE_200]
GO

/****** Object:  Table [dbo].[STUDENT]    Script Date: 11/6/2018 10:58:59 PM ******/
DROP TABLE [dbo].[STUDENT]
GO

/****** Object:  Table [dbo].[GRADSCHOOL]    Script Date: 11/6/2018 10:58:59 PM ******/
DROP TABLE [dbo].[GRADSCHOOL]
GO

/****** Object:  Table [dbo].[FEEDBACK]    Script Date: 11/6/2018 10:58:59 PM ******/
DROP TABLE [dbo].[FEEDBACK]
GO

/****** Object:  Table [dbo].[FACULTY]    Script Date: 11/6/2018 10:58:59 PM ******/
DROP TABLE [dbo].[FACULTY]
GO

/****** Object:  Table [dbo].[EMPLOYERS]    Script Date: 11/6/2018 10:58:59 PM ******/
DROP TABLE [dbo].[EMPLOYERS]
GO

/****** Object:  Table [dbo].[ALUMNI]    Script Date: 11/6/2018 10:58:59 PM ******/
DROP TABLE [dbo].[ALUMNI]
GO

/****** Object:  Table [dbo].[ALUMNI]    Script Date: 11/6/2018 10:58:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ALUMNI](
	[ALUMNINUM] [int] IDENTITY(1,1) NOT NULL,
	[LAST NAME] [nvarchar](25) NOT NULL,
	[FIRST NAME] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_ALUMNI] PRIMARY KEY CLUSTERED 
(
	[ALUMNINUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[EMPLOYERS]    Script Date: 11/6/2018 10:58:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EMPLOYERS](
	[EMPLOYERID] [int] IDENTITY(1,1) NOT NULL,
	[EMPLOYERNAME] [nvarchar](50) NOT NULL,
	[INDUSTRY] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EMPLOYERS] PRIMARY KEY CLUSTERED 
(
	[EMPLOYERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[FACULTY]    Script Date: 11/6/2018 10:58:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FACULTY](
	[FACULTYID] [int] IDENTITY(1,1) NOT NULL,
	[LAST NAME] [nvarchar](50) NOT NULL,
	[FIRST NAME] [nvarchar](50) NOT NULL,
	[POSITION TITTLE] [nvarchar](50) NOT NULL,
	[PASSWORD] [binary](64) NOT NULL,
	[SITE ADMIN] [char](1) NOT NULL,
 CONSTRAINT [PK_CIS FACULTY] PRIMARY KEY CLUSTERED 
(
	[FACULTYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[FEEDBACK]    Script Date: 11/6/2018 10:58:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FEEDBACK](
	[ENTRYNUM] [int] IDENTITY(1,1) NOT NULL,
	[EMPLOYERID] [int] NULL,
	[ALUMNINUM] [int] NULL,
	[GRADID] [int] NULL,
	[FACULTYID] [int] NULL,
	[RESPONSES] [nvarchar](max) NOT NULL,
	[COMMENTS] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_FEEDBACK] PRIMARY KEY CLUSTERED 
(
	[ENTRYNUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[GRADSCHOOL]    Script Date: 11/6/2018 10:58:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GRADSCHOOL](
	[GRADID] [int] IDENTITY(1,1) NOT NULL,
	[LAST NAME] [nvarchar](50) NOT NULL,
	[FIRST NAME] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_GRAD SCHOOL] PRIMARY KEY CLUSTERED 
(
	[GRADID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[STUDENT]    Script Date: 11/6/2018 10:58:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STUDENT](
	[STUDENTID] [int] IDENTITY(1,1) NOT NULL,
	[LAST NAME] [nvarchar](50) NOT NULL,
	[FIRST NAME] [nvarchar](50) NOT NULL,
	[ADDRESS] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_CIS STUDENT] PRIMARY KEY CLUSTERED 
(
	[STUDENTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO




USE [ATRSdBASE_200]
GO

/****** Object:  StoredProcedure [dbo].[STUDviewAll]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[STUDviewAll]
GO

/****** Object:  StoredProcedure [dbo].[STUDSaveOrUpdate]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[STUDSaveOrUpdate]
GO

/****** Object:  StoredProcedure [dbo].[STUDedit]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[STUDedit]
GO

/****** Object:  StoredProcedure [dbo].[GRADviewAll]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[GRADviewAll]
GO

/****** Object:  StoredProcedure [dbo].[GRADSaveOrUpdate]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[GRADSaveOrUpdate]
GO

/****** Object:  StoredProcedure [dbo].[GRADedit]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[GRADedit]
GO

/****** Object:  StoredProcedure [dbo].[FDBKviewAll]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[FDBKviewAll]
GO

/****** Object:  StoredProcedure [dbo].[FDBKSaveOrUpdate]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[FDBKSaveOrUpdate]
GO

/****** Object:  StoredProcedure [dbo].[FDBKedit]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[FDBKedit]
GO

/****** Object:  StoredProcedure [dbo].[FCLTviewAll]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[FCLTviewAll]
GO

/****** Object:  StoredProcedure [dbo].[FCLTSaveOrUpdate]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[FCLTSaveOrUpdate]
GO

/****** Object:  StoredProcedure [dbo].[FCLTedit]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[FCLTedit]
GO

/****** Object:  StoredProcedure [dbo].[EMPLviewAll]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[EMPLviewAll]
GO

/****** Object:  StoredProcedure [dbo].[EMPLSaveOrUpdate]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[EMPLSaveOrUpdate]
GO

/****** Object:  StoredProcedure [dbo].[EMPLedit]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[EMPLedit]
GO

/****** Object:  StoredProcedure [dbo].[DeleteByStudentID]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[DeleteByStudentID]
GO

/****** Object:  StoredProcedure [dbo].[DeleteByGradID]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[DeleteByGradID]
GO

/****** Object:  StoredProcedure [dbo].[DeleteByFacultyID]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[DeleteByFacultyID]
GO

/****** Object:  StoredProcedure [dbo].[DeleteByEntryNum]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[DeleteByEntryNum]
GO

/****** Object:  StoredProcedure [dbo].[DeleteByEmployerID]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[DeleteByEmployerID]
GO

/****** Object:  StoredProcedure [dbo].[DeleteByAlumniNum]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[DeleteByAlumniNum]
GO

/****** Object:  StoredProcedure [dbo].[ALMNviewAll]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[ALMNviewAll]
GO

/****** Object:  StoredProcedure [dbo].[ALMNSaveOrUpdate]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[ALMNSaveOrUpdate]
GO

/****** Object:  StoredProcedure [dbo].[ALMNedit]    Script Date: 11/6/2018 10:59:54 PM ******/
DROP PROCEDURE [dbo].[ALMNedit]
GO

/****** Object:  StoredProcedure [dbo].[ALMNedit]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[ALMNedit]
@AlumniNum int
AS
	BEGIN
	SELECT * FROM ALUMNI
	WHERE [ALUMNINUM]= @AlumniNum
	END
GO

/****** Object:  StoredProcedure [dbo].[ALMNSaveOrUpdate]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[ALMNSaveOrUpdate]
@AlumniNum int,
@LastName nvarchar(25),
@FirstName nvarchar(25)
AS
BEGIN
IF(@AlumniNum=0)
	BEGIN
	INSERT INTO ALUMNI([LAST NAME],[FIRST NAME])
	VALUES (@LastName,@FirstName)
	END
ELSE
	BEGIN
	UPDATE ALUMNI
	SET		
		
		[LAST NAME]=@LastName,
		[FIRST NAME]=@FirstName

	WHERE ALUMNINUM=@AlumniNum
	END

END
GO

/****** Object:  StoredProcedure [dbo].[ALMNviewAll]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[ALMNviewAll]
AS
SELECT * FROM ALUMNI
GO

/****** Object:  StoredProcedure [dbo].[DeleteByAlumniNum]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[DeleteByAlumniNum]
@AlumniNum int
AS
	BEGIN
	DELETE FROM ALUMNI
	WHERE ALUMNINUM= @AlumniNum
	END

GO

/****** Object:  StoredProcedure [dbo].[DeleteByEmployerID]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[DeleteByEmployerID]
@EmployerID int
AS
	BEGIN
	DELETE FROM EMPLOYERS
	WHERE EMPLOYERID = @EmployerID
	END

GO

/****** Object:  StoredProcedure [dbo].[DeleteByEntryNum]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[DeleteByEntryNum]
@EntryNum int
AS
	BEGIN
	DELETE FROM FEEDBACK
	WHERE ENTRYNUM= @EntryNum
	END
GO

/****** Object:  StoredProcedure [dbo].[DeleteByFacultyID]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[DeleteByFacultyID]
@FacultyID int
AS
	BEGIN
	DELETE FROM FACULTY
	WHERE FACULTYID= @FacultyID 
	END
GO

/****** Object:  StoredProcedure [dbo].[DeleteByGradID]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[DeleteByGradID]
@GradID int
AS
	BEGIN
	DELETE FROM GRADSCHOOL
	WHERE GRADID= @GradID
	END
GO

/****** Object:  StoredProcedure [dbo].[DeleteByStudentID]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[DeleteByStudentID]
@StudentID int
AS
	BEGIN
	DELETE FROM STUDENT
	WHERE STUDENTID= @StudentID
	END

GO

/****** Object:  StoredProcedure [dbo].[EMPLedit]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create PROC [dbo].[EMPLedit]
@EmployerID int
AS
	BEGIN
	SELECT * FROM EMPLOYERS
	WHERE EMPLOYERID = @EmployerID
	END
GO

/****** Object:  StoredProcedure [dbo].[EMPLSaveOrUpdate]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create PROC [dbo].[EMPLSaveOrUpdate]
@EmployerID int,
@EmployerName nvarchar(50),
@Industry nvarchar(50)
AS
BEGIN
IF(@EmployerID=0)
	BEGIN
	INSERT INTO EMPLOYERS (EMPLOYERNAME,INDUSTRY)
	VALUES (@EmployerName,@Industry)
	END
ELSE
	BEGIN
	UPDATE EMPLOYERS
	SET		
		
		EMPLOYERNAME=@EmployerName,
		INDUSTRY=@Industry

	WHERE EMPLOYERID=@EmployerID
	END
END
GO

/****** Object:  StoredProcedure [dbo].[EMPLviewAll]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[EMPLviewAll]
AS
SELECT * FROM EMPLOYERS
GO

/****** Object:  StoredProcedure [dbo].[FCLTedit]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[FCLTedit]
@FacultyID int
AS
	BEGIN
	SELECT * FROM FACULTY
	WHERE FACULTYID= @FacultyID
	END
GO

/****** Object:  StoredProcedure [dbo].[FCLTSaveOrUpdate]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[FCLTSaveOrUpdate]
@FacultyID int,
@LastName nvarchar(50),
@FirstName nvarchar(50),
@PosTittle nvarchar(50),
@Password nvarchar(20),
@Siteadmin char(1)
AS
BEGIN
IF(@FacultyID=0)
	BEGIN
	INSERT INTO FACULTY([LAST NAME],[FIRST NAME],[POSITION TITTLE],[PASSWORD],[SITE ADMIN])
	VALUES (@LastName,@FirstName,@PosTittle,HASHBYTES('SHA2_512', @Password),@Siteadmin)
	END
ELSE
	BEGIN
	UPDATE FACULTY
	SET		
		
		[LAST NAME]=@LastName,
		[FIRST NAME]=@FirstName,
		[POSITION TITTLE]=@PosTittle,
		[PASSWORD]=HASHBYTES('SHA2_512', @Password),
		[SITE ADMIN]=@Siteadmin

	WHERE FACULTYID=@FacultyID
	END
END
GO

/****** Object:  StoredProcedure [dbo].[FCLTviewAll]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[FCLTviewAll]
AS
SELECT * FROM FACULTY
GO

/****** Object:  StoredProcedure [dbo].[FDBKedit]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[FDBKedit]
@EntryNum int
AS
	BEGIN
	SELECT * FROM FEEDBACK
	WHERE ENTRYNUM= @EntryNum
	END
GO

/****** Object:  StoredProcedure [dbo].[FDBKSaveOrUpdate]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[FDBKSaveOrUpdate]
@EntryNum int,
@EmployerID int,
@AlumniNum int,
@GradID int,
@FacultyID int,
@Responses nvarchar(MAX),
@Comments nvarchar(MAX)
AS
BEGIN
IF(@EntryNum=0)
	BEGIN
	INSERT INTO FEEDBACK(EMPLOYERID,ALUMNINUM,GRADID,FACULTYID,RESPONSES,COMMENTS)
	VALUES (@EmployerID,@AlumniNum,@GradID,@FacultyID,@Responses,@Comments)
	END
ELSE
	BEGIN
	UPDATE FEEDBACK
	SET		
		
		EMPLOYERID=@EmployerID,
		ALUMNINUM=@AlumniNum,
		GRADID=@GradID,
		FACULTYID=@FacultyID,
		RESPONSES=@Responses,
		COMMENTS=@Comments

	WHERE ENTRYNUM=@EntryNum
	END
END

GO

/****** Object:  StoredProcedure [dbo].[FDBKviewAll]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[FDBKviewAll]
AS
	BEGIN
	SELECT * FROM FEEDBACK
	END
GO

/****** Object:  StoredProcedure [dbo].[GRADedit]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[GRADedit]
@GradID int
AS
	BEGIN
	SELECT * FROM GRADSCHOOL
	WHERE GRADID= @GradID
	END
GO

/****** Object:  StoredProcedure [dbo].[GRADSaveOrUpdate]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[GRADSaveOrUpdate]
@GradID int,
@LastName nvarchar(50),
@FirstName nvarchar(50)

AS
BEGIN
IF(@GradID=0)
	BEGIN
	INSERT INTO GRADSCHOOL([LAST NAME],[FIRST NAME])
	VALUES (@LastName,@FirstName)
	END
ELSE
	BEGIN
	UPDATE GRADSCHOOL
	SET		
		
		[LAST NAME]=@LastName,
		[FIRST NAME]=@FirstName

	WHERE GRADID=@GradID
	END
END
GO

/****** Object:  StoredProcedure [dbo].[GRADviewAll]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[GRADviewAll]
AS
SELECT * FROM GRADSCHOOL
GO

/****** Object:  StoredProcedure [dbo].[STUDedit]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[STUDedit]
@StudentID int
AS
	BEGIN
	SELECT * FROM STUDENT
	WHERE STUDENTID= @StudentID
	END
GO

/****** Object:  StoredProcedure [dbo].[STUDSaveOrUpdate]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[STUDSaveOrUpdate]
@StudentID int,
@LastName nvarchar(50),
@FirstName nvarchar(50),
@Address nvarchar(200)

AS
BEGIN
IF(@StudentID=0)
	BEGIN
	INSERT INTO STUDENT([LAST NAME],[FIRST NAME],ADDRESS)
	VALUES (@LastName,@FirstName,@Address)
	END
ELSE
	BEGIN
	UPDATE STUDENT
	SET		
		
		[LAST NAME]=@LastName,
		[FIRST NAME]=@FirstName,
		ADDRESS=@Address

	WHERE STUDENTID=@StudentID
	END
END
GO

/****** Object:  StoredProcedure [dbo].[STUDviewAll]    Script Date: 11/6/2018 10:59:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[STUDviewAll]
AS
SELECT * FROM STUDENT
GO


