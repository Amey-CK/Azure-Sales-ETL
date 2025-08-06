# Azure-Sales-ETL

This project demonstrates an end-to-end data engineering pipeline built on Microsoft Azure using the AdventureWorks Sales dataset. It follows the Medallion Architecture (Bronze, Silver, Gold) and showcases a modern data platform pipeline by integrating several Azure services.
![image](https://github.com/user-attachments/assets/b45b811a-a233-4aa2-9096-835ef8f77803)

The following Azure resources were provisioned:

### Azure Data Factory (ADF): 
Used for data orchestration and automation.
Pulls data from GitHub using an HTTP connector.
Stores raw data in the bronze layer of Azure Data Lake via copy activity.
### Azure Storage Account: 
Serves as the Data Lake.
Stores data across bronze (raw), silver (cleaned/transformed), and gold (curated) layers.
### Azure Databricks: 
Handles data transformation and computation.
Transforms raw data and saves it into the silver layer in Parquet format.
### Azure Synapse Analytics: 
Loads curated (gold layer) structured data using Lakehouse architecture.
Does not rely on traditional relational databases, but leverages lake storage directly.
### Business Intelligence Integration 
Connects to Synapse Analytics.
Used to visualize insights and create interactive sales dashboards.
