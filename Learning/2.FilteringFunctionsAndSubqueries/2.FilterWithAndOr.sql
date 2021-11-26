/*
Logical Operators
can be used to combine two boolean values and return a result of true, false, or null.

Operators are:
AND
OR
IN -> True if the operand is equal to one of a list of expressions
NOT

Use logical operators in the where clause to combine multiple conditions.
If we want to select rows that satisfy all of the given conditions, we use the logical operator AND.

We can combine as many conditions as needed to return the desired results.
*/
select id, firstname, lastname, age from customers where age >= 30 and age <=40;



/*
OR
Satisfy atleast one given condition, we use or.
*/
select * from customers where city = 'New York' or city = 'Chicago';



/*
Combining and & or
Test multiple conditions in a query.
These two operators are called conjunctive operators.
When combining these conditions, it is important to use parentheses, so that the order to evaulate each condition is known.
We can nest as many conditions as required.
*/
select * from customers where city = 'New York' and (Age = 30 or age = 35);


