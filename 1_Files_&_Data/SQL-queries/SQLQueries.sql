---SQL Query Answers
---Original Source: https://en.wikibooks.org/wiki/Data_Management_in_Bioinformatics/SQL_Exercises
---IMPORTANT: I significantly modified the original exercise to work with Google BigQuery, by changing table structure, data, query questions and answers

________________________________________0__________________________________________

--Q0a: Return all data from the experiments table
SELECT
  *
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.experiments` AS experiments

--Q0b: Return the structure of the experiments table
SELECT
  *
FROM
  `gcp-for-bioinformatics`.sql_genomics_examples.INFORMATION_SCHEMA.COLUMNS
WHERE
  table_name="experiments"

--Q0c: Count the rows in the experiments table
SELECT
  COUNT(*) AS NumOfRows
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.experiments`

________________________________________1__________________________________________

--Q1a: Return the names of experiments performed by Tommy Student.
SELECT
  name
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.experiments` 
WHERE
  whoperformed = 'Tommy Student'

--Q1b: Return the names of experiments performed by Tommy Student after Jan 1, 2004.
SELECT
  name
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.experiments` AS experiments
WHERE
  whoperformed = 'Tommy Student'
  AND date > '2004-01-01';

--Q1c: Return the names and ids of experiments performed by Tommy Student after Jan 1, 2004
  SELECT
  name AS Experiment,
  experimentId AS ExperimentID
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.experiments` AS experiments
WHERE
  whoperformed = 'Tommy Student'
  AND date > '2004-01-01'

________________________________________2__________________________________________

--Q2a: Return the ids and names of genes that were named hsp70 in some experiment.
SELECT
  genes.gid,
  name,
  experimentId
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.expression` AS expression,
  `gcp-for-bioinformatics.sql_genomics_examples.genes` AS genes
WHERE
  expression.gid = genes.gid 
AND
  name = 'hsp70'

--Q2b: Return the names of genes that were either positively expressed twofold or more with a significance of at least 2.0, 
--in some experiment, or negatively expressed twofold or less with a significance of at least 2.0, in some experiment. 
SELECT
  genes.gid,
  name,
  level,
  significance
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.expression` AS expression,
  `gcp-for-bioinformatics.sql_genomics_examples.genes` AS genes
WHERE
  expression.gid = genes.gid
  AND significance >= 2
  AND (level >= 2.0
    OR level <= 2.0);

--2c: Formal JOIN Syntax
SELECT
  genes.gid,
  name,
  level,
  significance
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.expression` AS expression
JOIN
  `gcp-for-bioinformatics.sql_genomics_examples.genes` AS genes
ON
  expression.gid = genes.gid
WHERE
  significance >= 2
  AND (level >= 2.0
    OR level <= 2.0);

________________________________________3__________________________________________

--Q3: Return the grandparent category of 'glycine binding'
SELECT
  parents.parent_category
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.gotree` AS children,
  `gcp-for-bioinformatics.sql_genomics_examples.gotree` AS parents
WHERE
  children.category = 'glycine binding'
  AND children.parent_category = parents.category;

________________________________________4__________________________________________

--Q4: Return the names of experiments that were performed before some Gasch experiment.

--Self Join Answer
SELECT
  e1.name
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.experiments` AS e1,
  `gcp-for-bioinformatics.sql_genomics_examples.experiments` AS e2
WHERE
  e1.date < e2.date
  AND e2.whoperformed = 'Gasch';

--Subquery Answer
SELECT
  name
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.experiments` AS experiments
WHERE
  experiments.date < (
  SELECT
    MAX(date)
  FROM
    `gcp-for-bioinformatics.sql_genomics_examples.experiments`
  WHERE
    whoperformed = 'Gasch' );

________________________________________5__________________________________________

--Q5: Return the names of pine genes that were positively expressed more than 0.5-fold (significance of 1.0+) in at least two experiments.

--Self-join answer
SELECT
  DISTINCT name
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.genes` AS genes,
  `gcp-for-bioinformatics.sql_genomics_examples.expression` AS e1,
  `gcp-for-bioinformatics.sql_genomics_examples.expression` AS e2
WHERE
  genes.gid = e1.gid
  AND e1.gid = e2.gid
  AND e1.level >= 0.5
  AND e2.level >= 0.5
  AND e1.significance >= 1
  AND e2.significance >= 1
  AND e1.experimentid <> e2.experimentid
  AND organism = 'pine';

