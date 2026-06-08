CREATE DATABASE SocialMediaDB;
USE SocialMediaDB;

#Users Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(100),
    Email VARCHAR(100),
    JoinDate DATE
);

#Posts Table
CREATE TABLE Posts (
    PostID INT PRIMARY KEY,
    UserID INT,
    Content TEXT,
    PostDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

#Friends Table
CREATE TABLE Friends (
    FriendshipID INT PRIMARY KEY,
    UserID1 INT,
    UserID2 INT,
    FriendshipDate DATE,
    FOREIGN KEY (UserID1) REFERENCES Users(UserID),
    FOREIGN KEY (UserID2) REFERENCES Users(UserID)
);

#Likes Table
CREATE TABLE Likes (
    LikeID INT PRIMARY KEY,
    UserID INT,
    PostID INT,
    LikeDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (PostID) REFERENCES Posts(PostID)
);

#Insert Users Data
INSERT INTO Users VALUES
(1, 'Hima', 'hima@gmail.com', '2026-06-01'),
(2, 'Rahul', 'rahul@gmail.com', '2026-06-02'),
(3, 'Priya', 'priya@gmail.com', '2026-06-03');

#Insert Posts Data
INSERT INTO Posts VALUES
(101, 1, 'Hello World!', '2026-06-05'),
(102, 2, 'Learning SQL', '2026-06-06');

#Insert Friends Data
INSERT INTO Friends VALUES
(1, 1, 2, '2026-06-07'),
(2, 2, 3, '2026-06-08');

#Insert Likes Data
INSERT INTO Likes VALUES
(1, 2, 101, '2026-06-09'),
(2, 3, 102, '2026-06-10');

#View Tables
SELECT * FROM Users;
SELECT * FROM Posts;
SELECT * FROM Friends;
SELECT * FROM Likes;

#Join Query
SELECT Users.UserName, Posts.Content, Posts.PostDate FROM Posts
JOIN Users ON Posts.UserID = Users.UserID;

#Count Likes
SELECT COUNT(*) AS Total_Likes
FROM Likes;