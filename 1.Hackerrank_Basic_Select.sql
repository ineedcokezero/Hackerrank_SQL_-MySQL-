#Revising the Select Query I
SELECT * FROM CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION > 100000

#Revising the Select Query II
SELECT NAME FROM CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000

#Select All
SELECT * FROM CITY

#Select By ID
SELECT * FROM CITY
WHERE ID = 1661

#Japanese Cities' Attributes
SELECT * FROM CITY
WHERE COUNTRYCODE = 'JPN'

#Japanese Cities' Names
SELECT NAME FROM CITY
WHERE COUNTRYCODE = 'JPN'

#Weather Observation Station 1
SELECT CITY, STATE FROM STATION

#Weather Observation Station 3
SELECT DISTINCT CITY FROM STATION 
WHERE ID%2 = 0

#Weather Observation Station 4
SELECT (COUNT(CITY)-COUNT(DISTINCT CITY)) FROM STATION

#Weather Observation Station 5
SELECT CITY,LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY),CITY limit 1;

SELECT CITY,LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY) DESC,CITY limit 1

#Weather Observation Station 6
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE 'a%'
OR CITY LIKE 'e%'
OR CITY LIKE 'i%'
OR CITY LIKE 'o%'
OR CITY LIKE 'u%'

#Weather Observation Station 7
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '%a'
OR CITY LIKE '%e'
OR CITY LIKE '%i'
OR CITY LIKE '%o'
OR CITY LIKE '%u'

#Weather Observation Station 8
select distinct city from station 
where left(city,1) in ('a','e','i','o','u') 
and right(city, 1) in ('a','e','i','o','u')

#Weather Observation Station 9
select distinct city from station 
where left(city,1) not in ('a','e','i','o','u') 

#Weather Observation Station 10
select distinct city from station 
where right(city,1) not in ('a','e','i','o','u') 

#Weather Observation Station 11
select distinct city from station 
where left(city,1) not in ('a','e','i','o','u') 
or right(city, 1) not in ('a','e','i','o','u')

#Weather Observation Station 12
select distinct city from station 
where left(city,1) not in ('a','e','i','o','u') 
and right(city, 1) not in ('a','e','i','o','u')

#Higher Than 75 Marks
SELECT NAME FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME,3),ID ASC

#Employee Names
SELECT name From Employee
ORDER BY name 

#Employee Salaries
SELECT name From Employee
WHERE months < 10 and salary >2000
ORDER BY employee_id
