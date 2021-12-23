CREATE TABLE User_Management (
    UserID int NOT NULL,
    UserL_Name varchar(255) NOT NULL,
    UserF_Name varchar(255),
	DateCreated DATE,
	DateUpdated	DATE,
    PRIMARY KEY (UserID)
);

CREATE TABLE Author (
    Author_ID int NOT NULL,
    AuthorL_Name varchar(255) NOT NULL,
    AuthorF_Name varchar(255),
    PRIMARY KEY (Author_ID)
);

CREATE TABLE Publisher (
    Publisher_ID int NOT NULL,
    Publisher varchar(255) NOT NULL,
    PRIMARY KEY (Publisher_ID)
);

CREATE TABLE Book_Management (
    Book_ID int NOT NULL,
    Book_Name varchar(255) NOT NULL,
	ISBN int NOT NULL UNIQUE,
    Author_ID varchar(255),
	Publisher_ID varchar(255),
	Country_CD VARCHAR(5) NOT NULL,
	City_CD VARCHAR(5) NOT NULL,
	Region_ID int NOT NULL,
	UserID int NOT NULL,
	DateUpdated	DATE,
	DateDeleted DATE,
    PRIMARY KEY (Book_ID)
);

CREATE TABLE Country(
	Country_CD VARCHAR(5) NOT NULL,
	County VARCHAR(50) NULL,
	PRIMARY KEY (Country_CD),

);

CREATE TABLE Cities(
	City_CD int NOT NULL,
	City_Name varchar(50) NOT NULL,
	Region_ID int NOT NULL,
	Country_CD VARCHAR(5) NOT NULL,
	GeoLocation geography NULL,
	PRIMARY KEY (City_ID),
);

CREATE TABLE Regions(
	Region_ID int NOT NULL,
	Region varchar(50) NOT NULL,
	Country_CD VARCHAR(5) NOT NULL,
	GeoLocation geography NULL,
	PRIMARY KEY (City_ID),
);
