-- Databricks notebook source
-- 6 - Lista de pedidos feitos em dezembro de 2017 e entregues com atraso
SELECT *,

    date(dtEntregue),
    date (dtEstimativaEntrega)

FROM silver_olist.pedido

WHERE YEAR(dtPedido) = 2017
AND MONTH(dtPedido) = 12
AND descSituacao = 'delivered'
AND date(dtEntregue) > date (dtEstimativaEntrega)

-- COMMAND ----------



-- COMMAND ----------

-- 8 - Lista de pedidos com 2 ou mais parcelas menores que R$ 20,00
SELECT *,
      ROUND (vlPagamento / nrPacelas,2) AS vlParcela
      
FROM silver_olist.pagamento_pedido

WHERE nrPacelas >= 2
AND vlPagamento / nrPacelas < 20

-- COMMAND ----------

--Selecione os itens de pedidos e defina os grupos
SELECT *,
      vlPreco + vlFrete AS vlTotal,
      vlFrete / (vlPreco + vlFrete) AS pctFrete,
      
      CASE
        WHEN vlFrete / (vlPreco + vlFrete) <= 0.1 THEN '10%'
        WHEN vlFrete / (vlPreco + vlFrete) <= 0.25 THEN '10% A 25%'
        WHEN vlFrete / (vlPreco + vlFrete) <= 0.5 THEN '25% A 50%'
        ELSE '+50%'
        END AS descFretePct
  
FROM silver_olist.item_pedido
