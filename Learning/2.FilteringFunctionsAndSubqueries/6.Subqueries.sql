/*
Subqueries
query within another query.

An example:
list of all employees whose salaries are greater than the average.

For this, we first need to calculate average:
*/
select avg(salary) from employees;

/*
Now that we know salary, we have to use this value in our next query
desc is used for decending order.
asc in ascending.
*/
select firstname, salary from employees where salary > 3100 order by salary desc;



/*
Subqueries:
A single subquery will return the same result more easily.
We need to enclose the subquery in parentheses.
*/
select firstName, salary from employees where salary > (select avg(salary) from employees) order by salary desc;


