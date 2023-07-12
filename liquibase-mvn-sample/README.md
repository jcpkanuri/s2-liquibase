# SINGLESTORE DATABASE - LIQUIBASE - CMDLINE EXAMPLE

<br />

#### **Liquibase**


Liquibase is a database schema change management solution that enables you to revise and release database changes faster and safer from development to production.

<br />
<br />


#### **SingleStore Database**


SingleStore (formerly MemSQL) is a proprietary, cloud-native database designed for data-intensive applications. A distributed, relational, SQL database management system (RDBMS) that features ANSI SQL support, it is known for speed in data ingest, transaction processing, and query processing.



This project contains 2 directories

 - **db**
    
        Contains docker-compose file and init sql to initialize database with default user and database


 - **liquibase-cmdline**

        Contains custom docker file ( liquibase with singelstore db jdbc jar)        

        changelog file in sql format

        liquibase.properties



