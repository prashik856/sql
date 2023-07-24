/*
The LIKE operator
The like operator is useful when specifying a search condition within our where clause.

SQL pattern matching enables us to use "_" to match any single character and "%" to match an arbitrary number of characters
(including zero characters).

Example:
To select imployees whose firstnames begin with the letter A, we can use this query:
*/
select column_names from table_name where column_name like pattern;
select * from employees where firstname like 'A%';


/*
Another example:
Selects all the employees with a lastname ending with the letter "s"
*/
select * from employees where lastname like '%s';
/*
% wildcard can be used multiple times within the same pattern.
*/


/*
The MIN function
The MIN function is used to return the minium value of an expression in select statment.

all of the sql functions can be combined together to create a single expression.
*/
select min(salary) as salary from employees;
