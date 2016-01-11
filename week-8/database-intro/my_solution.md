RELEASE 5

1. Select all data for all states.

  SELECT * FROM states;

2. Select all data for all regions.

  SELECT * FROM regions;

3. Select the state_name and population for all states.

  SELECT state_name, population FROM states;

4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.

  SELECT state_name, population FROM states
  ORDER BY population DESC;

5. Select the state_name for the states in region 7.

  SELECT state_name FROM states
  WHERE region_id = 7;

6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.

  SELECT state_name, population_density FROM states
  WHERE population_density > 50
  ORDER BY population_density ASC;

7. Select the state_name for states with a population between 1 million and 1.5 million people.

  SELECT state_name FROM states
  WHERE population BETWEEN 1000000 and 1500000;

8. Select the state_name and region_id for states ordered by region in ascending order.

  SELECT state_name, region_id FROM states
  ORDER BY region_id ASC;

9. Select the region_name for the regions with "Central" in the name.

  SELECT region_name FROM regions
  WHERE region_name LIKE '%ral';

10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).

  SELECT region_name, state_name FROM states
  JOIN regions ON
  states.region_id = regions.id
  ORDER BY region_id ASC;


RELEASE 6

![Alt My Reflection](Release_6.png?raw=true)


  REFLECTION
1.  What are databases for?

Databases are a way to store and retrieve information.

2.  What is a one-to-many relationship?

A one-to-many relationship is when table1 can be linked to many records of table2, but only when table2 only has one link to the table1.

3.  What is a primary key? What is a foreign key? How can you determine which is which?

A primary key uniquely identifies each record in a database table.

A foreign key is a record on one table that uniquely identifies a row of another table.  A foreign key is defined in table2, but refers to the primay key in table1.

You can determine which is which by looking at the tables.  There should always be only one primary key which is going to stand out because it uniquely identifies a record in a table.  There may be multiple foreign keys and they will be the refering to the primary key in a different table.

4.  How can you select information out of a SQL database? What are some general guidelines for that?

You can select information from a database by typying the key word SELECT.  Followed by other key word instructions dictating what you would like selected.

Some good things to remember when selecting information from databases is that your key words should always be capitalized and that you should end each statement with a semi-colon.

