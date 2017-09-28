
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/28/2017 16:31:16
-- Generated from EDMX file: C:\Users\ADMIN\source\repos\Farfaded\Farfaded\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [aspnet-Farfaded-20170928120213];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetRoles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetRoles];
GO
IF OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetUsers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[FK_tblFlttblBlckOfFlt]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblFlts] DROP CONSTRAINT [FK_tblFlttblBlckOfFlt];
GO
IF OBJECT_ID(N'[dbo].[FK_AspNetUsertblRole]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUsers] DROP CONSTRAINT [FK_AspNetUsertblRole];
GO
IF OBJECT_ID(N'[dbo].[FK_AspNetUsertblFlt]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUsers] DROP CONSTRAINT [FK_AspNetUsertblFlt];
GO
IF OBJECT_ID(N'[dbo].[FK_tblSrvcInFlttblFlt]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblSrvcInFlts] DROP CONSTRAINT [FK_tblSrvcInFlttblFlt];
GO
IF OBJECT_ID(N'[dbo].[FK_tblSrvcInFltHstrtblFlt]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblSrvcInFltHstrs] DROP CONSTRAINT [FK_tblSrvcInFltHstrtblFlt];
GO
IF OBJECT_ID(N'[dbo].[FK_tblSrvcInFltHstrtlbService]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblSrvcInFltHstrs] DROP CONSTRAINT [FK_tblSrvcInFltHstrtlbService];
GO
IF OBJECT_ID(N'[dbo].[FK_tblControltblControlType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblControls] DROP CONSTRAINT [FK_tblControltblControlType];
GO
IF OBJECT_ID(N'[dbo].[FK_tblControltblFlt]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblControls] DROP CONSTRAINT [FK_tblControltblFlt];
GO
IF OBJECT_ID(N'[dbo].[FK_tblPaymenttblFlt]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblPayments] DROP CONSTRAINT [FK_tblPaymenttblFlt];
GO
IF OBJECT_ID(N'[dbo].[FK_tblPaymenttblSrvcInFlt]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblPayments] DROP CONSTRAINT [FK_tblPaymenttblSrvcInFlt];
GO
IF OBJECT_ID(N'[dbo].[FK_tlbTariftblFlt]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tlbTarifs] DROP CONSTRAINT [FK_tlbTariftblFlt];
GO
IF OBJECT_ID(N'[dbo].[FK_tlbTariftlbService]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tlbTarifs] DROP CONSTRAINT [FK_tlbTariftlbService];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTarifHstrtblFlt]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTarifHstrs] DROP CONSTRAINT [FK_tblTarifHstrtblFlt];
GO
IF OBJECT_ID(N'[dbo].[FK_tblTarifHstrtlbService]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tblTarifHstrs] DROP CONSTRAINT [FK_tblTarifHstrtlbService];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[C__MigrationHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[C__MigrationHistory];
GO
IF OBJECT_ID(N'[dbo].[AspNetRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserClaims]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserClaims];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserLogins]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserLogins];
GO
IF OBJECT_ID(N'[dbo].[AspNetUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[tblFlts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblFlts];
GO
IF OBJECT_ID(N'[dbo].[tblBlckOfFlts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblBlckOfFlts];
GO
IF OBJECT_ID(N'[dbo].[tlbServices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tlbServices];
GO
IF OBJECT_ID(N'[dbo].[tblSrvcInFlts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblSrvcInFlts];
GO
IF OBJECT_ID(N'[dbo].[tblSrvcInFltHstrs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblSrvcInFltHstrs];
GO
IF OBJECT_ID(N'[dbo].[tblRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblRoles];
GO
IF OBJECT_ID(N'[dbo].[tlbTarifs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tlbTarifs];
GO
IF OBJECT_ID(N'[dbo].[tblTarifHstrs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblTarifHstrs];
GO
IF OBJECT_ID(N'[dbo].[tblControlTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblControlTypes];
GO
IF OBJECT_ID(N'[dbo].[tblControls]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblControls];
GO
IF OBJECT_ID(N'[dbo].[tblPayments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblPayments];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserRoles];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'C__MigrationHistory'
CREATE TABLE [dbo].[C__MigrationHistory] (
    [MigrationId] nvarchar(150)  NOT NULL,
    [ContextKey] nvarchar(300)  NOT NULL,
    [Model] varbinary(max)  NOT NULL,
    [ProductVersion] nvarchar(32)  NOT NULL
);
GO

-- Creating table 'AspNetRoles'
CREATE TABLE [dbo].[AspNetRoles] (
    [Id] nvarchar(128)  NOT NULL,
    [Name] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'AspNetUserClaims'
CREATE TABLE [dbo].[AspNetUserClaims] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserId] nvarchar(128)  NOT NULL,
    [ClaimType] nvarchar(max)  NULL,
    [ClaimValue] nvarchar(max)  NULL
);
GO

-- Creating table 'AspNetUserLogins'
CREATE TABLE [dbo].[AspNetUserLogins] (
    [LoginProvider] nvarchar(128)  NOT NULL,
    [ProviderKey] nvarchar(128)  NOT NULL,
    [UserId] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'AspNetUsers'
CREATE TABLE [dbo].[AspNetUsers] (
    [Id] nvarchar(128)  NOT NULL,
    [Email] nvarchar(256)  NULL,
    [EmailConfirmed] bit  NOT NULL,
    [PasswordHash] nvarchar(max)  NULL,
    [SecurityStamp] nvarchar(max)  NULL,
    [PhoneNumber] nvarchar(max)  NULL,
    [PhoneNumberConfirmed] bit  NOT NULL,
    [TwoFactorEnabled] bit  NOT NULL,
    [LockoutEndDateUtc] datetime  NULL,
    [LockoutEnabled] bit  NOT NULL,
    [AccessFailedCount] int  NOT NULL,
    [UserName] nvarchar(256)  NOT NULL,
    [IdRole] int  NOT NULL,
    [IdFlt] int  NOT NULL
);
GO

-- Creating table 'tblFlts'
CREATE TABLE [dbo].[tblFlts] (
    [IdFlt] int IDENTITY(1,1) NOT NULL,
    [IdBlckOfFlt] int  NOT NULL,
    [FltName] nvarchar(max)  NOT NULL,
    [AspNetUserId] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'tblBlckOfFlts'
CREATE TABLE [dbo].[tblBlckOfFlts] (
    [IdBlckOfFlts] int IDENTITY(1,1) NOT NULL,
    [BlckOfFltsName] nvarchar(max)  NOT NULL,
    [BlckOfFltsAddress] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tlbServices'
CREATE TABLE [dbo].[tlbServices] (
    [IdSrvc] int IDENTITY(1,1) NOT NULL,
    [ServiceName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tblSrvcInFlts'
CREATE TABLE [dbo].[tblSrvcInFlts] (
    [IdSrvcInFlt] int IDENTITY(1,1) NOT NULL,
    [IdFlt] int  NOT NULL,
    [IdSrvc] int  NOT NULL,
    [Val] int  NOT NULL,
    [tlbServiceIdSrvc] int  NOT NULL
);
GO

-- Creating table 'tblSrvcInFltHstrs'
CREATE TABLE [dbo].[tblSrvcInFltHstrs] (
    [IdSvcInFltHstr] int IDENTITY(1,1) NOT NULL,
    [IdFlt] int  NOT NULL,
    [IdSrvc] int  NOT NULL,
    [Val] int  NOT NULL,
    [Data] datetime  NOT NULL
);
GO

-- Creating table 'tblRoles'
CREATE TABLE [dbo].[tblRoles] (
    [IdRole] int IDENTITY(1,1) NOT NULL,
    [RoleName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tlbTarifs'
CREATE TABLE [dbo].[tlbTarifs] (
    [IdTarif] int IDENTITY(1,1) NOT NULL,
    [IdFlt] int  NOT NULL,
    [IdSrvc] int  NOT NULL,
    [Val] int  NOT NULL
);
GO

-- Creating table 'tblTarifHstrs'
CREATE TABLE [dbo].[tblTarifHstrs] (
    [IdTarifHstr] int IDENTITY(1,1) NOT NULL,
    [IdFlt] int  NOT NULL,
    [IdSrvc] int  NOT NULL,
    [Val] int  NOT NULL,
    [Data] datetime  NOT NULL
);
GO

-- Creating table 'tblControlTypes'
CREATE TABLE [dbo].[tblControlTypes] (
    [IdControlType] int IDENTITY(1,1) NOT NULL,
    [ControlType] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tblControls'
CREATE TABLE [dbo].[tblControls] (
    [IdControl] int IDENTITY(1,1) NOT NULL,
    [ControlName] nvarchar(max)  NOT NULL,
    [IdControlType] int  NOT NULL,
    [IdFlt] int  NOT NULL,
    [ControlValue] int  NOT NULL,
    [ControlValueLog] bit  NOT NULL
);
GO

-- Creating table 'tblPayments'
CREATE TABLE [dbo].[tblPayments] (
    [IdPayment] int IDENTITY(1,1) NOT NULL,
    [IdFlt] int  NOT NULL,
    [IdSrvc] int  NOT NULL,
    [Date] datetime  NOT NULL,
    [Sum] int  NOT NULL
);
GO

-- Creating table 'AspNetUserRoles'
CREATE TABLE [dbo].[AspNetUserRoles] (
    [AspNetRoles_Id] nvarchar(128)  NOT NULL,
    [AspNetUsers_Id] nvarchar(128)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [MigrationId], [ContextKey] in table 'C__MigrationHistory'
ALTER TABLE [dbo].[C__MigrationHistory]
ADD CONSTRAINT [PK_C__MigrationHistory]
    PRIMARY KEY CLUSTERED ([MigrationId], [ContextKey] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetRoles'
ALTER TABLE [dbo].[AspNetRoles]
ADD CONSTRAINT [PK_AspNetRoles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [PK_AspNetUserClaims]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [LoginProvider], [ProviderKey], [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [PK_AspNetUserLogins]
    PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey], [UserId] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [PK_AspNetUsers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdFlt] in table 'tblFlts'
ALTER TABLE [dbo].[tblFlts]
ADD CONSTRAINT [PK_tblFlts]
    PRIMARY KEY CLUSTERED ([IdFlt] ASC);
GO

-- Creating primary key on [IdBlckOfFlts] in table 'tblBlckOfFlts'
ALTER TABLE [dbo].[tblBlckOfFlts]
ADD CONSTRAINT [PK_tblBlckOfFlts]
    PRIMARY KEY CLUSTERED ([IdBlckOfFlts] ASC);
GO

-- Creating primary key on [IdSrvc] in table 'tlbServices'
ALTER TABLE [dbo].[tlbServices]
ADD CONSTRAINT [PK_tlbServices]
    PRIMARY KEY CLUSTERED ([IdSrvc] ASC);
GO

-- Creating primary key on [IdSrvcInFlt] in table 'tblSrvcInFlts'
ALTER TABLE [dbo].[tblSrvcInFlts]
ADD CONSTRAINT [PK_tblSrvcInFlts]
    PRIMARY KEY CLUSTERED ([IdSrvcInFlt] ASC);
GO

-- Creating primary key on [IdSvcInFltHstr] in table 'tblSrvcInFltHstrs'
ALTER TABLE [dbo].[tblSrvcInFltHstrs]
ADD CONSTRAINT [PK_tblSrvcInFltHstrs]
    PRIMARY KEY CLUSTERED ([IdSvcInFltHstr] ASC);
GO

-- Creating primary key on [IdRole] in table 'tblRoles'
ALTER TABLE [dbo].[tblRoles]
ADD CONSTRAINT [PK_tblRoles]
    PRIMARY KEY CLUSTERED ([IdRole] ASC);
GO

-- Creating primary key on [IdTarif] in table 'tlbTarifs'
ALTER TABLE [dbo].[tlbTarifs]
ADD CONSTRAINT [PK_tlbTarifs]
    PRIMARY KEY CLUSTERED ([IdTarif] ASC);
GO

-- Creating primary key on [IdTarifHstr] in table 'tblTarifHstrs'
ALTER TABLE [dbo].[tblTarifHstrs]
ADD CONSTRAINT [PK_tblTarifHstrs]
    PRIMARY KEY CLUSTERED ([IdTarifHstr] ASC);
GO

-- Creating primary key on [IdControlType] in table 'tblControlTypes'
ALTER TABLE [dbo].[tblControlTypes]
ADD CONSTRAINT [PK_tblControlTypes]
    PRIMARY KEY CLUSTERED ([IdControlType] ASC);
GO

-- Creating primary key on [IdControl] in table 'tblControls'
ALTER TABLE [dbo].[tblControls]
ADD CONSTRAINT [PK_tblControls]
    PRIMARY KEY CLUSTERED ([IdControl] ASC);
GO

-- Creating primary key on [IdPayment] in table 'tblPayments'
ALTER TABLE [dbo].[tblPayments]
ADD CONSTRAINT [PK_tblPayments]
    PRIMARY KEY CLUSTERED ([IdPayment] ASC);
GO

-- Creating primary key on [AspNetRoles_Id], [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [PK_AspNetUserRoles]
    PRIMARY KEY CLUSTERED ([AspNetRoles_Id], [AspNetUsers_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UserId] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserClaims]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserLogins]
    ([UserId]);
GO

-- Creating foreign key on [AspNetRoles_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRoles]
    FOREIGN KEY ([AspNetRoles_Id])
    REFERENCES [dbo].[AspNetRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers]
    FOREIGN KEY ([AspNetUsers_Id])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUserRoles_AspNetUsers'
CREATE INDEX [IX_FK_AspNetUserRoles_AspNetUsers]
ON [dbo].[AspNetUserRoles]
    ([AspNetUsers_Id]);
GO

-- Creating foreign key on [IdBlckOfFlt] in table 'tblFlts'
ALTER TABLE [dbo].[tblFlts]
ADD CONSTRAINT [FK_tblFlttblBlckOfFlt]
    FOREIGN KEY ([IdBlckOfFlt])
    REFERENCES [dbo].[tblBlckOfFlts]
        ([IdBlckOfFlts])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblFlttblBlckOfFlt'
CREATE INDEX [IX_FK_tblFlttblBlckOfFlt]
ON [dbo].[tblFlts]
    ([IdBlckOfFlt]);
GO

-- Creating foreign key on [IdRole] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [FK_AspNetUsertblRole]
    FOREIGN KEY ([IdRole])
    REFERENCES [dbo].[tblRoles]
        ([IdRole])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUsertblRole'
CREATE INDEX [IX_FK_AspNetUsertblRole]
ON [dbo].[AspNetUsers]
    ([IdRole]);
GO

-- Creating foreign key on [IdFlt] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [FK_AspNetUsertblFlt]
    FOREIGN KEY ([IdFlt])
    REFERENCES [dbo].[tblFlts]
        ([IdFlt])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUsertblFlt'
CREATE INDEX [IX_FK_AspNetUsertblFlt]
ON [dbo].[AspNetUsers]
    ([IdFlt]);
GO

-- Creating foreign key on [IdFlt] in table 'tblSrvcInFlts'
ALTER TABLE [dbo].[tblSrvcInFlts]
ADD CONSTRAINT [FK_tblSrvcInFlttblFlt]
    FOREIGN KEY ([IdFlt])
    REFERENCES [dbo].[tblFlts]
        ([IdFlt])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblSrvcInFlttblFlt'
CREATE INDEX [IX_FK_tblSrvcInFlttblFlt]
ON [dbo].[tblSrvcInFlts]
    ([IdFlt]);
GO

-- Creating foreign key on [IdFlt] in table 'tblSrvcInFltHstrs'
ALTER TABLE [dbo].[tblSrvcInFltHstrs]
ADD CONSTRAINT [FK_tblSrvcInFltHstrtblFlt]
    FOREIGN KEY ([IdFlt])
    REFERENCES [dbo].[tblFlts]
        ([IdFlt])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblSrvcInFltHstrtblFlt'
CREATE INDEX [IX_FK_tblSrvcInFltHstrtblFlt]
ON [dbo].[tblSrvcInFltHstrs]
    ([IdFlt]);
GO

-- Creating foreign key on [IdSrvc] in table 'tblSrvcInFltHstrs'
ALTER TABLE [dbo].[tblSrvcInFltHstrs]
ADD CONSTRAINT [FK_tblSrvcInFltHstrtlbService]
    FOREIGN KEY ([IdSrvc])
    REFERENCES [dbo].[tlbServices]
        ([IdSrvc])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblSrvcInFltHstrtlbService'
CREATE INDEX [IX_FK_tblSrvcInFltHstrtlbService]
ON [dbo].[tblSrvcInFltHstrs]
    ([IdSrvc]);
GO

-- Creating foreign key on [IdControlType] in table 'tblControls'
ALTER TABLE [dbo].[tblControls]
ADD CONSTRAINT [FK_tblControltblControlType]
    FOREIGN KEY ([IdControlType])
    REFERENCES [dbo].[tblControlTypes]
        ([IdControlType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblControltblControlType'
CREATE INDEX [IX_FK_tblControltblControlType]
ON [dbo].[tblControls]
    ([IdControlType]);
GO

-- Creating foreign key on [IdFlt] in table 'tblControls'
ALTER TABLE [dbo].[tblControls]
ADD CONSTRAINT [FK_tblControltblFlt]
    FOREIGN KEY ([IdFlt])
    REFERENCES [dbo].[tblFlts]
        ([IdFlt])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblControltblFlt'
CREATE INDEX [IX_FK_tblControltblFlt]
ON [dbo].[tblControls]
    ([IdFlt]);
GO

-- Creating foreign key on [IdFlt] in table 'tblPayments'
ALTER TABLE [dbo].[tblPayments]
ADD CONSTRAINT [FK_tblPaymenttblFlt]
    FOREIGN KEY ([IdFlt])
    REFERENCES [dbo].[tblFlts]
        ([IdFlt])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblPaymenttblFlt'
CREATE INDEX [IX_FK_tblPaymenttblFlt]
ON [dbo].[tblPayments]
    ([IdFlt]);
GO

-- Creating foreign key on [IdSrvc] in table 'tblPayments'
ALTER TABLE [dbo].[tblPayments]
ADD CONSTRAINT [FK_tblPaymenttblSrvcInFlt]
    FOREIGN KEY ([IdSrvc])
    REFERENCES [dbo].[tblSrvcInFlts]
        ([IdSrvcInFlt])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblPaymenttblSrvcInFlt'
CREATE INDEX [IX_FK_tblPaymenttblSrvcInFlt]
ON [dbo].[tblPayments]
    ([IdSrvc]);
GO

-- Creating foreign key on [IdFlt] in table 'tlbTarifs'
ALTER TABLE [dbo].[tlbTarifs]
ADD CONSTRAINT [FK_tlbTariftblFlt]
    FOREIGN KEY ([IdFlt])
    REFERENCES [dbo].[tblFlts]
        ([IdFlt])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tlbTariftblFlt'
CREATE INDEX [IX_FK_tlbTariftblFlt]
ON [dbo].[tlbTarifs]
    ([IdFlt]);
GO

-- Creating foreign key on [IdSrvc] in table 'tlbTarifs'
ALTER TABLE [dbo].[tlbTarifs]
ADD CONSTRAINT [FK_tlbTariftlbService]
    FOREIGN KEY ([IdSrvc])
    REFERENCES [dbo].[tlbServices]
        ([IdSrvc])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tlbTariftlbService'
CREATE INDEX [IX_FK_tlbTariftlbService]
ON [dbo].[tlbTarifs]
    ([IdSrvc]);
GO

-- Creating foreign key on [IdFlt] in table 'tblTarifHstrs'
ALTER TABLE [dbo].[tblTarifHstrs]
ADD CONSTRAINT [FK_tblTarifHstrtblFlt]
    FOREIGN KEY ([IdFlt])
    REFERENCES [dbo].[tblFlts]
        ([IdFlt])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTarifHstrtblFlt'
CREATE INDEX [IX_FK_tblTarifHstrtblFlt]
ON [dbo].[tblTarifHstrs]
    ([IdFlt]);
GO

-- Creating foreign key on [IdSrvc] in table 'tblTarifHstrs'
ALTER TABLE [dbo].[tblTarifHstrs]
ADD CONSTRAINT [FK_tblTarifHstrtlbService]
    FOREIGN KEY ([IdSrvc])
    REFERENCES [dbo].[tlbServices]
        ([IdSrvc])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblTarifHstrtlbService'
CREATE INDEX [IX_FK_tblTarifHstrtlbService]
ON [dbo].[tblTarifHstrs]
    ([IdSrvc]);
GO

-- Creating foreign key on [IdSrvc] in table 'tblSrvcInFlts'
ALTER TABLE [dbo].[tblSrvcInFlts]
ADD CONSTRAINT [FK_tblSrvcInFlttlbService]
    FOREIGN KEY ([IdSrvc])
    REFERENCES [dbo].[tlbServices]
        ([IdSrvc])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tblSrvcInFlttlbService'
CREATE INDEX [IX_FK_tblSrvcInFlttlbService]
ON [dbo].[tblSrvcInFlts]
    ([IdSrvc]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------