/**
-- LIST 1  : APPLE , EGG , MILK , PINEAPPLE, BREAD
-- LIST 2  : MILK , BREAD , OIL , WALNUT
-- UNION ALL -->> APPLE , EGG , MILK , PINEAPPLE, BREAD , MILK , BREAD , OIL , WALNUT
-- UNION     -->> APPLE , BREAD , EGG, MILK, PINEAPPLE , OIL , WALNUT
-- LIST 1  MINUS LIST 2
 -- LIST 2 HERE IS NO-NO LIST
  -- MINUS   --> APPLE , EGG , PINEAPPLE
-- LIST2 MINUS LIST 1
  -- LIST 1 HERE IS NO-NO LIST
  -- MINUS -->>   OIL , WALNUT
 --- INTERSECT
    -- LIST 1 INTERSECT LIST 2
        --->> ONLY COMMON PART OF BOTH LIST  -->> MILK , BREAD
  In order for SET Operators to work ,
Two tables or result of two query being used MUST HAVE
- same exact column count
- same exact column data type
- Ideally  same exact column name (if not first table column name will be used)
Unlike JOIN which require primary key and foreign key relationship,
SET Operator must have above pre-requisite or it will not work at all !
JOIN and SET Operators are two completely different concepts.
CREATE TABLE FIRST_TABLE AS (
    SELECT FIRST_NAME , SALARY FROM EMPLOYEES
    WHERE SALARY BETWEEN 10500 AND 13000
) ORDER BY 2 ;
CREATE TABLE SECOND_TABLE AS (
    SELECT FIRST_NAME , SALARY FROM EMPLOYEES
    WHERE SALARY BETWEEN 12000 AND 24000
) ORDER BY 2 ;
COMMIT ;
  */