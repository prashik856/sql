/*
The upper function:
The UPPER function converts all letters in the specified string to uppercase.
The LOWER function converts the string to lowercase.

If non characters, function will have no effect on them.
*/
select firstname, upper(lastname) as lastname from employees;



/*
SQRT and AVG
square root and average.

WE also have POWER function, which can be used as sqrt as well.
*/
select salary, sqrt(salary) from employees;
select avg(salary) from employees;



/*
SUM function
calculate sum.
*/
select sum(salary) from employees;



