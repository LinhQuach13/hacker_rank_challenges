--- Query a count of the number of cities in CITY having a Population larger than 100,000.
SELECT COUNT(ID) 
FROM CITY 
WHERE POPULATION > 100000;

--- Query the total population of all cities in CITY where District is California.
SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';


--- Query the average population of all cities in CITY where District is California.
SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';

--- Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT ROUND(AVG(POPULATION), 0)
FROM CITY;

--- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';

--- Query the difference between the maximum and minimum populations in CITY.
SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;


-- Generate the following two result sets:

-- Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
-- Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

-- There are a total of [occupation_count] [occupation]s.
-- where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

-- Note: There will be at least two entries in the table for each type of occupation.
SELECT CONCAT(Name, '(', SUBSTR(Occupation,1,1),')') 
FROM OCCUPATIONS 
ORDER BY Name;

SELECT CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.') 
FROM OCCUPATIONS 
GROUP BY Occupation 
ORDER BY COUNT(Occupation), Occupation;

-- Task
-- Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, 
-- but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help 
-- finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

-- Write a query calculating the amount of error (i.e.: actual - miscalculated average monthly salaries), 
-- and round it up to the next integer.
SELECT 
    ROUND(AVG(SALARY)) - ROUND(AVG(REPLACE(SALARY, '0','')))
FROM EMPLOYEES;



-- Query the following two values from the STATION table:

-- The sum of all values in LAT_N rounded to a scale of  2 decimal places.
-- The sum of all values in LONG_W rounded to a scale of 2 decimal places.
SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2) 
FROM STATION;