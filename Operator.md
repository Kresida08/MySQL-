#AND Operator
The AND operator is a logical operator used in the WHERE clause to combine two or more conditions.
It returns TRUE only when all conditions are TRUE.
Use AND for strict filtering.
SYNTAX:-
SELECT column1, column2
FROM table_name
WHERE condition1 AND condition2;

----------------*-----------------------*--------------------------*-------------------------*-------------------------*----------------------

#OR Operator
🔹 Meaning
The OR operator is used when any one condition can be TRUE.
SYNTAX:-
SELECT *
FROM table_name
WHERE condition1 OR condition2;

For using AND & OR Together
Use parentheses () to avoid confusion.
Employees from Mumbai or Delhi earning more than 40,000:
SELECT * FROM Employees
WHERE (City = 'Mumbai' OR City = 'Delhi')
AND Salary > 40000;

----------------*-----------------------*--------------------------*-------------------------*-------------------------*----------------------

#NOT Operator
The NOT operator is a logical operator in MySQL used to negate (reverse) a condition.
👉 If a condition is TRUE, NOT makes it FALSE
👉 If a condition is FALSE, NOT makes it TRUE
SYNTAX:-
SELECT * 
FROM table_name
WHERE NOT condition;
🔹 Key Points to Remember.
NOT reverses the condition.
Often used with IN, LIKE, BETWEEN.
Parentheses are important when using with AND / OR.
🔹 Using NOT with AND / OR 
- NOT WITH AND, NOT WITH OR, NOT WITH IN, NOT WITH LIKE, NOT WITH BETWEEN

----------------*-----------------------*--------------------------*-------------------------*-------------------------*----------------------

#IN Operator
The IN operator in MySQL is used to check whether a value matches any value in a given list or subquery. 
It helps reduce multiple OR conditions and makes queries cleaner and faster to read.
SYNTAX:-
SELECT column_name
FROM table_name
WHERE column_name IN (value1, value2, value3, ...);

IN WITH A SUB QUERY:-
SELECT name
FROM employees
WHERE department_id IN (
    SELECT id
    FROM departments
    WHERE location = 'Delhi');

----------------*-----------------------*--------------------------*-------------------------*-------------------------*----------------------

#NOT IN Operator
The NOT IN operator in MySQL is used to select records whose values do NOT match any value in a given list or subquery.
SYNTAX:-
SELECT column_name
FROM table_name
WHERE column_name NOT IN (value1, value2, value3, ...);

NOT IN WITH SUB QUERY:-
SELECT name
FROM employees
WHERE department_id NOT IN (
    SELECT id
    FROM departments
    WHERE location = 'Mumbai');

-> NOT IN vs !=
-- NOT IN
WHERE city NOT IN ('Delhi', 'Chennai');

-- Multiple !=
WHERE city != 'Delhi' AND city != 'Chennai';

----------------*-----------------------*--------------------------*-------------------------*-------------------------*----------------------

#BETWEEN Operator
The BETWEEN operator in MySQL is used to select values within a given range, including the start and end values.
SYNTAX:-
SELECT column_name
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

BETWEEN WITH NUMBERS, DATES, TEXTS, NOT BETWEEN.

Important Points:-
- BETWEEN includes both boundary values
- Works with numbers, dates, and strings
- Date format should be YYYY-MM-DD
- For dates with time, results may vary

----------------*-----------------------*--------------------------*-------------------------*-------------------------*----------------------

#LIKE Operator (Pattern Matching)
The LIKE operator in MySQL is used to search for a specified pattern in a column. 
It is mainly used with text (string) data.
SYNTAX:-
SELECT column_name
FROM table_name
WHERE column_name LIKE pattern;

| Wildcard | Meaning                             | Example |
| -------- | ----------------------------------- | ------- |
| `%`      | Matches **zero or more characters** | `'A%'`  |
| `_`      | Matches **exactly one character**   | `'A_'`  |