--Use VIEWS Answer
--This view returns the experiments where genes are upregulated and significant.
CREATE VIEW upregulated AS
SELECT gid, experimentid
FROM `gcp-for-bioinformatics.sql_genomics_examples.expression` AS expression
WHERE significance >= 1
AND level >= 0.5;

--Select * using the view name as a table source to see the query results
SELECT * 
FROM `gcp-for-bioinformatics.sql_genomics_examples.upregulated`

--This view determines the genes which were upregulated in at least two experiments. 
CREATE VIEW upInTwoOrMore AS
SELECT DISTINCT u1.gid AS gid
FROM 
  `gcp-for-bioinformatics.sql_genomics_examples.upregulated` AS u1, 
  `gcp-for-bioinformatics.sql_genomics_examples.upregulated` AS u2
WHERE u1.gid = u2.gid
AND u1.experimentid <> u2.experimentid;

--Select * using the view name as a table source to see the query results
SELECT * 
FROM `gcp-for-bioinformatics.sql_genomics_examples.upInTwoOrMore`

--Then determine which of these genes come from pine, and return their names. 
SELECT name
FROM 
  `gcp-for-bioinformatics.sql_genomics_examples.genes` AS genes, 
  `gcp-for-bioinformatics.sql_genomics_examples.upInTwoOrMore` AS upInTwoOrMore
WHERE genes.gid = upInTwoOrMore.gid
AND organism = 'pine';

________________________________________6__________________________________________

--Q6: Return the names of pine genes that were up-regulated 0.5-fold or more 
--with a significance of 1.0 or more) in at least three experiments

--Self-join Answer:
SELECT DISTINCT name
FROM
 `gcp-for-bioinformatics.sql_genomics_examples.genes` AS genes,
 `gcp-for-bioinformatics.sql_genomics_examples.expression` AS e1,
 `gcp-for-bioinformatics.sql_genomics_examples.expression` AS e2,
 `gcp-for-bioinformatics.sql_genomics_examples.expression` AS e3
WHERE genes.gid = e1.gid
AND e1.gid = e2.gid
AND e1.gid = e3.gid
AND e1.level >= 0.5
AND e2.level >= 0.5
AND e3.level >= 0.5
AND e1.significance >= 1
AND e2.significance >= 1
AND e3.significance >= 1
AND e1.experimentid <> e2.experimentid
AND e1.experimentid <> e3.experimentid
AND e2.experimentid <> e3.experimentid
AND organism = 'pine';

--VIEWS Answer
CREATE VIEW `gcp-for-bioinformatics.sql_genomics_examples.upInThreeOrMore` AS
SELECT DISTINCT u1.gid AS gid
FROM 
`gcp-for-bioinformatics.sql_genomics_examples.upregulated` AS u1, 
`gcp-for-bioinformatics.sql_genomics_examples.upregulated` AS u2, 
`gcp-for-bioinformatics.sql_genomics_examples.upregulated` AS u3 
WHERE u1.gid = u2.gid
AND u1.gid = u3.gid
AND u1.experimentid <> u2.experimentid
AND u1.experimentid <> u3.experimentid
AND u2.experimentid <> u3.experimentid;

SELECT name
FROM
`gcp-for-bioinformatics.sql_genomics_examples.genes` AS genes, 
`gcp-for-bioinformatics.sql_genomics_examples.upInThreeOrMore` AS upInThreeOrMore
WHERE genes.gid = upInThreeOrMore.gid
AND organism = 'pine';

--GROUP BY Answer--Simply adjust the count evaluation.
CREATE VIEW `gcp-for-bioinformatics.sql_genomics_examples.upInThreeOrMoreGrouped` AS
SELECT gid
FROM `gcp-for-bioinformatics.sql_genomics_examples.expression` AS expression
WHERE level >= 0.5
AND significance >= 1
GROUP BY gid
HAVING COUNT(*) > 2;

SELECT name
FROM 
 `gcp-for-bioinformatics.sql_genomics_examples.genes` AS genes,  
 `gcp-for-bioinformatics.sql_genomics_examples.upInThreeOrMoreGrouped` AS upInThreeOrMoreGrouped
WHERE genes.gid = upInThreeOrMoreGrouped.gid
AND organism = 'pine';

________________________________________7__________________________________________

--Q7: Return the names of pine genes that were up-regulated 0.5-fold or more (with a significance of 1.0 or more) 
--in exactly two experiments.

