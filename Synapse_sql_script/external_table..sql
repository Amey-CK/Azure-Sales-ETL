CREATE DATABASE SCOPED CREDENTIAL cred_amey
WITH IDENTITY='Managed Identity'
;
CREATE EXTERNAL data SOURCE source_silver
WITH
(
    location='https://strawproject.dfs.core.windows.net/silver',
    CREDENTIAL=cred_amey
    )
    ;
    CREATE EXTERNAL data SOURCE source_gold
WITH
(
    location='https://strawproject.dfs.core.windows.net/gold',
    CREDENTIAL=cred_amey
    )

    ;

CREATE EXTERNAL file FORMAT format_parquet
with 
(
    FORMAT_TYPE=PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

;

--CREATE EXTERNAL TABLE EXTSALES
CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION='extsales',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=format_parquet
)
as 
SELECT * from gold.sales

;

SELECT * from gold.extsales
