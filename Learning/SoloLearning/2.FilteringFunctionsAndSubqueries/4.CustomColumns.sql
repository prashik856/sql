/*
The concat function:
Used to concatenate two or more text values and returns the concatenating string.

concat() function takes in two or more parameters.
*/
select concat(firstname, ',', city) from customers;



/*
The AS keyword
A concatenation results in a new column.
The default column name will be the concat function.

We can assign a custom name to the resulting column using the as keyword.
When we run the below query, the column name will change.
Concatenation will result in a new column.
*/
select concat(firstname, ',', city) as new_column from customers;



/*
Arithmetic operators:
+: add
- : subtract
* : mult
/ : Divide

The query below will add 500 to each employees salary and selects the result.
Parenthesis can be used to force an operation to take priority over any other operators. 
They are also used to improve code readability.
*/
select id, firstname, lastname, salary+500 as salary from employees;




