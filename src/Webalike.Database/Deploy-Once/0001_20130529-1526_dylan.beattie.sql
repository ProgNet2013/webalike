-- <Migration ID="79bcebf8-341e-4c60-83d7-c6f24ab854a9" />

Print 'Create User [webalike_user]'
GO
CREATE USER [webalike_user]
	FOR LOGIN [webalike_user]
	WITH DEFAULT_SCHEMA = [dbo]
GO


SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO


Print 'Create Table [dbo].[Article]'
GO
CREATE TABLE [dbo].[Article] (
		[ArticleId]       [int] IDENTITY(1, 1) NOT NULL,
		[Headline]        [varchar](128) NOT NULL,
		[Synopsis]        [varchar](512) NOT NULL,
		[LinkUrl]         [varchar](256) NOT NULL,
		[PostedAtUtc]     [datetime] NOT NULL
) ON [PRIMARY]
GO


Print 'Add Primary Key PK_Article to [dbo].[Article]'
GO
ALTER TABLE [dbo].[Article]
	ADD
	CONSTRAINT [PK_Article]
	PRIMARY KEY
	CLUSTERED
	([ArticleId])
	ON [PRIMARY]
GO


Print 'Add Default Constraint DF_Article_PostedAtUtc to [dbo].[Article]'
GO
ALTER TABLE [dbo].[Article]
	ADD
	CONSTRAINT [DF_Article_PostedAtUtc]
	DEFAULT (getutcdate()) FOR [PostedAtUtc]
GO


ALTER TABLE [dbo].[Article] SET (LOCK_ESCALATION = TABLE)
GO


Print 'Create Extended Property MS_Description on [dbo].[Article]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Uniquely identifies this article in the Article table.', 'SCHEMA', N'dbo', 'TABLE', N'Article', 'COLUMN', N'ArticleId'
GO


Print 'Create Extended Property MS_Description on [dbo].[Article]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The main headline for this article.', 'SCHEMA', N'dbo', 'TABLE', N'Article', 'COLUMN', N'Headline'
GO


Print 'Create Extended Property MS_Description on [dbo].[Article]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The full absolute URL of the article we''re linking to.', 'SCHEMA', N'dbo', 'TABLE', N'Article', 'COLUMN', N'LinkUrl'
GO


Print 'Create Extended Property MS_Description on [dbo].[Article]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The UTC date/time when this article was posted.', 'SCHEMA', N'dbo', 'TABLE', N'Article', 'COLUMN', N'PostedAtUtc'
GO


Print 'Create Extended Property MS_Description on [dbo].[Article]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A short summary describing what''s in this article', 'SCHEMA', N'dbo', 'TABLE', N'Article', 'COLUMN', N'Synopsis'
GO


