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

# Course Contents
 - Part 1 - Single table core SQL Queries  
 - Part 2 - Two-table SQL join Queries  
 - Part 3 - Three-table complex SQL Queries

---
---
## Part 1 - Single Table Queries

In this section you will execute or write (and execute) SQL queries against a single table in a **public** Google Cloud BigQuery bioinformatics dataset that I created for these lessons.  The first table that you will be using was created from a CSV (text) file from the wikibook source referenced at the beginning of this article.  To be able to use the BigQuery 'auto-detect schema' feature when uploading the CSV file, I modified the original source file structure by removing a row, all white space and by adding a column with numbers (numeric data type).

### Understand the Table Structure and Data

To get started, I suggest that you run a couple of SQL queries to list all of the table data and also the table schema for the `experiments` table.  Simply copy and paste each queries in this section into your Google Cloud BigQuery query editor window and then click the blue 'run' button to execute each query and see the query results.

### Q0a: Run a SQL query which returns all data (rows) in the `experiments` table from my example GCP BigQuery public dataset  

    - SQL Example Query: 

        SELECT *
        FROM `gcp-for-bioinformatics.sql_genomics_examples.experiments` AS experiments
 

#### Q0b: Run a SQL query to return the table structure of the `experiments` table from my example GCP BigQuery public dataset  

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

Q1a: Write a SQL query to return the names of experiments performed by Tommy Student.   
    - GCP BigQuery DATASET: `gcp-for-bioinformatics.sql_genomics_examples.experiments`  
    - TABLE: `experiments`  

    - SQL Pattern: 

        SELECT <column1>  
        FROM <table1>  
        WHERE <column1> = <'stringValue'>  

Q1b: Write a SQL query to return the names of experiments performed by Tommy Student after Jan 1, 2004.
Rename the referenced table name to "expermients" using the SQL `AS` keyword in the `FROM` clause.

    - SQL Pattern: 

        SELECT <column1>   
        FROM <table1> AS t1  
        WHERE t1.<column1> = <'stringValue'>  
        AND t1.<column2> > <'dateValue'>

Q1c: Return the names and ids of experiments performed by Tommy Student after Jan 1, 2004. 
Rename the column `name` to "Experiment" and `experimentId` to "ExperimentID" using the `AS` keyword in the `SELECT` clause.

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

To start, query the `genes` and `expression` tables to review all of the data in each table.  Look for a common data columns which can serve as the "join key" in the your query.  See the diagram below.

[![Join columns](/1_Files_&_Data/SQL-concept-graphics/join-cols.png)]()
    - TABLES: `expression`, `genes`  

    - SQL Query Pattern: 

    SELECT <table>.<id>,<table>.name, <table>.significance
    FROM <table1> AS expression,<table2> AS genes
    WHERE <table1>.<id> = <table1>.<id>
    AND <table>.significance >= integerValue

Q2b: Write a SQL query to return the names of genes that were either positively expressed twofold or more with a 
significance of at least 2.0, in some experiment, or negatively expressed twofold or less with a significance of at least 2.0, in some experiment.   
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
1. Are you more comfortable writing set-based queries? Then use the self-join approach.  Alternatively, you can use the subquery approach if that is more natural for you.
2. Performance overhead in BigQuery.  At these small example amounts, query performance won't differ.  However, with production-sized tables, performance can differ due to other factors (table partitioning for example). Query performance tuning is a complex topic is beyond the scope of this course.

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
For some types of queries, you can have choices in how you write your query.  For the next example I will show 2 options.  The reason for showing these options is that you may have to work with queries that other researcher's have written - and they could use any of these styles.  The styles used here are as follows:
1. Use self-joins - as in the previous examples, simply more practice here.  You'll note that there are two copies of a table, which is joined to another table.  This is, in effect, a three-table join.
2. Use VIEWS - SQL Views are saved, named `SELECT` queries.  They are a language convenience that allows you to refer to subsets of table data by name in subsequent queries.  A view is referenced like a table in the `FROM` clause of a SQL statement.

Because it's helpful to 'see' table structure when writing queries, I'll link a diagram of the two tables queried in this section below.
[![Join columns](/1_Files_&_Data/SQL-concept-graphics/join-cols.png)]()


