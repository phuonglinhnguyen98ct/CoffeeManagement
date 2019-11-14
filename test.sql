USE CoffeeManagement
GO

USE master
GO

sp_who
KILL 61

SELECT * FROM dbo.account

INSERT INTO dbo.account (username, password, staffId) VALUES (N'cashier1', N'cashier123', 3)
GO

------------------------------------------CREATE STORED PROCEDURE------------------------------------------
CREATE PROC spCreateAccount
@username nvarchar(100), @password nvarchar(100), @staffId int
AS
INSERT INTO dbo.account (username, password, staffId) VALUES (@username, @password, @staffId)
GO
-- EXEC spCreateAccount 'cashier2', 'cashier123', 3


CREATE PROC spUpdateAccount
@username nvarchar(100), @password nvarchar(100), @staffId int
AS
UPDATE dbo.account SET password = @password, staffId = @staffId WHERE username = @username
GO

SELECT * FROM dbo.staff
GO
INSERT dbo.staff(name, sex, birthday, address, phone, roleId) VALUES( N'Nguyễn Văn Ích', N'Nam', '1998-09-19', N'Cần Thơ', N'09328491831', 1)
GO

UPDATE dbo.staff SET name = N'Nguyễn Văn Ích Niu', sex = N'Nam', birthday = '1998-09-19', address = N'Cần Thơ', phone = N'09328491831', roleId = 3
GO

CREATE PROC spCreateStaff
@username nvarchar(100), @password nvarchar(100), @staffId int
AS
INSERT dbo.staff
        ( name ,
          sex ,
          birthday ,
          address ,
          phone ,
          roleId
        )
VALUES  ( N'' , -- name - nvarchar(100)
          N'' , -- sex - nvarchar(10)
          GETDATE() , -- birthday - date
          N'' , -- address - nvarchar(100)
          N'' , -- phone - nvarchar(20)
          0  -- roleId - int
        )
GO


