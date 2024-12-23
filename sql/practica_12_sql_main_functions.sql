/*USE
    base;*/

    
    # 2. Obtener las ventas totales para los últimos 3 años
/*SELECT
    SUM(Venta) AS Ventas_totales
FROM
    ventas
WHERE
    STR_TO_DATE('Fecha venta', '%d-%b-%y') >= CURDATE() - INTERVAL 8 YEAR
GROUP BY
    Venta;*/
    
/*
SELECT YEAR(STR_TO_DATE('Fecha venta', '%d-%b-%y')) AS Año, SUM(Venta) AS Total_Ventas
FROM ventas
WHERE STR_TO_DATE('Fecha venta', '%d-%b-%y') IS NOT NULL
AND STR_TO_DATE('Fecha venta', '%d-%b-%y') >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR)
GROUP BY Año
ORDER BY Año DESC;
*/

# Condicional IF
# OK >> 3. Genera una lista para dar seguimiento a las ventas mayores a $ 2.9 M en 2019. 
/*
SELECT *, 
  IF(Venta > 2900000, 'Mayor_2.9', 'Menor_2.9') AS Seguimiento 
FROM ventas 
WHERE YEAR(STR_TO_DATE(Fecha_venta, '%d-%b-%y')) = 2019;
*/
## Parte 2. Uso de IF y CASE. Responder usando otra base de datos que se creará a continuación:
# Crear la base de datos 'market' si no existe:
/*
CREATE DATABASE IF NOT EXISTS market;
USE market;
*/

# Crear la tabla 'Ventas':
CREATE TABLE Ventas (
	ID INT AUTO_INCREMENT PRIMARY KEY,
	Producto VARCHAR(100),
	Cantidad INT,
    Precio DECIMAL(10,2),
    Descuento DECIMAL(5,2)
);

---------------------------------------------------------------------------------------------------------


# SELECT * FROM `Ventas`;

## Una vez creada la base de datos y la tabla responder las siguientes preguntas usando IF y/o CASE¶

# OK >> 4. Aplicar descuento si la cantidad es mayor a 3
/*
SELECT *,
IF(Cantidad > 3,Precio-(Precio*0.2),Precio) AS Precio_rebajado
FROM Ventas;
*/
# 5. Clasificar productos como 'Caro' o 'Barato' basado en el precio. Establezca usted mismo el criterio de 'Caro' y 'Barato'
/*
SELECT *,
IF(Precio > 100, "Caro", "Barato") AS Clasificacion_precio
FROM Ventas;
*/
# 6. Calcular el total de ventas con y sin descuento
/**/
SELECT SUM(*)

# 7. Aplicar un descuento adicional del 10% a los productos que ya tienen descuento


# 8. Aumentar el precio de los productos en un 20% si se venden menos de 3 unidades 


# 9. Asignar un rango de ventas basado en la cantidad vendida. Establezca usted mismo los criterios, por ejemplo: ALTO, MEDIO o BAJO según en valor que consideres.



# 10. Determinar la categoría del producto basado en el precio



# 11.  Aplicar un impuesto adicional para productos caros



# 12. Asignar un nivel de stock basado en la cantidad. Establece tu mismo los criterios, por ejemplo: Sobrestock, stock adecuado, bajo stock.




