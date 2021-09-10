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