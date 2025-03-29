-- EXERCÍCIOS ########################################################################

-- (Exercício 1) Crie uma coluna calculada com o número de visitas realizadas por cada
-- cliente da tabela sales.customers

WITH visits AS(
SELECT
	fun.customer_id,
	COUNT(fun.visit_id) AS visits
FROM
	sales.funnel AS fun 
GROUP BY customer_id
)
SELECT 
	cus.*,
	vis.visits AS number_of_visits
FROM 
	sales.customers AS cus LEFT JOIN visits AS vis ON
	cus.customer_id = vis.customer_id;