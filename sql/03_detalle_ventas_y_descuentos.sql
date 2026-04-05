/* PROYECTO: Análisis de Elasticidad de Descuentos
OBJETIVO: Filtrar ítems de venta basados en rangos específicos de cantidad y porcentaje de descuento.
VALOR DE NEGOCIO: Evaluar el impacto de las promociones en el volumen de ventas para ajustar la estrategia comercial de la empresa.
*/

select 
	o.order_id as orden,
	company_name as cliente,
	product_name as producto,
	quantity as cantidad,
	od.unit_price as precio,
	round((od.quantity * od.unit_price)::numeric,2) as total,
	od.discount 
from orders o 
left join customers c 
	on o.customer_id =c.customer_id 
left join order_details od 
	on od.order_id =o.order_id 
left join products p 
	on od.product_id =p.product_id 
where (od.discount > 0.15)
and (od.quantity between 10 and 30)
and (p.product_name like '%e' or p.product_name like 'C%')
order by o.order_id desc, p.product_name asc;