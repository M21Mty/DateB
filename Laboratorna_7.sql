CREATE TABLE News (
    ID int AUTO_INCREMENT,
    Title varchar(255) NOT NULL,
    Body text,
    Votes,
    PRIMARY KEY (ID),
    CONSTRAINT Votes UNIQUE (IP)
);

CREATE TABLE Users (
    PersonID int AUTO_INCREMENT,
    Name varchar(50) NOT NULL,
    IP int,
    UNIQUE (IP)
);

CREATE TABLE Category (
    ID int,
    Category_name varchar(50),
    UNIQUE (Category_name)
);

CREATE TABLE Comments (
    ID int,
    Comments_body varchar(50)
    PersonID,
    FOREIGN KEY (PersonID) REFERENCES Users (PersonID)
);
