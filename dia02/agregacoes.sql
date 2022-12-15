-- Databricks notebook source
SELECT count(*) AS nrLinhasNaoNulas
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    count(*) AS nrLinhasNaoNulas,
    count(idCliente) AS nrIdClienteNaoNulo
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    count(*) AS nrLinhasNaoNulas, -- linhas não nulas
    count(idCliente) AS nrIdClienteNaoNulo, -- id de Clientes nao nulos
    count(distinct idCliente) AS nrIdClienteDistintos --id de Clientes distintos
    
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    count(*) AS nrLinhasNaoNulas, -- conta linhas não nulas
    count(idCliente) AS nrIdClienteNaoNulo, -- conta id de Clientes nao nulos
    count(distinct idCliente) AS nrIdClienteDistintos, -- conta id de Clientes distintos
   
    count(idClienteUnico) AS nrIdClienteUnico,
    count(DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos -- conta id de clientes únicos distintos
    
FROM silver_olist.cliente

-- COMMAND ----------

SELECT
      COUNT(*),
      COUNT(distinct idCliente) AS qtClientes,
      COUNT(distinct idClienteUnico) AS qtClientesUnicos
      
FROM silver_olist.cliente

WHERE descCidade IN ('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT 

    ROUND( AVG(vlPreco), 2) AS avgPreco, -- MEDIA DA COLUNA vlPreço 
    
    INT(PERCENTILE(vlPreco, 0.5)) AS medianPreco, -- preco mediano dos produto
    
    AVG(vlPreco) AS maxPreco, -- maximo da coluna vlPreco
    AVG(vlFrete) AS avgFrete, --media da coluna frete
    MAX(vlFrete) AS avgFrete, -- media maxima da coluna frete
    MIN(vlFrete) AS avgFrete -- minimo da coluna frete
    

FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT COUNT(*)


FROM silver_olist.cliente

WHERE descUF = 'MT'
