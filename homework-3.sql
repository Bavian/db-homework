-- 1
SELECT DisplayName FROM Users;

-- 2
SELECT TOP 100 Title, Body, OwnerDisplayName
    FROM Posts
    WHERE PostTypeId = 1
    ORDER BY CreationDate DESC;

-- 3
SELECT COUNT(*) FROM Users;
SELECT COUNT(*) FROM Posts
    WHERE PostTypeId = 1;
SELECT COUNT(*) FROM Posts
    WHERE PostTypeId = 2;
SELECT COUNT(*) FROM Tags;

-- 4
SELECT DisplayName, Location FROM Users
    WHERE YEAR(CreationDate) = 2015;

-- 5
SELECT COUNT(*) FROM Users
    WHERE YEAR(CreationDate) = 2015;

-- 6
SELECT COUNT(*) FROM Users
    WHERE Location LIKE '%Germany%';

-- 7
SELECT (Location), COUNT(Id) FROM Users
    GROUP BY Location;

-- 8
SELECT TOP 10 Users.DisplayName, COUNT(Posts.Id)
    FROM Users
        LEFT JOIN Posts
        ON Posts.OwnerDisplayName = Users.DisplayName
        AND Posts.PostTypeId = 1
    GROUP BY Users.DisplayName, Users.Reputation
    ORDER BY Users.Reputation DESC;
