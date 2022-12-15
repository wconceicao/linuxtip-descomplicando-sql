-- Databricks notebook source
SELECT *

FROM silver_olist.pedido

WHERE descSituacao = 'shipped'



-- COMMAND ----------

SELECT *

FROM silver_olist.pedido

WHERE descSituacao = 'shipped'

AND year(dtPedido) = '2018'

-- Selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos de 2018

-- COMMAND ----------

SELECT *

FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'

-- Selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos (enviados ou cencelados) de 2018

-- COMMAND ----------

SELECT *

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT *,
      datediff(dtEstimativaEntrega, dtAprovado)

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30

