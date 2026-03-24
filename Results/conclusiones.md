# 💡 Conclusiones Técnicas y Aprendizajes Clave

Tras la ejecución de este proyecto de análisis basado en la base de datos **Northwind**, estos son los aprendizajes técnicos más significativos: 

* **Dominio de la Integridad de Datos con JOINS**: La implementación de `LEFT JOIN` fue fundamental para asegurar que no se perdiera información crítica. Por ejemplo, al vincular clientes y pedidos, logré identificar cuentas inactivas que no habrían aparecido con un `INNER JOIN` tradicional. 
* **Lógica de Negocio mediante Filtrado Avanzado**: Aprendí a traducir requerimientos comerciales complejos en consultas técnicas precisas utilizando operadores como `BETWEEN` y `LIKE`. Esto permitió segmentar productos por patrones de nomenclatura y rangos de precios específicos (menores a 25). 
* **Análisis de Rentabilidad Dinámico**: El mayor desafío fue realizar cálculos de márgenes y totales directamente en la consulta (`quantity * unit_price`). Esto me permitió entender cómo SQL puede automatizar reportes financieros básicos de manera eficiente. 
* **Optimización de la Cadena de Suministro**: Al cruzar tablas de productos y proveedores, identifiqué la importancia de detectar valores nulos (`is null`), lo cual es vital para alertar sobre productos que carecen de un proveedor asignado en el sistema. 

**Conclusión final**: Este proyecto reforzó mi capacidad para transformar datos crudos en *insights* accionables, orientados siempre a mejorar la rentabilidad y la eficiencia operativa de la empresa.
