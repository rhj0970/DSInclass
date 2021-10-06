CREATE DATABASE DS;
USE DS;

DROP TABLE IF EXISTS Referee;
DROP TABLE IF EXISTS Report;

CREATE TABLE Referee(Member_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
                    First_Name VARCHAR(25) NOT NULL, Last_Name VARCHAR(25) NOT NULL,
                     Age INT, Referee_ Skill INT, Referee_Status TEXT);

CREATE TABLE Game(Game_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, Game_Level INT);

CREATE TABLE Report(Report_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, Game_ID INT, Game_Date DATE, Assigned_Referee TEXT);


INSERT INTO Referee VALUES
     (1001,'Kevin','Kim', 23, 70,'Unassigned'),
     (1002,'Herbert', 'Miles', 33, 80, 'Unassigned'),
     (1003,'Morris', 'Reed', 37, 100, 'Unassigned'),
     (1004, 'Paula', 'Edwards', 28, 70, 'Unassigned'),
     (1005, 'Tom', 'Gregory', 40, 80, 'Unassigned');

INSERT INTO Game VALUES
    (101, 1),
    (102, 2),
    (103, 3),
    (104, 4);

INSERT INTO Report VALUES
     (1, 101, '2021-11-01', 'Kevin Kim'),
     (2, 102, '2021-11-10', 'Herbert Miles'),
     (3, 103, '2021-11-13', 'Morris Read'),
     (4, 104, '2021-12-11', 'Tom Gregory');     
