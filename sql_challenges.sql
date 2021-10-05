-------------EASY--------------

---Query all attributes in the CITY table.---
SELECT * FROM CITY;

--- Query attributes the CITY table. The ID for 1661.---
SELECT * FROM CITY
WHERE ID = 1661;

---Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.---
SELECT * FROM CITY
WHERE COUNTRYCODE = 'JPN';

---Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.---
SELECT name FROM CITY
WHERE COUNTRYCODE = "JPN";

--- Query a list of CITY and STATE from the STATION table.----
SELECT CITY, STATE FROM STATION;

---Query a list of CITY names from STATION for cities that have an even ID number. Print the results
-- in any order, but exclude duplicates from the answer.
SELECT DISTINCT CITY
FROM STATION
WHERE (ID % 2) = 0;

--- Find the difference between the total number of CITY entries in the table and the number of 
-- distinct CITY entries in the table.
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION; 

---  Query all columns for all American cities in the CITY table with populations larger than 100000. 
--- The CountryCode for America is USA.
SELECT * FROM CITY
WHERE COUNTRYCODE = 'USA' AND population > 100000;



-------------MEDIUM-----------------------
--- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000;

-- Query the two cities in STATION with the shortest and longest CITY names, as well as 
-- their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, 
-- choose the one that comes first when ordered alphabetically.
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY), CITY LIMIT 1;
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY LIMIT 1;


--- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%';

--- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. 
--- Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U';

--Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) 
-- as both their first and last characters. Your result cannot contain duplicates.
SELECT DISTINCT CITY 
FROM STATION 
WHERE (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%') AND (CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u');

---Query the list of CITY names from STATION that do not start with vowels. 
--- Your result cannot contain duplicates.
Select DISTINCT CITY
FROM STATION
Where CITY NOT LIKE 'A%' AND CITY NOT LIKE 'E%' AND CITY NOT LIKE 'I%' AND CITY NOT LIKE 'O%' AND CITY NOT LIKE 'U%';


--- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE NOT(CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u'); 

---Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
-- Your result cannot contain duplicates.
SELECT DISTINCT CITY 
FROM STATION 
WHERE (CITY NOT LIKE 'a%'
        AND CITY  NOT LIKE 'e%'
        AND CITY NOT LIKE 'i%' 
        AND CITY NOT LIKE 'o%'
        AND CITY NOT LIKE 'u%')
OR (CITY NOT LIKE '%a' AND
    CITY  NOT LIKE '%e' AND
    CITY NOT LIKE '%i' AND 
    CITY NOT LIKE '%o' AND 
    CITY NOT LIKE '%u');

--- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
--- Your result cannot contain duplicates.
SELECT DISTINCT CITY 
FROM STATION 
WHERE LOWER(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u') 
AND LOWER(SUBSTR(CITY,LENGTH(CITY),1)) NOT IN ('a','e','i','o','u'); 


--- Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. 
-- If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

SELECT name
FROM STUDENTS
WHERE Marks > 75
ORDER BY substr(name, -3, 3), id;

-- Write a query that prints a list of employee names (i.e.: the name attribute)
-- from the Employee table in alphabetical order.
SELECT name
FROM Employee 
ORDER BY name;

-- Write a query that prints a list of employee names (i.e.: the name attribute) for 
--- employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.
SELECT name
FROM Employee
WHERE salary > 2000 and months < 10
ORDER BY employee_id asc;


--- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. 
-- Output one of the following statements for each record in the table:

-- Equilateral: It's a triangle with  sides of equal length.
-- Isosceles: It's a triangle with  sides of equal length.
-- Scalene: It's a triangle with  sides of differing lengths.
-- Not A Triangle: The given values of A, B, and C don't form a triangle.

    
SELECT
  CASE 
    WHEN A + B <= C or A + C <= B or B + C <= A THEN 'Not A Triangle'
    WHEN A = B and B = C THEN 'Equilateral'
    WHEN A = B or A = C or B = C THEN 'Isosceles'
    WHEN A <> B and B <> C THEN 'Scalene'
  END tuple
FROM TRIANGLES;