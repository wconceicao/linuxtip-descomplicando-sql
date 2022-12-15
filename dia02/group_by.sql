-- Databricks notebook source
SELECT
    descUF,
    COUNT(*) AS qtDescUF
    
FROM silver_olist.cliente

GROUP BY descUF


-- COMMAND ----------

SELECT
    descUF,
    COUNT(DISTINCT idClienteUnico)
    
FROM silver_olist.cliente

GROUP BY descUF

