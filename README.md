# Examination-System

This repository contains the documentation for an automated Examination System designed to facilitate online exams and manage exam-related data efficiently. The system includes a desktop application and a SQL database to support various functionalities and reports.

https://github.com/NouraAlgohary/Examination-System/assets/103903785/ef0027cc-0722-4196-9b61-46b1bbb3c6bb

## Table of Contents
1. [Project Milestones](#project-milestones)
2. [Entity Relationship Diagram (ERD)](#entity-relationship-diagram-erd)
3. [Database Backup](#database-backup)
4. [Desktop Application](#desktop-application)
5. [Database Dictionary](#database-dictionary)
6. [Stored Procedures](#stored-procedures)
7. [Reports](#reports)
8. [Integration with Reporting Tools](#integration-with-reporting-tools)
9. [Additional Features](#additional-features)

## 1. Project Milestones
- **Initial Planning**: Project scope, requirements, and milestones were defined.
- **Database Design**: The entity-relationship diagram (ERD) and database schema were developed.
- **ETL Implementation (CSV to Database)**: ETL processes were implemented to efficiently transfer data from CSV files into the MS SQL Server database.
- **Stored Procedures Implementation**: Stored procedures for database operations were designed and implemented.
- **Data Warehouse (DWH) Design and Creation**: The schema and architecture for the Data Warehouse were designed.
- **ETL Implementation (Database to Data Warehouse)**: Additional ETL processes were implemented to transfer data from the MS SQL Server database to a Data Warehouse (DWH).
- **Desktop Application Development**: The desktop application for administering exams and managing data was created.
- **Reporting Functionality**: Reporting tools were integrated, and various reports were implemented as per requirements.
- **Testing and Debugging**: Thorough testing was conducted to ensure system functionality and reliability.
- **Documentation**: The system architecture, functionalities, and usage guidelines were documented.


## 2. Entity Relationship Diagram (ERD)
The ERD illustrates the relationships between entities in the database schema. It provides a visual representation of how data is organized and connected within the system.



![ERD drawio](https://github.com/NouraAlgohary/Examination-System/assets/103903785/13aeb2b8-80d1-4342-8f87-ab8f43337524)


## 3. Database Backup
A backup of the database will be maintained periodically to ensure data integrity and provide a restore point in case of any unforeseen issues or data loss.

## 4. Desktop Application
The desktop application serves as the user interface for interacting with the Examination System. It provides functionalities for administering exams, managing student and course information, and generating reports.

## 5. Database Dictionary
The database dictionary contains documentation regarding the structure and attributes of each table in the database. It serves as a reference for developers and administrators to understand the database schema.

## 6. Stored Procedures
Stored procedures are used to encapsulate and execute SQL queries within the database. They facilitate various operations such as CRUD operations on tables, exam generation, exam answers management, and exam correction.

## 7. Reports
The Examination System provides various reports to assist ITI staff in managing student and course information effectively. These reports include student information by department, student grades by ID, instructor's courses and student count, course topics by ID, exam questions by number, and student answers by exam and ID.

## 8. Integration with Reporting Tools
To enhance reporting capabilities, the Examination System is integrated with various reporting tools such as Crystal Reports, Report Builder, and SQL Server Reporting Services (SSRS). This integration provides additional flexibility and customization options for generating and presenting reports.

## 9. Additional Features
In addition to core functionalities, the Examination System supports certificate generation, freelancing opportunities for customization, collaboration with companies, hiring positions, Power BI Dashboards for data visualization, and support for both desktop and web applications using PowerApps.

## Conclusion
The Examination System outlined in this documentation streamlines the process of conducting online exams and managing exam-related data efficiently. It offers a comprehensive solution for educational institutions like ITI to manage exams and student information effectively.


-------------------------------------------------------------------------------------------------------------------------------------------------
ETL1 *This involves designing data extraction routines to read data from CSV files, transformation logic to cleanse, validate, and format the data according to the database schema, and loading mechanisms to insert the transformed data into the appropriate tables.*

DWH *This includes defining dimensional models, fact and dimension tables, as well as considering data integration, aggregation, and reporting requirements. Once the design is finalized, proceed with the creation of the Data Warehouse, setting up the necessary infrastructure and configurations to support data storage, processing, and analytics.*

ETL2 *This involves extracting relevant data from the database tables, transforming it to meet the requirements of the DWH schema, and loading it into the DWH. This milestone aims to explore the possibility of leveraging a Data Warehouse for advanced reporting and analytics functionalities, providing a centralized repository for integrated data analysis.*

-------------------------------------------------------------------------------------------------------------------------------------------------

## Dashboards
### (Farah) Instructor 
- Overview
- Drill through
- Details
### (Farah) Student 
- Overview
- Student KPIs
- Drill through + details
- Top Students
### (Farah) Branch 
- Overview
- KPIs
### Course 
- (Noura) Overview
### Track (7 Dashboard)
### Grades
SUM = 17
