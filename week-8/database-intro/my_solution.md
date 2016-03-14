#Database Schema

## Select all data for states

SELECT * from states;

## Select all data for all regions

SELECT * FROM regions;

## Select the state_name and population for all states.

SELECT state_name, population FROM states;

## Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.

SELECT state_name, population FROM states ORDERED BY population DESC;

## Select the state_name for the states in region 7.

SELECT state_name FROM states JOIN regions ON (states.region_id = region.id) WHERE region_name=7;

## Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.

SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density;

## Select the state_name for states with a population between 1 million and 1.5 million people.

SELECT  state_name FROM states WHERE population > 1000000 AND population < 1500000;

## Select the state_name and region_id for states ordered by region in ascending order.

SELECT state_name, region_id FROM states ORDER BY region_id;

## Select the region_name for the regions with "Central" in the name.

SELECT region_name FROM regions WHERE region_name like "%Central%"

## Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).

SELECT region_name, state_name FROM states JOIN region ON (states.region_id = region.id) ORDER BY region_id;



<img src="https://github.com/dshaps10/phase-0/blob/master/week-8/database-intro/Screen%20Shot%202016-03-07%20at%208.28.26%20AM.png">

##Reflection
1. What are databases for?

Databases are used to store customer data, often in a relational manner.  Databases provide and easy way to store event and attribute data in a way in which tables can be linked together through the use of primary and foreign keys.

2. What is a one-to-many relationship?

A one-to-many relationship is a relationship in which one element in a table can be linked to many elements in another table.  This is common with the use of primary and foreign keys.  Primary keys must be unique, yet records in other tables can reference that primary key multiple times through the use of foreign keys.  This is a common example of a one-to-many relationship.

3. What is a primary key? What is a foreign key? How can you determine which is which?

A primary key is a unique identifier that refers to a record in a table. Each record in a table must have a unique primary key that no other record in that table can have. A foreign key is a field in another table that references a primary key in another table.  Foreign keys do not have to be unique as they act like pointers to other unique values.  Foreign keys can be easily identified because they usually have the name of the table they're referencing, followed by an underscore, and followed by that tables primary key field.  For example, a field in the outfits table that references the primary key field of the persons table would look like person_id.

4. How can you select information out of a SQL database? What are some general guidelines for that?

The three main statements in a SQL query are the SELECT, FROM, and WHERE statements. In the SELECT statement you refer to the fields that you would like to pull. The FROM statement is where you specify the tables from which your pulling the data as well as any join operations between tables.  The WHERE clause is used to specify any parameters such as field value of numeric range.  There is also the ORDER BY clause where you can specify how the query will spit out data as well as the HAVING clause where you can filter out results with mathematical expressions.
