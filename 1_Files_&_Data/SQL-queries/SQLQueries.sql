---SQL Query Answers
---Source: https://en.wikibooks.org/wiki/Data_Management_in_Bioinformatics/SQL_Exercises

--Q0a: Return all data from the experiments table
--TABLE: experiments
--SQL Keywords: SELECT, AS, FROM

SELECT
  *
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.experiments` AS experiments

--Q0b: Return the structure of the experiments table
--TABLE: experiments
--SQL Keywords: SELECT, EXCEPT, FROM, WHERE

SELECT
  * EXCEPT(is_generated,
    generation_expression,
    is_stored,
    is_updatable)
FROM
  `gcp-for-bioinformatics`.sql_genomics_examples.INFORMATION_SCHEMA.COLUMNS
WHERE
  table_name="experiments"

--Q1a: Return the names of experiments performed by Tommy Student.
--TABLE: experiments
--SQL Keywords: SELECT, AS, FROM, WHERE

SELECT
  name
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.experiments` AS experiments
WHERE
  whoperformed = 'Tommy Student'

--Q1b: Return the names of experiments performed by Tommy Student after Jan 1, 2004.
--TABLE: experiments
--SQL Keywords: SELECT, AS, FROM, WHERE, AND

SELECT
  name
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.experiments` AS experiments
WHERE
  whoperformed = 'Tommy Student'
  AND date > '2004-01-01';

--Q2a: Return the names of genes that were either positively expressed twofold or more with a 
--significance of at least 1.0, in some experiment, or negatively expressed twofold or 
--less with a significance of at least 1.0, in some experiment. List them alongside their organisms in a two-column format
--TABLES: expression, genes
--SQL Keywords: SELECT, AS, FROM, WHERE, AND, (INNNER) JOIN
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
  AND significance >= 1.0
  AND (level >= 2.0
    OR level <= 2.0);

--2b: Formal JOIN Syntax
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
  significance >= 1.0
  AND (level >= 2.0
    OR level <= 2.0);

--Q3: Return the grandparent category of 'glycine binding'
--TABLES: gotree
--SQL Keywords: SELECT, AS, FROM, WHERE, AND, (SELF) JOIN

SELECT
  parents.parent_category
FROM
  `gcp-for-bioinformatics.sql_genomics_examples.gotree` AS children,
  `gcp-for-bioinformatics.sql_genomics_examples.gotree` AS parents
WHERE
  children.category = 'glycine binding'
  AND children.parent_category = parents.category;

--Q4: Return the names of experiments that were performed before some Gasch experiment.
--TABLES: experiments
--SQL Keywords: SELECT, AS, FROM, WHERE, AND, MAX, (SELF) JOIN --or-- SUBQUERY

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

--Q5: Return the names of pine genes that were positively expressed more than 0.5-fold (with a significance of 1.0 or more) 
--in at least two experiments.
--TABLES: expression, genes
--SQL Keywords: SELECT, DISTINCT, AS, FROM, WHERE, AND, GROUP BY, HAVING, COUNT, VIEW --or-- SUBQUERY

--Use VIEWS Answer
--First, we must find the experiments where genes are upreglated and significant.
CREATE VIEW upregulated AS
SELECT gid, experimentid
FROM expression
WHERE significance >= 1.0
AND level >= 0.5;

--Next, we must determine the genes which were upregulated in at least two experiments. 
--We do this by taking the product of the upregulated genes and selecting rows where the gene ID 
--is the same but the experiment ID is different.
CREATE VIEW upInTwoOrMore AS
SELECT DISTINCT u1.gid AS gid
FROM upregulated AS u1, upregulated AS u2
WHERE u1.gid = u2.gid
AND u1.experimentid <> u2.experimentid;

--Finally, we determine which of these genes come from pine, and project their names.
SELECT name
FROM genes, upInTwoOrMore
WHERE genes.gid = upInTwoOrMore.gid
AND organism = 'pine';

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
  AND e1.significance >= 1.0
  AND e2.significance >= 1.0
  AND e1.experimentid <> e2.experimentid
  AND organism = 'pine';

--Subquery Answer
--As another approach, we can make use of subqueries to find the answer. The key to this is to 
--make a correlated subquery where the subquery depends on some property (in this case the gene ID) 
--of the parent query. Note that we'll still need to make use of the Upregulated view created above to reduce code redundancy.
SELECT DISTINCT name
FROM genes, Upregulated AS u1
WHERE genes.gid = u1.gid
AND organism = 'pine'
AND U1.gid = (
    SELECT DISTINCT u1.gid
    FROM upregulated AS u2
    WHERE u1.gid = u2.gid
    AND u1.experimentid <> u2.experimentid
);

--GROUP BY Answer
CREATE VIEW UpInTwoOrMore AS
SELECT gid
FROM expression
WHERE level >= 0.5
AND significance >= 1.0
GROUP BY gid
HAVING COUNT(*) > 1;

SELECT name
FROM genes, upInTwoOrMore
WHERE genes.gid = upInTwoOrMore.gid
AND organism = 'pine';

--Q6: Return the names of pine genes that were up-regulated 0.5-fold or more (with a significance of 1.0 or more) in at least three experiments.
--TABLES: expression, genes
--SQL Keywords: SELECT, DISTINCT, AS, FROM, WHERE, AND, GROUP BY, HAVING, COUNT, VIEW --or-- SUBQUERY

--VIEWS Answer
--Similar to the answer for question 5. The caveat here is that while the equality evaluations are transitive, 
--while inequality evaluations are not, and so every case must be covered.
CREATE VIEW upInThreeOrMore AS
SELECT DISTINCT u1.gid AS gid
FROM upregulated AS u1, upregulated AS u2, upregulated as u3
WHERE u1.gid = u2.gid
AND u1.gid = u3.gid
AND u1.experimentid <> u2.experimentid
AND u1.experimentid <> u3.experimentid
AND u2.experimentid <> u3.experimentid;

SELECT name
FROM genes, upInThreeOrMore
WHERE genes.gid = upInThreeOrMore.gid
AND organism = 'pine';

--Self-join Answer:
SELECT DISTINCT name
FROM genes, gxpression AS e1, expression AS e2, expression AS e3
WHERE genes.gid = e1.gid
AND e1.gid = e2.gid
AND e1.gid = e3.gid
AND e1.level >= 0.5
AND e2.level >= 0.5
AND e3.level >= 0.5
AND e1.significance >= 1.0
AND e2.significance >= 1.0
AND e3.significance >= 1.0
AND e1.experimentid <> e2.experimentid
AND e1.experimentid <> e3.experimentid
AND e2.experimentid <> e3.experimentid
AND organism = 'pine';

--Subquery Answer
--We need to build in another correlated subquery for our original correlated subquery to make this work.
SELECT DISTINCT name
FROM genes, upregulated AS u1
WHERE genes.gid = u1.gid
AND organism = 'pine'
AND u1.gid = (
    SELECT DISTINCT u1.gid
    FROM upregulated AS u2
    WHERE u1.gid = u2.gid
    AND u1.gid = (
        SELECT DISTINCT u1.gid
        FROM upregulated AS u3
        WHERE u1.gid = u2.gid
        AND u1.gid = u3.gid
        AND u1.experimentid <> u2.experimentid
        AND u1.experimentid <> u3.experimentid
        AND u2.experimentid <> u3.experimentid
    )
);

--GROUP BY Answer
--Simply adjust the count evaluation.
CREATE VIEW upInThreeOrMore AS
SELECT gid
FROM expression
WHERE level >= 0.5
AND significance >= 1.0
GROUP BY gid
HAVING COUNT(*) > 2;

SELECT name
FROM genes, upInThreeOrMore
WHERE genes.gid = upInThreeOrMore.gid
AND organism = 'pine';

--Q7: Return the names of pine genes that were up-regulated 0.5-fold or more (with a significance of 1.0 or more) 
--in at exactly two experiments.
--TABLES: expression, genes
--SQL Keywords: SELECT, DISTINCT, FROM, WHERE, EXCEPT, GROUP BY, HAVING, COUNT, VIEW --or-- SUBQUERY

--VIEWS Answer
--The key here is identifying that taking the set of genes upregulated in two or more experiments 
--and subtracting the set of genes upregulated in three or mor experiments gives the set of genes upregulated in precisely two experiments. Thus, our answer is the answer to question 5 subtracted by the answer to question 6.
CREATE VIEW upInTwo AS
SELECT *
FROM upInTwoOrMore
EXCEPT
SELECT *
FROM upInThreeOrMore;

SELECT name
FROM genes, upInTwo
WHERE genes.gid = upInTwo.gid
AND organism = 'pine';

--Self-join answer
SELECT DISTINCT name
FROM genes, expression AS e1, expression AS e2
WHERE genes.gid = e1.gid
AND e1.gid = e2.gid
AND e1.level >= 0.5
AND e2.level >= 0.5
AND e1.significance >= 1.0
AND e2.significance >= 1.0
AND e1.experimentid <> e2.experimentid
AND organism = 'pine'
EXCEPT
SELECT DISTINCT name
FROM genes, expression AS e1, expression AS e2, expression AS e3
WHERE genes.gid = e1.gid
AND e1.gid = e2.gid
AND e1.gid = e3.gid
AND e1.level >= 0.5
AND e2.level >= 0.5
AND e3.level >= 0.5
AND e1.significance >= 1.0
AND e2.significance >= 1.0
AND e3.significance >= 1.0
AND e1.experimentid <> e2.experimentid
AND e1.experimentid <> e3.experimentid
AND e2.experimentid <> e3.experimentid
AND organism = 'pine';

--Subquery Answer
SELECT DISTINCT name
FROM genes, upregulated AS u1
WHERE genes.gid = u1.gid
AND organism = 'pine'
AND u1.gid = (
    SELECT DISTINCT u1.gid
    FROM upregulated AS u2
    WHERE u1.gid = u2.gid
    AND u1.experimentid <> u2.experimentid
)
EXCEPT
SELECT DISTINCT name
FROM genes, upregulated AS u1
WHERE genes.gid = U1.gid
AND organism = 'pine'
AND u1.gid = (
    SELECT DISTINCT u1.gid
    FROM upregulated AS u2
    WHERE u1.gid = u2.gid
    AND u1.gid = (
        SELECT DISTINCT u1.gid
        FROM upregulated AS u3
        WHERE u1.gid = u2.gid
        AND u1.gid = u3.gid
        AND u1.experimentid <> u2.experimentid
        AND u1.experimentid <> u3.experimentid
        AND u2.experimentid <> u3.experimentid
    )
);

--GROUP BY Answer
CREATE VIEW upInTwo AS
SELECT *
FROM upInTwoOrMore
EXCEPT
SELECT *
FROM upInThreeOrMore;

SELECT name
FROM genes, upInTwo
WHERE genes.gid = upInTwo.gid
AND organism = 'pine';

--Q8: Return the experiment names, genes & their levels in order, for genes
--that showed positive expression in every experiment recorded for it.
--TABLES: experiments, expression, genes
--SQL Keywords: SELECT, FROM, WHERE, ORDER BY 
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

--Q9: Return the name of the gene that was most positively expressed in experiment exp23? 
--Assume a minimum significance of 1.0.
--TABLES: experiments, expression, genes
--SQL Keywords: SELECT, FROM, WHERE, LIMIT, GROUP BY
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

--Q10: Return the name of the gene that was "second most positively expressed"? 
--Assume again a minimum significance of 1.0. 
--TABLES: experiments, expression, genes
--SQL Keywords: SELECT, FROM, WHERE, LIMIT, GROUP BY, ORDER BY
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

--Q11: Return the gene(s) were positively expressed in ALL the experiments listed 
--in the Experiments table in order of level. 
--TABLES: experiments, expression, genes
--SQL Keywords: SELECT, FROM, WHERE, ORDER BY
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

--Q12: Return a table of genes, their annotation, and any experiment in which 
--they were either the highest or lowest expressed (of any significance level). 
--Include a fourth column to say if they were the highest or lowest.
--TABLES: experiments, expression, genes
--SQL Keywords: SELECT, FROM, WHERE, ORDER BY, GROUP BY, CASE, WHEN...THEN, CONCAT, DESC
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
GROUP BY
  experiments.name,
  genes.name,
  genes.annotation,
  level
ORDER BY
  experiments.name, level DESC