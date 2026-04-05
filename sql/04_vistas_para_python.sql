CREATE OR REPLACE VIEW v_ventas_para_heatmap AS
SELECT 
    trim(to_char(order_date, 'Month')) AS mes,
    trim(to_char(order_date, 'Day')) AS dia_semana,
    SUM(unit_price * quantity * (1 - discount)) AS total_ventas,
    extract(month from order_date) AS mes_num,
    extract(isodow from order_date) AS dia_num
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY mes, dia_semana, mes_num, dia_num
ORDER BY mes_num, dia_num;

CREATE OR REPLACE VIEW v_tendencia_ventas AS
SELECT 
    date_trunc('month', order_date)::date AS fecha_mes,
    SUM(unit_price * quantity * (1 - discount)) AS total_ventas
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY fecha_mes
ORDER BY fecha_mes;