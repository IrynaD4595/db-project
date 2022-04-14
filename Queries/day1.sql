-- This is how you write comment in sql
-- single line comment like this
/*
 This is how you write multi
 line comment
 */
-- each query you write known as sql SELECT statement
--* means all, here it means all columns
-- from sometable that exist in the database
-- Just like Java,
-- SQL Statement end in semi-colon ; and its mandatory
SELECT * FROM REGIONS ;
-- If you want to run second statement
--you just need to click the query to focus the cursor and click run

SELECT * FROM COUNTRIES ;

SELECT * FROM LOCATIONS ;

SELECT * FROM DEPARTMENTS ;

SELECT * FROM JOBS ;

SELECT * FROM JOB_HISTORY ;

SELECT * FROM EMPLOYEES ;

--RESTRICTING COLUMNS IN THE RESULT
-- SQL IS SPACE INSENSITIVE
SELECT FIRST_NAME
FROM EMPLOYEES ;

-- More than one columns can be specified separated by comma ,
SELECT FIRST_NAME, LAST_NAME, EMAIL
FROM EMPLOYEES ;

/*
 Only Getting Unique value from the result
 for example, only get unique first name from employees table
 */

 SELECT DISTINCT FIRST_NAME
FROM EMPLOYEES ;

-- Get only unique last name
SELECT DISTINCT LAST_NAME
FROM EMPLOYEES ;

SELECT DISTINCT FIRST_NAME, LAST_NAME
FROM EMPLOYEES ;

--RESTRICTING COLUMNS IN THE RESULT USING WHERE CLAUSE
-- COMPARISON OPERATORS : = , > , >= , < , <= , != , <>
-- LOGICAL OPERATORS : AND OR

-- Display the Employee information for the employee with first_name Ellen
-- IN SQL We use single quote for String
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME = 'Ellen' ; -- Ellen != ellen != ELLEN, values are case sensitive

-- Display the Employee FIRST_NAME, LAST_NAME, SALARY
-- for the employee with SALARY 11000
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY = 11000 ;

-- Display the Employee FIRST_NAME, LAST_NAME, SALARY
-- for the employee with SALARY 4800 and FIRST_NAME David
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE FIRST_NAME = 'David' AND SALARY = 4800;

-- Display the Employee FIRST_NAME, LAST_NAME, SALARY
-- for the employee with SALARY 4800 and FIRST_NAME David
-- LOGICAL OR
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE FIRST_NAME = 'David' OR SALARY = 4800;

-- Display the Employees that makes more than 5000 and less than 12000
-- RANGE CHECKING IS MUCH SIMPLER IN SQL USING
-- BETWEEN . . . . AND
-- IS SAME AS COLUMN_VALUE >= lowerLimit AND COLUMN_VALUE <= upperLimit
-- Above query can be much simpler and more readable as below
SELECT * FROM EMPLOYEES
WHERE SALARY>5000 AND SALARY<12000 ;

-- Display the employees that have JOB_ID of
-- AD_VP
-- AD_ASST
-- FI_ACCOUNT
-- AC_ACCOUNT
SELECT FIRST_NAME, JOB_ID FROM EMPLOYEES
WHERE JOB_ID = 'AD_VP'
   OR JOB_ID = 'AD_ASST'
   OR JOB_ID = 'FI_ACCOUNT'
   OR JOB_ID = 'AC_ACCOUNT' ;

-- USING KEYWORD IN for multiple possible value of same column in condition
SELECT FIRST_NAME, JOB_ID
FROM EMPLOYEES
WHERE JOB_ID IN ('AD_VP','AD_ASST','FI_ACCOUNT', 'AC_ACCOUNT') ;

-- HOW TO SAY NOT IN SQL
-- for equality check != <>
---FIND OUT ALL REGIONS EXPECT THE REGION WITH REGION_ID OF 1
SELECT * FROM REGIONS
WHERE REGION_ID <> 1 ;
-- WHERE REGION_ID != 1 ;

SELECT * FROM REGIONS
WHERE REGIONS.REGION_NAME <> 'Americas' ;

-- for BETWEEN AND --> NOT BETWEEN .. AND

-- Display the employees that DOES NOT make
-- more than 5000 and less than 12000
SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY NOT BETWEEN 5000 AND 12000 ;

-- for IN --> NOT IN
-- Display the employees that have JOB_ID
-- IS NOT ONE OF THESE AD_VP, AD_ASST, FI_ACCOUNT, AC_ACCOUNT
SELECT FIRST_NAME, JOB_ID
FROM EMPLOYEES
WHERE JOB_ID NOT IN ('AD_VP', 'AD_ASST', 'FI_ACCOUNT', 'AC_ACCOUNT') ;

-- HOW TO USE NULL IN CONDITION?
-- For EXAMPLE: FIND OUT ALL DEPARTMENTS THAT DOES NOT HAVE MANAGER_ID
SELECT * FROM DEPARTMENTS
WHERE MANAGER_ID IS NULL ; --16 ROWS

-- FOR EXAMPLE: FIND OUT ALL DEPARTMENTS THAT HAVE MANAGER_ID
SELECT * FROM DEPARTMENTS
WHERE MANAGER_ID IS NOT NULL; --11 ROWS

-- SORTING THE RESULT IN ASCENDING (LOW TO HIGH)
-- OR DESCENDING ORDER (HIGH TO LOW)
-- ORDER BY Clause can be used to order the result of your query
-- It use either column name or column index
-- It must be  the last part of the statement
-- ASC for (LOW TO HIGH) by default,
-- DESC (HIGH TO LOW)

-- Display Employee FIRST_NAME, LAST_NAME, SALARY
-- try to sort by below criteria separatly
-- FIRST_NAME ASC
-- Salary DESC
-- LAST_NAME DESC
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
--ORDER BY FIRST_NAME ASC;
ORDER BY SALARY DESC ;
--ORDER BY LAST_NAME DESC ;
-- ORDER BY 1 DESC ; -- THIS MEANS SORT THE RESULT BY FIRST COLUMN
-- SQL INDEX START WITH 1 NOT 0 !!!!!!!!!!!!!


-- WHAT ABOUT THE PARTIAL SEARCH
-- WE USE LIKE AND % (WILD CARD)
--  % can represent 0 or more character of any kind
--  _ can represent exactly one character of any kind

-- DISPLAY ALL THE FIRST_NAME THAT START WITH LETTER A IN EMPLOYEES TABLES
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'A%' ; -- 10 ROWS

-- DISPLAY ALL THE FIRST_NAME THAT END WITH LETTER a IN EMPLOYEES TABLES
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%a'  ;  -- 16 ROWS


-- DISPLAY ALL THE FIRST_NAME THAT END WITH LETTER a IN EMPLOYEES TABLES
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%a%'  ;  -- 16 ROWS












