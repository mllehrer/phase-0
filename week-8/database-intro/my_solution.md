SELECT * FROM states;
SELECT * FROM regions;
SELECT state_name, population FROM states;
SELECT state_name, population FROM states ORDER BY population DESC;
SELECT state_name FROM states WHERE region_id IN(7);
SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;
SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;
SELECT state_name, region_id FROM states ORDER BY region_id ASC;
SELECT region_name FROM regions WHERE region_name LIKE '%Central';
SELECT regions.region_name, states.state_name FROM states INNER JOIN regions ON regions.id=states.region_id ORDER BY region_id;

![Release 6 schema](/week-8/database-intro/schema6.png)

**What are databases for?
Databases are for storing information in a way that relates it to other information and can be accessed when needed.
**What is a one-to-many relationship?
A one-to-many relationship is when a piece of information is related to several other pieces of information. For example, one cheese drawer has many cheeses. A cheese belongs to the cheese drawer.
**What is a primary key? What is a foreign key? How can you determine which is which?
A primary key is the unique identifier for a table. A foreign key is a field in a table that is the primary key in a different table. Foreign keys are not unique; for instance, if a username is a primary key for a set of personal information, it can be a foreign key in a table that relates things that username owns.
**How can you select information out of a SQL database? What are some general guidelines for that?
You select information out of a SQL database using the SELECT keyword. You can select different columns FROM (that's another keyword) a specific table. A template is
SELECT column FROM table WHERE column (condition) (ORDER BY column characteristic) etc.