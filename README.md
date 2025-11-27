# A Trip Down SQL Memory Lane: Tips For SQL and Spark
--------------------------------------------

### About
-------------

In this post I want to take a trip down SQL memory lane, or just SQLLane for short. [Structured Query Language (SQL)](https://en.wikipedia.org/wiki/SQL) is technology that I have been using in many different forms for years. More recently I use it less than I used to and I want to memorialize some of the most important techniques that I have learend in this blog post. I have written prior posts about [SQLite and PostgreSQL](https://michael-harmon.com/posts/sqlwars/), [NoSQL](https://michael-harmon.com/posts/sentimentanalysis1/) and [DuckDB](https://michael-harmon.com/posts/polarsduckdb/). Elsewhere I have used [Postgres](https://www.postgresql.org/), [Teradata](https://www.teradata.com/), [Snowflake](https://www.snowflake.com/en/), [Impala](https://impala.apache.org/), [HiveQL](https://hive.apache.org/) and [SparkSQL](https://spark.apache.org/sql/). SparkSQL and [Apache Spark](https://spark.apache.org/) more generally holds a special place in my heart. Spark has the ability to switch between SQL statements and dataframe operations as well as incorporate arbitrary transformation and actions using Python, Scala or Java which make Spark an incredibly powerful technology. 

In this post, I will go over SQL techniques that have been extremely helpful in the past and focus on using [DuckDB](http://duckdb.org/) and [Apache Spark](https://spark.apache.org/) with some synthetic data for examples. These techniques are not limited to any SQL dialect and are not introductory techinques or queries; the internet is littered with those. Instead I'll go over some more intermediate and lesser known techniques that can be used by most SQL dialects. The exact syntax will change between dialects, but the ideas will remain the same. 

The main topics I'll cover are:

1. [Conditional Statements](https://www.geeksforgeeks.org/sql/sql-conditional-expressions/)
    * TRIM, LOWER & REGEXP_REPLACE
    * CASE WHEN .. THEN ... END
    * Conditional statements within aggregations
2. [Window Functions](https://www.geeksforgeeks.org/sql/window-functions-in-sql/)
    *  RANK, DENSE_RANK & ROW_NUMBER
    *  QUALIFY
    *  LEAD & LAG
    *  Moving averages
3. [Array Operations](https://www.postgresql.org/docs/current/functions-array.html)
    * COLLECT_SET/ARRAY_AGG
    * EXPLODE/UNNEST
4. [Special Types of Joins](https://www.w3schools.com/sql/sql_join.asp)
    * Using a JOIN instead of CASE WHEN
    * Broadcast joins in Spark
    * Filtering by joining
    * ANTI JOINS

I'll also make a few notes of specifics to Spark that are useful in practice. One thing to note is that I use term SparkSQL for both SQL queries as well as Spark dataframe operations. In general the two APIS have the performance and the Spark dataframe API is exteremely well written with a syntax that mirrors SQL so closely I usually just think of the two as interchangable. To some degree they are, but I have found in a few specific cases using the dataframe API provides advantages that I will call out.

## Using this notebook
------------------------
To build the Docker image for this notebook use the command,

    docker build -t spark-lab .


Then to use the notebook use the command,

    docker run -ip 8888:8888 -v "${PWD}":/home/jovyan/work spark-lab

And copy the link with the ip address 127.0.0.1:8888 into your broswer.
