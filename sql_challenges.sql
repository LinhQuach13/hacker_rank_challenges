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