-- Databricks notebook source
SELECT *
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

--03 Selecione todos vendedores cariocas
SELECT *

FROM silver_olist.vendedor

WHERE descCidade = 'rio de janeiro'
OR descUF = 'SP'

-- COMMAND ----------

--04 Selecione produtos de perfumaria e bebes com altura maior que 5cm

SELECT *

FROM silver_olist.produto

WHERE descCategoria IN ('perfumaria', 'bebes')
AND vlAlturaCm >5

-- COMMAND ----------


