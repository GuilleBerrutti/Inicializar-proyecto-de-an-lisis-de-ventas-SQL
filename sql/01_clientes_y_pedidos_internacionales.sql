/* PROYECTO: Análisis de Mercados Internacionales
OBJETIVO: Identificar la presencia de clientes en regiones estratégicas (Francia, Alemania, Brasil).
VALOR DE NEGOCIO: Proporcionar una visión clara de la cobertura geográfica para futuras campañas de marketing, independientemente de si los clientes tienen pedidos activos.
*/

select 
	c.company_name,
	c.country,
	o.order_id,
	o.order_date,
	e.last_name as apellido_empleado
from customers c 
left join orders o 
	on c.customer_id = o.customer_id 
left join employees e 
	on o.employee_id = e.employee_id 
where (c.country ='France'or c.country = 'Germany'or c.country= 'Brazil')
and (e.last_name like '%e%' or o.order_id is null)
order by c.company_name asc, o.order_date asc;