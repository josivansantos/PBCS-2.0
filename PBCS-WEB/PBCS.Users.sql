CREATE TABLE [PBCS].[Users] (
    [UserId]       INT          IDENTITY (1, 1) NOT NULL,
    [UserName]     VARCHAR (50) NOT NULL,
    [UserPassword] VARCHAR (50) NOT NULL,
    [UserEmail]    VARCHAR (50) NOT NULL primary key ,
    [UserId]   VARCHAR(50)          NOT NULL,
    [UserAddres] VARCHAR(50) NULL, 
    [UserZip] VARCHAR(50) NULL, 
    [UserState] VARCHAR(50) NULL, 
    [UserCountry] VARCHAR(50) NULL, 
    CONSTRAINT [PKUserId] PRIMARY KEY CLUSTERED ([UserId] ASC),
    CONSTRAINT [FKTypeUserId] FOREIGN KEY ([UserId]) REFERENCES [PBCS].[UserType] ([UserTypeId]) ON DELETE CASCADE ON UPDATE CASCADE
);

