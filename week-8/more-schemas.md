#More Schemas

##One-to-One Relationship

<img src="https://github.com/dshaps10/phase-0/blob/master/week-8/imgs/Screen%20Shot%202016-03-07%20at%208.57.49%20AM.png">

##Many-to-Many Relationship

<img src="https://github.com/dshaps10/phase-0/blob/master/week-8/imgs/Screen%20Shot%202016-03-07%20at%209.08.13%20AM.png">

##Reflection

* What is a one-to-one database?

A one-to-one database is a database schema in which a record in one table can only refer to one unique record in another table and vice-versa. This relationship is unique between the two tables.

* When would you use a one-to-one database? (Think generally, not in terms of the example you created).

A one-to-one database is useful if you have, say a table that refers to individual customers and another table that is almost an extension of the information of that person.  I like to think of a one-to-one relationship as taking information that could apply to one record on one table, and instead, breaking into two different tables to make the database more readable.  The best example I can think of is an airline customer and their related frequent flier information.

* What is a many-to-many relationship?

A many-to-many relationship is a relationship between two tables in which many records in one table can refer to many records in another table. A many-to-many database is especially useful when considering that one customer can buy many different items, and each item can be purchase by many different customers.

* What is confusing about database schemas? What makes sense?

I'm going to try to say this without sounding full of myself, but my last job was almost all SQL driven and I have a bit of experience in it, so not too much was confusing to me.  That being said, the usage of join tables in many-to-many relationships makes sense because they are necessary to ensure referential integrity between tables.
