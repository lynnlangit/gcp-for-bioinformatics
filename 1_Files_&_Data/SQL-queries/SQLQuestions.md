# SQL Query Lessons  
The original source bioinformatics Dataset and base SQL queries used in this open source course are from [wikibooks](https://en.wikibooks.org/wiki/Data_Management_in_Bioinformatics/SQL_Exercises). 

I significantly modified both the example dataset (table structure and data) and also the example queries to work with the Google BigQuery service.  I also added more intermediate SQL queries to enable students to 'level-up' their query writing more deliberately.

### To Get Started

- Sign up for a Google Cloud account (you can use $ 300 USD free trial credits if creating a new GCP account)
  - Create a Google Cloud Project and then enable the BigQuery service for that project
  - Navigate to the BigQuery Web UI for your Google Cloud Project
  - Write and execute your queries in the BigQuery Web UI Query Window, shown below

![BigQuery WebUI](/1_Files_&_Data/SQL-concept-graphics/bq-webui.png)

---
---
### Part 1 - Single Table Queries

In this section you will write and execute SQL queries against a single table in the **public** Google Cloud BigQuery bioinformatics dataset that I created for these lessons.  This first table was created from a single CSV (text) file.  

- Possible query answers are on this page - https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/1_Files_%26_Data/SQL-queries/SQLQueries.sql


  [![Select-From](/1_Files_&_Data/SQL-concept-graphics/select-from.png)]()
- Shown above is list of SQL Keywords and query patterns used in this section.

- *(Optional) If you wish to create your own Google BigQuery dataset, I've included instructions on how to create your own copy of this dataset using the CSV source files in this repository. Directions [here](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/1_Files_%26_Data/SQL-lessons/1_lessons.md#other-things-to-know)*


---


**Q0a: Write a SQL query to return all data (rows) in the experiments table from the example GCP BigQuery public dataset**   
    - GCP BigQuery DATASET: `gcp-for-bioinformatics.sql_genomics_examples.<tableName>`  
    - TABLE: `experiments` - the experiments table structure (schema) & table data is shown in the graphic below    
    - SQL Keywords/Query Pattern: 

        SELECT *  
        FROM <gcp-project-name>.<bq-dataset-name>.<table-name> AS t1  

![experiments](/1_Files_&_Data/SQL-concept-graphics/experiments.png)

**Q0b: Run a SQL query to return the table structure of the experiments table from the example GCP BigQuery public dataset**     
    - SQL Example Query: 

        SELECT * EXCEPT(is_generated,generation_expression,is_stored, is_updatable)
        FROM `gcp-for-bioinformatics`.sql_genomics_examples.INFORMATION_SCHEMA.COLUMNS
        WHERE table_name="experiments"

---
**Q1a: Write a SQL query to return the names of experiments performed by Tommy Student**   
    - GCP BigQuery DATASET: `gcp-for-bioinformatics.sql_genomics_examples.experiments`  
    - TABLE: `experiments`  
    - SQL Keywords/Pattern: 

        SELECT column1 AS c1, column2 AS c2   
        FROM table1 AS t1  
        WHERE t1.c1 = 'stringValue'  

**Q1b: Write a SQL query to return the names of experiments performed by Tommy Student after Jan 1, 2004**   
    - GCP BigQuery DATASET: `gcp-for-bioinformatics.sql_genomics_examples.experiments`  
    - TABLE: `experiments`  
    - SQL Keywords/Pattern: 

        SELECT column1 AS c1, column2 AS c2   
        FROM table1 AS t1  
        WHERE t1.c1 = 'stringValue'  
        AND t1.c2 > 'dateValue'
---
---

### Part 2 - Two Table Queries

In this section, you will be writing and executing SQL queries that retrieve data from two tables.  In order to do this, you will have to do the following:
1. Identify & use a JOIN COLUMN from each of the tables in the join. These columns are often identity (id or key) values (i.e. table1.idCol, table2.idCol)
2. Determine and use the appropriate type of JOIN (i.e. Inner, Outer...) - see diagram below
3. Determine the JOIN syntax 
    - formal  `...tl JOIN t2 on t1.idCol = t2.idCol` --or-- 
    - concise `...FROM t1,t2 WHERE t1.idCol = t2.idCol`

[![Joins](/1_Files_&_Data/SQL-concept-graphics/joins.png)]()

**Q2a: Write a SQL query to return the names of genes that were either positively expressed twofold or more with a 
significance of at least 1.0, in some experiment, or negatively expressed twofold or less with a significance of at least 1.0, in some experiment. List them alongside their organisms in a two-column format**    
    - TABLES: `expression, genes`  
    - SQL Keywords: SELECT, AS, FROM, WHERE, AND, (INNNER) JOIN

        SELECT column1 AS c1, column2 AS c2, ...   
        FROM table1 AS t1, table2 AS t2  
        WHERE t1.col1 = t2.col1
        AND t.c1 = 'stringValue'  
        AND t2.c2 > floatValue' 

-OR-

        SELECT column1 AS c1, column2 AS c2, ...   
        FROM table1 AS t1 (INNER) JOIN table2 AS t2  
        ON t1.col1 = t2.col1
        WHERE t.c1 = 'stringValue'  
        AND t2.c2 > floatValue'   

![expression-genes](/1_Files_&_Data/SQL-concept-graphics/expression-genes.png)

---

**Q3: Write a SQL query to return the grandparent category of 'glycine binding'**  
    - TABLES: `gotree`  
    - SQL Keywords: SELECT, AS, FROM, WHERE, AND, (SELF) JOIN 

---

**Q4: Return the names of experiments that were performed before some Gasch experiment**  
    - TABLES: `experiments`  
    - SQL Keywords: SELECT, AS, FROM, WHERE, AND, MAX, (SELF) JOIN --or-- SUBQUERY

---

**Q5: Write a SQL query to return the names of pine genes that were positively expressed more than 0.5-fold (with a significance of 1.0 or more) in at least two experiments**  
    - TABLES: `expression, genes`  
    - SQL Keywords: SELECT, DISTINCT, AS, FROM, WHERE, AND, GROUP BY, HAVING, COUNT, VIEW --or-- SUBQUERY

- Use VIEWS Answer  
    - 5a. First find the experiments where genes are upreglated and significant.  
        - Next determine the genes which were upregulated in at least two experiments. We do this by taking the product of the upregulated genes and selecting rows where the gene ID is the same but the experiment ID is different.  
        - Finally, we determine which of these genes come from pine, and project their names.

    - 5b. We can alternatively do these steps all in one single query:

    - 5c. Subquery Answer: As another approach, we can make use of subqueries to find the answer. The key to this is to make a correlated subquery where the subquery depends on some property (in this case the gene ID) of the parent query. Note that we'll still need to make use of the Upregulated view created above to reduce code redundancy.

    - 5d. GROUP BY Answer: We can make use of advanced features for certain database systems such as PostgreSQL and MySQL to make these queries in slightly more convenient ways via the GROUP BY and COUNT.
---

**Q6: Write a SQL query to return the names of pine genes that were up-regulated 0.5-fold or more (with a significance of 1.0 or more) in at least three experiments**  
    - TABLES: `expression, genes`  
    - SQL Keywords: SELECT, DISTINCT, AS, FROM, WHERE, AND, GROUP BY, HAVING, COUNT, VIEW --or-- SUBQUERY

- VIEWS Answer  
    - 6a. Similar to the answer for question 5. The caveat here is that while the equality evaluations are transitive, while inequality evaluations are not, and so every case must be covered.

    - 6b. Alternatively:Subquery Answer - build in another correlated subquery for our original correlated subquery to make this work.  

- GROUP BY Answer - Simply adjust the count evaluation.
---

**Q7: Write a SQL query to return the names of pine genes that were up-regulated 0.5-fold or more (with a significance of 1.0 or more) in at exactly two experiments**  
    - TABLES: `expression, genes`  
    - SQL Keywords: SELECT, DISTINCT, FROM, WHERE, EXCEPT, GROUP BY, HAVING, COUNT, VIEW --or-- SUBQUERY

- VIEWS Answer  
        - 7a. The key here is identifying that taking the set of genes upregulated in two or more experiments and subtracting the set of genes upregulated in three or mor experiments gives the set of genes upregulated in precisely two experiments. The answer is the answer to question 5 subtracted by the answer to question 6.

- 7b. GROUP BY Answer
---
---
### Part 3 - Three Table Queries

**Q8: Write a SQL query to return the experiment names, genes & their expression levels in order, for genes that showed positive expression in every experiment recorded for it**  
    - TABLES: `experiments, expression, genes`  
    - SQL Keywords: SELECT, FROM, WHERE, ORDER BY  

---

**Q9: Write a SQL query to return the name of the gene that was most positively expressed in experiment exp23. Assume a minimum significance of 1.0**  
    - TABLES: `experiments, expression, genes`  
    - SQL Keywords: SELECT, FROM, WHERE, LIMIT, GROUP BY

---

**Q10: Write a SQL query to return the name of the gene that was second most positively expressed. Assume a minimum significance of 1.0**  
    - TABLES: `experiments, expression, genes`  
    - SQL Keywords: SELECT, FROM, WHERE, LIMIT, GROUP BY, ORDER BY

---

**Q11: Write a SQL query to return the gene(s) were positively expressed in ALL the experiments listed in the experiments table in order of level**  
    - TABLES: `experiments, expression, genes`  
    - SQL Keywords: SELECT, FROM, WHERE, ORDER BY

---

**Q12: Write a SQL query to return a table of genes, their annotation, and any experiment in which they were either the highest or lowest expressed (of any significance level). Include a new, 4th column to say if they were the highest or lowest**  
    - TABLES: `experiments, expression, genes`  
    - SQL Keywords: SELECT, FROM, WHERE, ORDER BY, GROUP BY, CASE, WHEN...THEN, CONCAT, DESC

---
