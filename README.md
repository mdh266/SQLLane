# A Trip Down SQLane: Tips For SQL and Spark

# A Trip Down SQLane: Tips For SQL and Spark
--------------------------------------------

## I. Introduction
------------------

In this post I want to take a trip down SQL memory lane, or just SQLLane for short. [Structured Query Language (SQL)](https://en.wikipedia.org/wiki/SQL) is something that I have been using in many different forms for years. I use it less in my day-to-day now and I wanted to memorialize some of the most important techniques I have learend. On this blog I have written prior posts about [SQLite and PostgreSQL](https://michael-harmon.com/posts/sqlwars/), [NoSQL](https://michael-harmon.com/posts/sentimentanalysis1/) and [DuckDB](https://michael-harmon.com/posts/polarsduckdb/). Elsewhere  I have used [Postgres](https://www.postgresql.org/), [Teradata](https://www.teradata.com/), [Snowflake](https://www.snowflake.com/en/), [Impala](https://impala.apache.org/), [HiveQL](https://hive.apache.org/) and [SparkSQL](https://spark.apache.org/sql/). SparkSQL and [Apache Spark](https://spark.apache.org/) more generally holds a special place in my heart. The ability to switch between SQL statements and dataframe operations as well as incorporate arbitrary transformation and actions using Python, Scala or Java make Spark an incredibly powerful tool. 

In this post, I will go over techniques that have been extremely helpful in the past and focus on using [DuckDB](http://duckdb.org/) and [Apache Spark](https://spark.apache.org/). The techniques won't really be limited to any SQL dialect and these wont be introductory techinques or queries; the internet is littered with those. Instead I'll go over some more intermediate and lesser known querying techniques that can mostly be used by any SQL dialect. The exact syntax will change between dialects, but the ideas will remain the same. 

The main topics I'll cover are:

1. [Conditional Statements](https://www.geeksforgeeks.org/sql/sql-conditional-expressions/)
2. [Window Functions](https://www.geeksforgeeks.org/sql/window-functions-in-sql/)
3. [Array Operations](https://www.postgresql.org/docs/current/functions-array.html)
4. [Special Types of Joins](https://www.w3schools.com/sql/sql_join.asp)

I'll also make a few notes of specifics to [Apache Spark](https://spark.apache.org/) that are useful in practice. One thing to note is that I use SparkSQL for both SQL queries as well as dataframe operations. The Spark API is exteremely well written and the syntax mirrors SQL so closely I usually just think of the two as interchangable. To some degree they are, but I have found in a few specific cases using the dataframe API provides advantages that I will call out. The last thing I will say is that I will try to be a little more succinct in this post and while I'll mostly be using fake data.

## Instructions 
Build the Docker image,

    docker build -t spark-lab .


Running the Docker container

    docker run -ip 8888:8888 -v "${PWD}":/home/jovyan/work spark-lab

