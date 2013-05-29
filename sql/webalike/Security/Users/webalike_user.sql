IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'webalike_user')
CREATE LOGIN [webalike_user] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [webalike_user] FOR LOGIN [webalike_user]
GO
