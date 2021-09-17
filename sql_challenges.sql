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


--- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%';