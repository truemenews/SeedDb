| 1. Introduction
----------------
You want to insert big data into mysql for test, like a few million or tens of millions rows
Please review the guide below


| 2. Directory Struct
-----------------------

    seed_db
    |
    |__seed_db.sql
    |
    |__ProcedureCreateData.sql

-----------------------


| 3. Step by step do it
-----------------------
    3.1 Goto https://github.com/truemenews/SeedDb and Download to D:\YourFolder
    3.2 Open mysql and run file: seed_db.sql to create database: seed_db && table:person
    3.3 Open mysql and run file: ProcedureCreateData.sql to create 1 million rows
-----------------------