Q5: Write a SQL query to return the names of pine genes that were positively expressed more than 0.5-fold (with a significance of 1 or more) in at least two experiments  
    - TABLES: `expression, genes`

- 5a. Self-join Answer: can be written one single query. However using a self-join with another table join, which is, in effect, a three table join, is complex to write and to read.

        - SQL Query Pattern:

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

    --OR--

- 5b. VIEW Answer:  To improve query readability, I'll create two views.  The first view (`upregulated`) finds the experiments where genes are upreglated and significant.   The second view is created using the first view as a table source.  

    The second view (`upInTwoOrMore`)is used to determine the genes which were upregulated in at least two experiments. This is done by by taking the product of the upregulated genes & selecting rows where the gene ID is the same but the experiment ID is different.The SQL queries which I used to create these views is shown below. 

        - SQL Query Pattern:

        CREATE VIEW upregulated AS
        SELECT gid, experimentid
        FROM `gcp-for-bioinformatics.sql_genomics_examples.expression` AS expression
        WHERE significance >= 1
        AND level >= 0.5;

        --SELECT all rows using the view name as a table source to see the results
        SELECT * 
        FROM `gcp-for-bioinformatics.sql_genomics_examples.upregulated`
  
        CREATE VIEW upInTwoOrMore AS
        SELECT DISTINCT u1.gid AS gid
        FROM 
        `gcp-for-bioinformatics.sql_genomics_examples.upregulated` AS u1, 
        `gcp-for-bioinformatics.sql_genomics_examples.upregulated` AS u2
        WHERE u1.gid = u2.gid
        AND u1.experimentid <> u2.experimentid;

        --Select using the view name as a table source to see the results
        SELECT * 
        FROM `gcp-for-bioinformatics.sql_genomics_examples.upInTwoOrMore`

--Use the views by determining which of these genes come from pine, and then returning their names.  You'll need to join the second view to the `gene` table to retrieve the required information.

        - SQL Query Pattern:

        SELECT <column>
        FROM 
        `gcp-for-bioinformatics.sql_genomics_examples.<table>` AS genes, 
        `gcp-for-bioinformatics.sql_genomics_examples.<view>` AS upInTwoOrMore
        WHERE genes.<id> = upInTwoOrMore.<id>
        AND <column> = <stringValue>;

---
**SECTION in PROGRESS**

Q6: Write a SQL query to return the names of pine genes that were up-regulated 0.5-fold or more (with a significance of 1 or more) in at least three experiments  
    - TABLES: `expression, genes`  
    - SQL Keywords: SELECT, DISTINCT, AS, FROM, WHERE, AND, GROUP BY, HAVING, COUNT, VIEW --or-- SUBQUERY
 
    - 6a. VIEW Answer: The caveat here is that while the equality evaluations are transitive, while inequality evaluations are not, and so every case must be covered.

    - SQL Query Pattern

    SELECT <column>
    FROM <table1a> AS expressions
    WHERE experiments.<column> 

    --OR--

    - 6b. Subquery Answer: Build in another correlated subquery for your original correlated subquery.  

    - SQL Query Pattern

    SELECT <column>
    FROM <table1a> AS expressions
    WHERE experiments.<column> 

    - 6c. GROUP BY Answer: Adjust the count evaluation.

    - SQL Query Pattern

    SELECT <column>
    FROM <table1a> AS expressions
    WHERE experiments.<column> 
---

Q7: Write a SQL query to return the names of pine genes that were up-regulated 0.5-fold or more (with a significance of 1 or more) in at exactly two experiments 
    - TABLES: `expression, genes`  
    - SQL Keywords: SELECT, DISTINCT, FROM, WHERE, EXCEPT, GROUP BY, HAVING, COUNT, VIEW --or-- SUBQUERY
  
    - 7a. VIEW Answer: The key here is identifying that taking the set of genes upregulated in two or more experiments and subtracting the set of genes upregulated in three or mor experiments gives the set of genes upregulated in precisely two experiments. The answer is the answer to question 5 subtracted by the answer to question 6.

    - SQL Query Pattern

    SELECT <column>
    FROM <table1a> AS expressions
    WHERE experiments.<column> 

    --OR--

    - 7b. GROUP BY Answer

    - SQL Query Pattern

    SELECT <column>
    FROM <table1a> AS expressions
    WHERE experiments.<column> 
