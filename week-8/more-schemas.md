![one-to-one](../imgs/one_to_one.png)
For this schema, I created a situation in which users can store data about themselves. Each user has one address, and each address belongs to one user. It's possible for a user to not input an address without affecting the user database, since not everyone has a permanent address.

![many-to-many](../imgs/many_many.png)

##What is a one-to-one database?
A one-to-one database is a database that relates things that have a one-to-one, or paired relationship in which each thing in one table can only match with one thing in the other table.
##When would you use a one-to-one database? (Think generally, not in terms of the example you created).
##What is a many-to-many database?
It's better to separate these things into separate databases if not every entry in the database will have one of these things; for instance, in a user database in which each person can have only one spouse, it might be better to have that information as a separate table because not everyone is married.
##When would you use a many-to-many database? (Think generally, not in terms of the example you created).
When many things are related to many other things, but can be related to each other in a single join table, that's the best time to use a many-to-many database.
##What is confusing about database schemas? What makes sense?
I'm actually really confused by the schema designer, because it lists the column names vertically. Once I figured out how to read it, that got easier.