CREATE TABLE [dbo].[Article]
(
[ArticleId] [int] NOT NULL IDENTITY(1, 1),
[Headline] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Synopsis] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LinkUrl] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PostedAtUtc] [datetime] NOT NULL CONSTRAINT [DF_Article_PostedAtUtc] DEFAULT -- Text was encrypted
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Article] ADD CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED  ([ArticleId]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Uniquely identifies this article in the Article table.', 'SCHEMA', N'dbo', 'TABLE', N'Article', 'COLUMN', N'ArticleId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The main headline for this article.', 'SCHEMA', N'dbo', 'TABLE', N'Article', 'COLUMN', N'Headline'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The full absolute URL of the article we''re linking to.', 'SCHEMA', N'dbo', 'TABLE', N'Article', 'COLUMN', N'LinkUrl'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The UTC date/time when this article was posted.', 'SCHEMA', N'dbo', 'TABLE', N'Article', 'COLUMN', N'PostedAtUtc'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A short summary describing what''s in this article', 'SCHEMA', N'dbo', 'TABLE', N'Article', 'COLUMN', N'Synopsis'
GO
