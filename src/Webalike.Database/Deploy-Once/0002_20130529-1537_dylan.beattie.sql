-- <Migration ID="ce29f390-e117-455e-8fc8-3658b90776c2" />

Print 'Clean Membership In Role ''db_owner'''

GO

Print 'Add The Role Members'
EXEC sp_addrolemember @rolename=N'db_owner', @membername =N'webalike_user'

GO
EXEC sp_addrolemember @rolename=N'db_owner', @membername =N'webalike_user'

GO

Print 'Add The Role Members'
EXEC sp_addrolemember @rolename=N'db_datareader', @membername =N'webalike_user'

GO
EXEC sp_addrolemember @rolename=N'db_datareader', @membername =N'webalike_user'

GO

Print 'Add The Role Members'
EXEC sp_addrolemember @rolename=N'db_datawriter', @membername =N'webalike_user'

GO
EXEC sp_addrolemember @rolename=N'db_datawriter', @membername =N'webalike_user'

GO


Print 'Alter Column Synopsis on [dbo].[Article]'
GO
ALTER TABLE [dbo].[Article]
	 ALTER COLUMN [Synopsis] [nvarchar](512) NOT NULL
GO


Print 'Alter Column LinkUrl on [dbo].[Article]'
GO
ALTER TABLE [dbo].[Article]
	 ALTER COLUMN [LinkUrl] [nvarchar](256) NOT NULL
GO


Print 'Alter Column Headline on [dbo].[Article]'
GO
ALTER TABLE [dbo].[Article]
	 ALTER COLUMN [Headline] [nvarchar](128) NOT NULL
GO


