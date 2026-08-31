# Azure Data Engineering ETL Pipeline

## 📌 Project Overview

This project demonstrates an end-to-end data engineering ETL pipeline built using Microsoft Azure.

The solution uses Azure Data Factory to ingest and orchestrate data processing, SQL/Synapse for database operations and stored procedures, and Azure Logic Apps for failure notifications.

The project focuses on automated data ingestion, metadata-driven processing, stored procedure execution, error handling, and pipeline monitoring.

---

## 🏗️ Architecture

```text
                Source Data
                    │
                    ▼
        ┌───────────────────────┐
        │   Azure Data Factory  │
        │                       │
        │  Copy Data Activity   │
        │          │            │
        │          ▼            │
        │      ForEach          │
        │          │            │
        │          ▼            │
        │ Stored Procedures     │
        │          │            │
        │    ┌─────┴─────┐      │
        │    │           │      │
        │ Success      Failure  │
        │    │           │      │
        └────┼───────────┼──────┘
             │           │
             ▼           ▼
        SQL/Synapse   Logic App
                         │
                         ▼
                  Email Notification
🛠️ Technologies Used
Azure Data Factory
Azure Data Lake Storage Gen2
Azure Synapse Analytics / SQL
SQL Server Management Studio (SSMS)
Azure Logic Apps
GitHub
🔄 ETL Pipeline

The pipeline performs the following major steps:

1. Data Ingestion

Azure Data Factory is used to ingest source data into the Azure environment.

The Copy Data activity handles the movement of data between the source and destination.

2. File Processing

The pipeline uses file and dataset configurations to identify and process the required source files.

Wildcard file paths are used where required to process multiple files.

3. Metadata-Driven Processing

Metadata is used to control the processing of source data and database tables.

This allows the pipeline to process multiple datasets using a common workflow rather than creating a separate pipeline for every individual dataset.

4. ForEach Processing

The ForEach activity iterates through the metadata records and processes each required item.

This allows the pipeline to dynamically process multiple tables/files.

5. Stored Procedures

SQL stored procedures are used to manage database operations and pipeline status.

The project includes procedures for:

Metadata processing
Successful processing
Failed processing
Resetting processing status
6. Success and Failure Handling

The pipeline contains separate success and failure paths.

When processing succeeds, the appropriate status is updated.

When processing fails, the failure path is triggered and the corresponding status is recorded.

7. Error Notification

Azure Logic Apps is integrated with Azure Data Factory to provide email notifications when an issue occurs during pipeline processing.

This provides an automated alert mechanism for pipeline failures.

🗄️ SQL / Database

SQL is used for database management and processing logic.

The repository contains:

SQL/
├── Tables/
├── Stored-Procedures/
└── Scripts/

The SQL section contains the table definitions, stored procedures, and supporting SQL scripts used by the project.

📂 Project Structure
Azure-Data-Engineering-ETL-Pipeline/
│
├── dataflow/
├── dataset/
├── factory/
├── integrationRuntime/
├── linkedService/
├── pipeline/
│
├── SQL/
│   ├── Tables/
│   ├── Stored-Procedures/
│   └── Scripts/
│
├── Logic-App/
│   └── workflow.json
│
├── Documentation/
│   └── Screenshots/
│
├── README.md
└── publish_config.json
📸 Project Screenshots

Screenshots demonstrating the Azure Data Factory pipelines, activities, SQL components, Logic App, and pipeline execution are available in:

Documentation/Screenshots/
⚙️ Key Features
Automated ETL pipeline orchestration
Azure Data Factory pipeline development
Dynamic file processing
Metadata-driven processing
ForEach-based processing
SQL stored procedure integration
Success and failure status tracking
Automated error handling
Logic App email notifications
Pipeline monitoring and validation
GitHub source control
🎯 Learning Outcomes

This project provided practical experience with:

Designing ETL pipelines using Azure Data Factory
Working with Azure storage and datasets
Creating and using SQL stored procedures
Implementing metadata-driven ETL processing
Building success and failure workflows
Integrating Azure Data Factory with Logic Apps
Implementing automated failure notifications
Using GitHub for project version control