---
---
## Part 3 - Three Table Queries

### Write and Execute Three-Table SQL (JOIN) Queries

In three (or more) table joins, you identify the join columns (or keys) from each of the tables in the query.  As with two-table joins, you can use either the more formal SQL     `JOIN ... ON....` syntax or the more concise `FROM t1, t2, t3 WHERE t1.key1 = t2.key1 AND t2.key2 = t3.key2` syntax.  

The most common join type is a SQL inner join (which returns only rows matched in BOTH tables), however you can use other SQL join types, i.e. outer joins... as needed.

[![Three table join](/1_Files_&_Data/SQL-concept-graphics/3-tables.png)]()

Q8: Write a SQL query to return the experiment names, gene names & their expression levels in order, for genes that showed positive expression in every experiment recorded for it  
    - TABLES: `experiments, expression, genes` 

    - SQL Query Pattern:

    SELECT <columns...>
    FROM <t1> AS genes,<t2> AS expression,<t3> AS experiments
    WHERE genes.<id> = expression.<id>
    AND experiments.<id> = expression.<id>
    AND <column>0.0

---

Q9: Write a SQL query to return the gene(s) were positively expressed in ALL the experiments listed in the experiments table in order of level    
   
   - SQL Query Pattern:

    SELECT <columns...>
    FROM <t1> AS genes,<t2> AS expression,<t3> AS experiments
    WHERE genes.<id> = expression.<id>
    AND experiments.<id> = expression.<id>
    AND <column>0.0
    ORDER BY <column>

---

Q10: Write a SQL query to return the name of the gene that was most positively expressed in experiment exp23. Assume a minimum level of 1.0. Use the SQL `LIMIT` keyword to return the top value.    


    - SQL Query Pattern:

    SELECT <columns...>
    FROM <t1> AS genes,<t2> AS expression,<t3> AS experiments
    WHERE genes.<id> = expression.<id>
    AND experiments.<id> = expression.<id>
    AND <column>1.0
    GROUP BY <column1>, <column2>
    LIMIT <number>

---

Q11: Write a SQL query to return the name of the gene that was second most positively expressed. Assume a minimum level of 1.0.
Use the SQL keyword `ASC` or `DESC` to order the result.   

    - SQL Query Pattern:

    SELECT <columns...>
    FROM <t1> AS genes,<t2> AS expression,<t3> AS experiments
    WHERE genes.<id> = expression.<id>
    AND experiments.<id> = expression.<id>
    AND <column>1.0
    GROUP BY <column1>, <column2>
    ORDER BY <column1> ASC|DESC
    LIMIT <number>

---
  
Q12: Return a table of experiments, genes names and their annotation shown as one value (use SQL `CONCAT`), and their levels.
listed by experiment and level in descending order.  Create a new fourth column which prints "positive" or "negative", based on level value.  Use a SQL conditional statement to test level value, i.e. `CASE`... 

    - SQL Query Pattern:

    SELECT <columns...>, CONCAT(col1, "-", col2) as NewCol, ...
       CASE 
          WHEN <c1> 0.0 THEN '<value1'>
          WHEN <c1> 0.0 THEN '<value2'>
        END AS <newColumn>
    FROM <t1> AS genes,<t2> AS expression,<t3> AS experiments
    WHERE genes.<id> = expression.<id>
    AND experiments.<id> = expression.<id>
    ORDER BY <column>

---

### Other Notes

- SQL query answers to these lesson are on this Repo page - https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/1_Files_%26_Data/SQL-queries/SQLQueries.sql

- *(Optional) If you wish to create your own Google BigQuery dataset rather than querying my public dataset, then you must create your own BigQuery dataset.* 
    - *I've included instructions on how to create your own copy of this dataset using the CSV source files in this repository.* 
    - *Directions are [here](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/1_Files_%26_Data/SQL-lessons/1_lessons.md#other-things-to-know) on how to set up your own copy of my public BigQuery dataset.*
