# Social Media Graph Database

Intern ID: CITS2434

## Project Description
This project is a Social Media Graph Database Management System using SQL. It helps manage users, posts, friendships, and likes in a social media platform.

## Features
- User Management
- Post Creation & Tracking
- Friendship Connections
- Like Tracking
- Social Media Data Management

## Tables Used
1. Users
2. Posts
3. Friends
4. Likes

## SQL Operations Performed
- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- SELECT Queries
- JOIN Queries
- COUNT Function

## Sample Query
```sql
SELECT Users.UserName, Posts.Content, Posts.PostDate
FROM Posts
JOIN Users
ON Posts.UserID = Users.UserID;
