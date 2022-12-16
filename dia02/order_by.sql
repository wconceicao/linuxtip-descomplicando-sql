-- Databricks notebook source


SELECT
    descUF,
    COUNT(DISTINCT idClienteUnico) AS qtdClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY descUF


-- COMMAND ----------

-- PRIMEIRA FORMA
SELECT
    descUF,
    COUNT(DISTINCT idClienteUnico) AS qtdClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY 2 --oRDENAR PELA SEGUNDA COLUNA DA CONSULTA


-- COMMAND ----------

-- SEGUNDA FORMA
SELECT
    descUF,
    COUNT(DISTINCT idClienteUnico) AS qtdClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtdClienteEstado


-- COMMAND ----------

-- TERCEIRA FORMA
SELECT
    descUF,
    COUNT(DISTINCT idClienteUnico) AS qtdClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY COUNT(DISTINCT idClienteUnico)

-- COMMAND ----------

-- TERCEIRA FORMA
SELECT
    descUF,
    COUNT(DISTINCT idClienteUnico) AS qtdClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtdClienteEstado DESC -- DESC COLOCA DE FORMA ORDENADA DE FORMA DECRESCENTE

-- COMMAND ----------

-- TERCEIRA FORMA
SELECT
    descUF,
    COUNT(DISTINCT idClienteUnico) AS qtdClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtdClienteEstado DESC

LIMIT 1 -- restringir a qtd de dados que deseja consultar
