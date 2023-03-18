# SQL Learning Files
This repository contains my learning files for SQL. The files in this repository cover various concepts in intermediate SQL such as counting, having, like, like note, round, sorting, and WHERE IN. Additionally, there are files covering concepts in joining data, including INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN, SELF JOIN, and CROSS JOIN.

## Intermediate SQL Concepts
### Counting
The counting concept in SQL is used to count the number of rows that match a specific condition in a table. It is used with the SELECT statement and the COUNT function.
count.sql: A file containing examples of how to use the COUNT function in SQL to count the number of rows in a table or the number of occurrences of a specific value.
### Having
The having concept is used to filter the results of an SQL query based on a condition that is applied to the results of an aggregate function. It is similar to the WHERE clause but is used specifically for filtering the results of aggregate functions.
having.sql: A file containing examples of how to use the HAVING clause in SQL to filter the results of a query based on a condition that uses an aggregate function.
### Like AND Like Not
The like concept in SQL is used to match patterns in text data. It is often used with the WHERE clause to filter the results of a query based on specific patterns.
like.sql: A file containing examples of how to use the LIKE operator in SQL to match patterns in text data. Also contains examples of how to use LIKE NOT to exclude patterns from search results.
The like note concept is used to match patterns that do not match a specific pattern in text data. It is often used with the WHERE clause to filter the results of a query based on specific patterns that do not match a given pattern.
### Round
round.sql: A file containing examples of how to use the ROUND function in SQL to round numeric values to a specified number of decimal places.
The round concept is used to round numeric data to a specified number of decimal places. It is often used with the SELECT statement and the ROUND function.
### Sorting
sorting.sql: A file containing examples of how to use the ORDER BY clause in SQL to sort the results of a query by one or more columns.
The sorting concept in SQL is used to sort the results of a query in ascending or descending order based on one or more columns. It is often used with the ORDER BY clause.
### WHERE IN
where_in.sql: A file containing examples of how to use the WHERE IN operator in SQL to filter query results based on a set of values.
The where in concept is used to filter the results of a query based on a list of values. It is often used with the WHERE clause and the IN operator.
## Joining Data Concepts
### Inner Join
inner_join.sql: A file containing examples of how to use the INNER JOIN operator in SQL to combine data from two or more tables based on a shared key column.
The inner join concept is used to combine data from two or more tables based on a common column or set of columns. It returns only the rows that have matching values in both tables.
### Left Join
left_join.sql: A file containing examples of how to use the LEFT JOIN operator in SQL to combine data from two or more tables based on a shared key column, but include all rows from the left table even if there is no matching row in the right table.
The left join concept is used to combine data from two or more tables based on a common column or set of columns. It returns all the rows from the left table and the matching rows from the right table.
### Right Join
right_join.sql: A file containing examples of how to use the RIGHT JOIN operator in SQL to combine data from two or more tables based on a shared key column, but include all rows from the right table even if there is no matching row in the left table.
The right join concept is used to combine data from two or more tables based on a common column or set of columns. It returns all the rows from the right table and the matching rows from the left table.
### Full Join
full_join.sql: A file containing examples of how to use the FULL JOIN operator in SQL to combine data from two or more tables based on a shared key column, but include all rows from both tables even if there is no matching row in the other table.
The full join concept is used to combine data from two or more tables based on a common column or set of columns. It returns all the rows from both tables, with null values in the columns where there are no matches.
### Self Join
self_join.sql: A file containing examples of how to use the SELF JOIN operator in SQL to join a table with itself, typically used to compare rows within the same table.
The self join concept is used to combine data from a table with itself. It is often used when a table contains hierarchical data.
### Cross Join
cross_join.sql: A file containing examples of how to use the CROSS JOIN operator in SQL to create a cartesian product of two or more tables.
The cross join concept is used to combine all the rows from one table with all the rows from another table. It returns a Cartesian product of the two tables.
### UNION
The UNION operator is used to combine the results of two or more SELECT statements into a single result set. The columns in each SELECT statement must have the same data types and be in the same order. The UNION operator removes duplicate rows from the result set.
### UNION ALL
The UNION ALL operator is similar to the UNION operator, except that it does not remove duplicate rows from the result set. The columns in each SELECT statement must have the same data types and be in the same order.
### INTERSECT
The INTERSECT operator is used to return only the rows that are common to two SELECT statements. The columns in each SELECT statement must have the same data types and be in the same order. The INTERSECT operator removes duplicate rows from the result set.
### EXCEPT
The EXCEPT operator is used to return only the rows that are unique to one SELECT statement and not found in another SELECT statement. The columns in each SELECT statement must have the same data types and be in the same order. The EXCEPT operator removes duplicate rows from the result set.
### Antijoin
Antijoin is a type of join operation in SQL that returns only the rows from one table that do not have matching rows in the other table. Antijoin is achieved using the NOT EXISTS or NOT IN operator, which compares a column value from one table with a column value from another table. Antijoin is useful for identifying data that does not conform to expected patterns or that needs to be corrected.
### Subqueries inside SELECT
A subquery is a query that is nested inside another query. In SQL, a subquery can be used inside the SELECT clause to retrieve a single value or set of values that can be used as a column in the outer query. Subqueries inside SELECT are useful for performing calculations or retrieving data that is based on values in other tables or columns.
### Subqueries inside FROM
A subquery can also be used inside the FROM clause to create a temporary table that is used in the outer query. This type of subquery is known as a derived table or inline view. Subqueries inside FROM are useful for simplifying complex queries or when a table needs to be filtered or joined with other tables before being used in the outer query.
### Subqueries inside WHERE
Subqueries can also be used inside the WHERE clause to filter results based on the values of a subquery. Subqueries inside WHERE are useful for selecting specific rows based on values in other tables or columns. The subquery can be used to retrieve a set of values that are then used to filter the main query results.
### Semijoin
Semijoin is a type of join operation in SQL that returns only the rows from one table that have matching rows in another table. However, unlike a regular join, semijoin eliminates any duplicates from the result set. Semijoin is useful for retrieving only the unique rows from one table that have a matching value in another table. Semijoin can be achieved using the EXISTS or IN operator, which checks for the existence of a value in another table.
