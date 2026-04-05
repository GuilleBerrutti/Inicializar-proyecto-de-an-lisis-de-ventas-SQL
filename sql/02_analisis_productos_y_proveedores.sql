/* PROYECTO: Auditoría de Proveedores y Catálogo de Productos
OBJETIVO: Listar productos con precio menor a 25 y filtrar proveedores de USA y Francia.
VALOR DE NEGOCIO: Detectar productos sin proveedores asignados para optimizar la cadena de suministro y asegurar la disponibilidad de artículos de bajo costo.
*/

select 
	p.product_name,
	p.unit_price,
	s.company_name as nombre_del_proveedor,
	s.country as pais_del_proveedor
from products p 
left join suppliers s 
	on p.supplier_id = s.supplier_id 
where (p.unit_price < 25)
  and (s.country = 'USA' or s.country = 'France' or s.supplier_id is null)
order by s.country desc, p.product_name asc;