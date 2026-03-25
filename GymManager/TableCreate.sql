USE GymManager;
GO
-- Account_Table
CREATE TABLE ACCOUNT (
    Account_ID INT PRIMARY KEY IDENTITY(1,1),
    Username VARCHAR(50) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
);

-- Membership_Type Table
CREATE TABLE MEMBERSHIP_TYPE (
    Type_ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX),
    Membership_Fee MONEY
);

-- Work_Out_Table
CREATE TABLE WORK_OUT (
    Work_Out_ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX)
);

-- Member_Table
CREATE TABLE MEMBER (
    Membership_ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Gender NVARCHAR(10),
    Date_Of_Birth DATE,
    Email VARCHAR(100),
    Phone_Number VARCHAR(15),
    Address NVARCHAR(255),
    Register_Date DATE DEFAULT GETDATE(),
    Account_ID INT,
    Type_ID INT, 
    CONSTRAINT FK_Member_Acount FOREIGN KEY (Account_ID) REFERENCES ACCOUNT(Account_ID),
    CONSTRAINT FK_Member_Type FOREIGN KEY (Type_ID) REFERENCES MEMBERSHIP_TYPE(Type_ID)
);

-- Trainer_ID
CREATE TABLE TRAINER (
    Trainer_ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Gender NVARCHAR(10),
    Phone_Number VARCHAR(15),
    Email VARCHAR(100),
    Account_ID INT,
    CONSTRAINT FK_Trainer_Acount FOREIGN KEY (Account_ID) REFERENCES ACCOUNT(Account_ID)
);

-- Work_Out_Plan_Table
CREATE TABLE WORK_OUT_PLAN (
    Plan_ID INT PRIMARY KEY IDENTITY(1,1),
    Work_Out_Date DATETIME,
    Trainer_ID INT,
    Membership_ID INT,
    Work_Out_ID INT,
    CONSTRAINT FK_Plan_Member FOREIGN KEY (Membership_ID) REFERENCES MEMBER(Membership_ID),
    CONSTRAINT FK_Plan_Trainer FOREIGN KEY (Trainer_ID) REFERENCES TRAINER(Trainer_ID),
    CONSTRAINT FK_Plan_Work_Out FOREIGN KEY (Work_Out_ID) REFERENCES WORK_OUT(Work_Out_ID)
);

-- Payment_Table
CREATE TABLE PAYMENT (
    Payment_ID INT PRIMARY KEY IDENTITY(1,1),
    Amount MONEY NOT NULL,
    Date DATETIME DEFAULT GETDATE(),
    Account_ID INT,
    CONSTRAINT FK_Payment_Account FOREIGN KEY (Account_ID) REFERENCES ACCOUNT(Account_ID)
);
