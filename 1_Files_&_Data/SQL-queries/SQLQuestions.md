# SQL Query Lessons  
The original source bioinformatics Dataset and base SQL queries used in this open source course are from [wikibooks](https://en.wikibooks.org/wiki/Data_Management_in_Bioinformatics/SQL_Exercises). I significantly modified both the example dataset (table structure and data) and also the example queries to work with the Google BigQuery service.  I also added more intermediate SQL queries to enable students to 'level-up' their query writing more deliberately.

### To Get Started

- Sign up for a Google Cloud account (you can use $ 300 USD free trial credits if creating a new GCP account)
  - Create a Google Cloud Project and then enable the BigQuery service for that project
  - Navigate to the BigQuery Web UI for your Google Cloud Project
  - Write and execute your queries in the BigQuery Web UI Query Window, shown below
  - Because of the tiny size of my example dataset, I can make this tutorial FREE for you 

![BigQuery WebUI](/1_Files_&_Data/SQL-concept-graphics/bq-webui.png)

---
---
## Part 1 - Single Table Queries

In this section you will write and execute SQL queries against a single table in the **public** Google Cloud BigQuery bioinformatics dataset that I created for these lessons.  This first table that you will be using was created from a single CSV (text) file from the resource references at the beginning of this article.

### Understand the Table Structure and Data

To get started, I suggest that you run a couple of SQL queries to list all of the table data and also the table schema for the `experiments` table.  Simply copy and paste each queries in this section into your Google Cloud BigQuery query editor window and then click the blue 'run' button to execute each query and see the query results.

Q0a: Run a SQL query which returns all data (rows) in the `experiments` table from my example GCP BigQuery public dataset   
    - SQL Example Query: 

        SELECT *
        FROM `gcp-for-bioinformatics.sql_genomics_examples.experiments` AS experiments
 


Q0b: Run a SQL query to return the table structure of the `experiments` table from my example GCP BigQuery public dataset     
    - SQL Example Query: 

        SELECT * EXCEPT(is_generated,generation_expression,is_stored, is_updatable)
        FROM `gcp-for-bioinformatics`.sql_genomics_examples.INFORMATION_SCHEMA.COLUMNS
        WHERE table_name="experiments"

![experiments table](/1_Files_&_Data/SQL-concept-graphics/experiments.png)

TIP: Examine both the table schema and table data when you are writing SQL queries.  Tables in this example dataset are very small, so you can use `SELECT *...` to see all data.

- When you are working with tables that contain a large amount of data, you may want to add a limit clause, such as `LIMIT 10` to return only a subset of the data from table.  
- In this example, that would be 10 sample data rows.

---
### Write and Execute Single-Table SQL Queries

In this section, you use the SQL Pattern Queries as a starter templates for you to write your own queries.  To do this
- Copy and paste the SQL Pattern code into the Google BigQuery query editor window
- Modify the starter code to fill in the values so that the query returns the expected result set after you execute (or run) it
- Run your query and verify that the results are correct

  
- Shown below is list of SQL Keywords and query patterns used in this section.

[![Select-From](/1_Files_&_Data/SQL-concept-graphics/select-from.png)]()

Q1a: Write a SQL query to return the names of experiments performed by Tommy Student   
    - GCP BigQuery DATASET: `gcp-for-bioinformatics.sql_genomics_examples.experiments`  
    - TABLE: `experiments`  
    - SQL Pattern: 

        SELECT <column1>  
        FROM <table1> AS t1  
        WHERE t1.<column1> = <'stringValue'>  

Q1b: Write a SQL query to return the names of experiments performed by Tommy Student after Jan 1, 2004

    - SQL Pattern: 

        SELECT <column1>   
        FROM <table1> AS t1  
        WHERE t1.<column1> = <'stringValue'>  
        AND t1.<column2> > <'dateValue'>

Q1c: Return the names and ids of experiments performed by Tommy Student after Jan 1, 2004. Rename the column `name` to Experiment and `experimentId` to ExperimentID.

    - SQL Pattern: 

        SELECT <column1> AS c1, <column2> AS c2   
        FROM <table1> AS t1  
        WHERE t1.c1 = <'stringValue'>  
        AND t1.c2 > <'dateValue'>
---
---

## Part 2 - Two Table Queries

In this section, you will be writing and executing SQL queries that retrieve data from two tables.  In order to do this, you will have to do the following:
1. Identify & use a JOIN COLUMN from each of the tables in the join. These columns are often identity (id or key) values (i.e. table1.idCol, table2.idCol)
2. Determine and use the appropriate type of JOIN (i.e. Inner, Outer...) - see diagram below
3. Determine the JOIN syntax 
    - formal  `...tl JOIN t2 on t1.idCol = t2.idCol` --or-- 
    - concise `...FROM t1,t2 WHERE t1.idCol = t2.idCol`

[![Joins](/1_Files_&_Data/SQL-concept-graphics/joins.png)]()

---
### Write and Execute Two-Table SQL (JOIN) Queries

In addition to using SQL join concepts, in this section, you'll use additional SQL keywords to further refine your results by filtering, sorting, etc...  A summary chart is shown below.

[![all keywords](/1_Files_&_Data/SQL-concept-graphics/all-keywords.png)]()

Q2a: Write a SQL query to return the ids and names of genes that were either positively expressed with a significance of at least 2.0, in some experiment. 

To start, query the `genes` and `expression` tables to review the all of the data in each table.  Look for a common data columns which can serve as the "join key" in the your query.  See the diagram below.

[![Join columns](/1_Files_&_Data/SQL-concept-graphics/join-cols.png)]()
    - TABLES: `expression`, `genes`  
    - SQL Query Pattern: 

    SELECT <table>.<id>,<table>.name, <table>.significance
    FROM <table1> AS expression,<table2> AS genes
    WHERE <table1>.<id> = <table1>.<id>
    AND <table>.significance >= integerValue

**Q2b: Write a SQL query to return the names of genes that were either positively expressed twofold or more with a 
significance of at least 2.0, in some experiment, or negatively expressed twofold or less with a significance of at least 2.0, in some experiment.**    
    - TABLES: `expression, genes`  
    - SQL Query Pattern: 

        SELECT column1 AS c1, column2 AS c2, ...   
        FROM table1 AS t1, table2 AS t2  
        WHERE t1.col1 = t2.col1
        AND t.c1 = integerValue 
        AND t2.c2 > floatValue' 

-OR-

        SELECT column1 AS c1, column2 AS c2, ...   
        FROM table1 AS t1 (INNER) JOIN table2 AS t2  
        ON t1.col1 = t2.col1
        WHERE t.c1 = integerValue  
        AND t2.c2 > floatValue'   


---

Use a **self-join** by creating two instances of the same table, to derive a hierarchy of information from data in that table.  Use an equality operator in the WHERE clause.  Note how the copies of table are aliased and which columns are joined.

[![Self-join for hierarchy](/1_Files_&_Data/SQL-concept-graphics/self-hierarchy.png)]()

Q3: Write a SQL query to return the grandparent category of 'glycine binding'  
    - TABLES: `gotree`  
    - SQL Query Pattern: 

        SELECT <tableName>.<parentColumn>
        FROM <t1a> AS children, <t1b> AS parents
        WHERE children.<column> = 'stringValue'
        AND children.<parentColumn> = parents.<parentColumn>

---

Use a **self-join** by creating two instances of the same table, to compare information from data in that table.  Use a less than operator in the WHERE clause.

[![Self-join for comparison](/1_Files_&_Data/SQL-concept-graphics/self-compare.png)]()

As an alternative to using a self-join, you could use a SQL **subquery**. In this case, that subquery would be a nested `SELECT` statement using the SQL aggregate function `MAX` to filter the date values.

Both approaches yield the correct result.  There are two factors in determining which query approach is best.  Those factors are the following:  
1. Are you more comfortable writing set-based queries? Then use the self-join approach.
2. Performance overhead in BigQuery.  At these small example amounts, query performance won't differ.  However, with production-sized tables, performance can differ due to other factors (table partitioning for example)

Q4: Return the names of experiments that were performed before some Gasch experiment  
    - TABLES: `experiments`  
    - SQL Query Pattern:

    - 4a. Self-join answer

        SELECT e1.<column>
        FROM <t1a> AS e1,<t1b> AS e2
        WHERE e1.<column> < e2.<column>
        AND e2.<column> = 'Gasch';

    - 4b. Subquery with aggregate (MAX) answer

        SELECT <column>
        FROM <table1a> AS experiments
        WHERE experiments.<column> < (
            SELECT MAX(<column>)
            FROM <table1b>
            WHERE <column> = 'Gasch' );

---
For some queries, you have a number of choices of how you write your query.  For this example you have at least 4 options.  They are as follows:
1. Use VIEWS - SQL Views are saved, named `SELECT` queries.  They are a convenience, that allows you to refer to subsets in subsequent queries.
2. Use self-joins
3. Use subqueries
4. Use other SQL capabilities - in this case the `GROUP BY` (aggregate) and `HAVING` (filter aggregates) keywords. The SQL function `COUNT` is used here as well.

**Q5: Write a SQL query to return the names of pine genes that were positively expressed more than 0.5-fold (with a significance of 1 or more) in at least two experiments**  
    - TABLES: `expression, genes`  
    - SQL Query Patterns

    - 5a. VIEW Answer: First find the experiments where genes are upreglated and significant.  
        - Next determine the genes which were upregulated in at least two experiments. Take the product of the upregulated genes and selecting rows where the gene ID is the same but the experiment ID is different.  
        - Finally, determine which of these genes come from pine, and project their names.

    --OR--

    - 5b. Self-join Answer: can be written one single query

    SELECT DISTINCT <column>
    FROM <t1> AS genes, <t2a> AS e1,<t2b> AS e2
    WHERE <t1>.<id> = <t2a>.<id>
    AND e1.<id> = e2.<id>
    AND e1.<column> >= 0.5
    AND e2.<column> >= 0.5
    AND e1.<column> >= 1.0
    AND e2.<column> >= 1.0
    AND e1.<id> <> e2.<id>
    AND <column> = 'pine';

    - 5c. Subquery Answer: Make a correlated subquery where the subquery depends on some property (in this case the gene ID) of the parent query. You'll still need to make use of the `Upregulated` view created above to reduce code redundancy.

    - 5d. GROUP BY Answer: use GROUP BY & COUNT
---

**Q6: Write a SQL query to return the names of pine genes that were up-regulated 0.5-fold or more (with a significance of 1 or more) in at least three experiments**  
    - TABLES: `expression, genes`  
    - SQL Keywords: SELECT, DISTINCT, AS, FROM, WHERE, AND, GROUP BY, HAVING, COUNT, VIEW --or-- SUBQUERY
 
    - 6a. VIEW Answer: The caveat here is that while the equality evaluations are transitive, while inequality evaluations are not, and so every case must be covered.

    --OR--

    - 6b. Subquery Answer: Build in another correlated subquery for your original correlated subquery.  

    - 6c. GROUP BY Answer: Adjust the count evaluation.
---

**Q7: Write a SQL query to return the names of pine genes that were up-regulated 0.5-fold or more (with a significance of 1 or more) in at exactly two experiments**  
    - TABLES: `expression, genes`  
    - SQL Keywords: SELECT, DISTINCT, FROM, WHERE, EXCEPT, GROUP BY, HAVING, COUNT, VIEW --or-- SUBQUERY
  
    - 7a. VIEW Answer: The key here is identifying that taking the set of genes upregulated in two or more experiments and subtracting the set of genes upregulated in three or mor experiments gives the set of genes upregulated in precisely two experiments. The answer is the answer to question 5 subtracted by the answer to question 6.

    --OR--

    - 7b. GROUP BY Answer
---
---
## Part 3 - Three Table Queries

### Write and Execute Three-Table SQL (JOIN) Queries

In three table joins, you identify the join columns (or keys) from each of the table in the query.  As with two-table joins, you can use either the more formal SQL     `JOIN ... ON....` syntax or the more concise `FROM t1, t2, t3 WHERE t1.key1 = t2.key1 AND t2.key2 = t3.key2` syntax.  The most common join type is a SQL inner join, however you can use other SQL join types, i.e. outer joins... as needed.

**Q8: Write a SQL query to return the experiment names, genes & their expression levels in order, for genes that showed positive expression in every experiment recorded for it**  
    - TABLES: `experiments, expression, genes`  
    - SQL Query Pattern:

    SELECT <columns...>
    FROM <t1> AS genes,<t2> AS expression,<t3> AS experiments
    WHERE genes.<id> = expression.<id>
    AND experiments.<id> = expression.<id>
    AND <column>0.0
    ORDER BY <column> 

---

**Q9: Write a SQL query to return the name of the gene that was most positively expressed in experiment exp23. Assume a minimum level of 1.0**  
    - TABLES: `experiments, expression, genes`  
    - SQL Keywords: SELECT, FROM, WHERE, LIMIT, GROUP BY

---

**Q10: Write a SQL query to return the name of the gene that was second most positively expressed. Assume a minimum level of 1.0**  
    - TABLES: `experiments, expression, genes`  
    - SQL Keywords: SELECT, FROM, WHERE, LIMIT, GROUP BY, ORDER BY

---

**Q11: Write a SQL query to return the gene(s) were positively expressed in ALL the experiments listed in the experiments table in order of level**  
    - TABLES: `experiments, expression, genes`  
    - SQL Keywords: SELECT, FROM, WHERE, ORDER BY

---

**Q12: Write a SQL query to return a table of genes, their annotation, and any experiment in which they were either the highest or lowest expressed (of any significance level). Include a new column saying if they were the highest or lowest**  
    - TABLES: `experiments, expression, genes`  
    - SQL Keywords: SELECT, FROM, WHERE, ORDER BY, GROUP BY, CASE, WHEN...THEN, CONCAT, DESC

---

### Other Notes

- Possible query answers are on this page - https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/1_Files_%26_Data/SQL-queries/SQLQueries.sql

- *(Optional) If you wish to create your own Google BigQuery dataset rather than querying my public dataset, then you must create your own BigQuery dataset.* 
    - *I've included instructions on how to create your own copy of this dataset using the CSV source files in this repository.* 
    - *Directions are [here](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/1_Files_%26_Data/SQL-lessons/1_lessons.md#other-things-to-know).*
