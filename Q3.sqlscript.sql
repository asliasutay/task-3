REM   Script: Q3
REM   Q3

WITH tABLE_1 AS ( SELECT D.DEPARTMENT_ID, E.EMPLOYEE_ID FROM HR.DEPARTMENTS D 
FULL OUTER JOIN HR.EMPLOYEES E 
ON D.DEPARTMENT_ID = E.DEPARTMENT_ID 
WHERE E.EMPLOYEE_ID IS NULL) 
SELECT D.DEPARTMENT_ID, D.DEPARTMENT_NAME, SUBSTR(D.DEPARTMENT_NAME,5,1), tABLE_1.EMPLOYEE_ID 
FROM tABLE_1 
JOIN HR.DEPARTMENTS D  
ON tABLE_1.DEPARTMENT_ID = D.DEPARTMENT_ID 