--Self-join answer
SELECT DISTINCT name
FROM 
`gcp-for-bioinformatics.sql_genomics_examples.genes` AS genes, 
`gcp-for-bioinformatics.sql_genomics_examples.expression` AS e1,
`gcp-for-bioinformatics.sql_genomics_examples.expression` AS e2
WHERE genes.gid = e1.gid
AND e1.gid = e2.gid
AND e1.level >= 0.5
AND e2.level >= 0.5
AND e1.significance >= 1
AND e2.significance >= 1
AND e1.experimentid <> e2.experimentid
AND organism = 'pine'
EXCEPT DISTINCT 
SELECT name
FROM 
`gcp-for-bioinformatics.sql_genomics_examples.genes` AS genes, 
`gcp-for-bioinformatics.sql_genomics_examples.expression` AS e1,
`gcp-for-bioinformatics.sql_genomics_examples.expression` AS e2,
`gcp-for-bioinformatics.sql_genomics_examples.expression` AS e3
WHERE genes.gid = e1.gid
AND e1.gid = e2.gid
AND e1.gid = e3.gid
AND e1.level >= 0.5
AND e2.level >= 0.5
AND e3.level >= 0.5
AND e1.significance >= 1
AND e2.significance >= 1
AND e3.significance >= 1
AND e1.experimentid <> e2.experimentid
AND e1.experimentid <> e3.experimentid
AND e2.experimentid <> e3.experimentid
AND organism = 'pine';

________________________________________8__________________________________________


--Q8: Return the experiment names, genes names & their levels in order, for genes that 
--showed positive expression in every experiment recorded for it.
SELECT
  expression.gid,
  level,
  genes.name AS gene,
  experiments.name AS experiment
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.genes` AS genes,
  `gcp-for-bioinformatics.sql_genomics_examples.expression` AS expression,
  `gcp-for-bioinformatics.sql_genomics_examples.experiments` AS experiments
WHERE
  genes.gid = expression.gid
  AND experiments.experimentid = expression.experimentid
  AND level>0.0

________________________________________9__________________________________________

--Q9: Return the gene(s) were positively expressed in ALL the experiments listed in the Experiments table in order of level. 
SELECT
  expression.gid,
  level,
  genes.name AS gene,
  experiments.name AS experiment
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.genes` AS genes,
  `gcp-for-bioinformatics.sql_genomics_examples.expression` AS expression,
  `gcp-for-bioinformatics.sql_genomics_examples.experiments` AS experiments
WHERE
  genes.gid = expression.gid
  AND experiments.experimentid = expression.experimentid
  AND level>0.0
ORDER BY
  level

________________________________________10__________________________________________

--Q10: Return the name of the gene that was most positively expressed in experiment exp23. Assume a minimum level of 1.0.
SELECT
  genes.name,
  level
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.genes` AS genes,
  `gcp-for-bioinformatics.sql_genomics_examples.expression` AS expression,
  `gcp-for-bioinformatics.sql_genomics_examples.experiments` AS experiments
WHERE
  genes.gid = expression.gid
  AND experiments.experimentid = expression.experimentid
  AND experiments.experimentid = 'exp23'
  AND level>1.0
GROUP BY
  genes.name,
  level
LIMIT
  1

_______________________________________11__________________________________________

--Q11: Return the name of the gene that was "second most positively expressed". Assume a minimum level of 1.0. 
SELECT
  genes.name,
  level
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.genes` AS genes,
  `gcp-for-bioinformatics.sql_genomics_examples.expression` AS expression,
  `gcp-for-bioinformatics.sql_genomics_examples.experiments` AS experiments
WHERE
  genes.gid = expression.gid
  AND experiments.experimentid = expression.experimentid
  AND experiments.experimentid = 'exp23'
  AND level>1.0
GROUP BY
  genes.name,
  level
ORDER BY
  level ASC
LIMIT
  1

________________________________________12__________________________________________

--Q12: Return a table of experiments, genes names and their annotation shown as one value, 
--and their levels listed by experiment and level in descending order
--Create a new fourth column which prints "positive" or "negative", based on level value.  
SELECT
  experiments.name AS experiment_Name,
  CONCAT(genes.name, " - ", genes.annotation) AS gene_Info,
  level,
  CASE
    WHEN level > 0.0 THEN 'postive'
    WHEN level < 0.0 THEN 'negative'
  END
   AS results
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.genes` AS genes,
  `gcp-for-bioinformatics.sql_genomics_examples.expression` AS expression,
  `gcp-for-bioinformatics.sql_genomics_examples.experiments` AS experiments
WHERE
  genes.gid = expression.gid
  AND experiments.experimentid = expression.experimentid
ORDER BY
  experiments.name, level DESC