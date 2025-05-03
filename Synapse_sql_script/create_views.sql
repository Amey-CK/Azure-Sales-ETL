-- create all source view the same way
create view gold.territories
AS
(
    select * FROM
    OPENROWSET(
        BULK 'https://strawproject.dfs.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT='PARQUET'
    ) AS Q1
)
