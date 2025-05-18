CALL InsertFab ("Asus");
CALL InsertFab ("Lenovo");
CALL InsertFab ("Hewlett-Packard");
CALL InsertFab ("Samsung");
CALL InsertFab ("Seagate");
CALL InsertFab ("Crucial");
CALL InsertFab ("Gigabyte");
CALL InsertFab ("Huawei");
CALL InsertFab ("Xiaomi");

SELECT * FROM Fabricante;

CALL InsertProduct ("Disco duro SATA3 1TB",86.99 ,5);
CALL InsertProduct ("Memoria RAM DDR4 8GB",120,6);
CALL InsertProduct ("Disco SSD 1 TB",150.99,4);
CALL InsertProduct ("GeForce GTX 1050Ti",185,7);
CALL InsertProduct ("GeForce GTX 1080 Xtreme",755,6);
CALL InsertProduct ("Monitor 24 LED Full HD",202,1);
CALL InsertProduct ("Monitor 27 LED Full HD",245.99,1);
CALL InsertProduct ("Portátil Yoga 520",559,2);
CALL InsertProduct ("Portátil Ideapd 320",444,2);
CALL InsertProduct ("Impresora HP Deskjet 3720",59.99,3);
CALL InsertProduct ("Impresora HP Laserjet Pro M26nw",180,3);


-- 1. Lista el nombre de todos los productos que hay en la tabla producto.
SELECT nombre FROM producto;

-- 2. Lista los nombres y los precios de todos los productos de la tabla producto.
SELECT nombre,precio FROM producto;

-- 3. Lista todas las columnas de la tabla producto.
SELECT * FROM producto;

-- 4. Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).
SELECT Nombre, Precio AS "Euros",(Precio * 1.1) AS "USD" FROM Producto;

-- 5. Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares
SELECT Nombre AS "nombre de producto", precio AS "Euros",(Precio * 1.1) AS "USD" FROM Producto;

-- 6. Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.
SELECT UPPER(Nombre) AS "NOMBRE" ,precio FROM producto;

-- 7. Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.
SELECT LOWER(Nombre) AS "nombre",precio FROM producto;

-- 8. Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.
SELECT Nombre, UPPER(LEFT(Nombre, 2)) AS "Iniciales" FROM Fabricante;

-- 9. Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.
SELECT Nombre, ROUND(precio) AS "Precio" FROM producto;

-- 10. Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.
SELECT Nombre, TRUNCATE(precio,0) AS "Precio" FROM producto;

-- 11. Lista el identificador de los fabricantes que tienen productos en la tabla producto.
SELECT Codigo_fabricante FROM producto;

-- 12. Lista el identificador de los fabricantes que tienen productos en la tabla producto, eliminando los identificadores que aparecen repetidos.
SELECT DISTINCT Codigo_fabricante FROM producto;

-- 13. Lista los nombres de los fabricantes ordenados de forma ascendente.
SELECT Nombre FROM Fabricante ORDER BY Nombre ASC;

-- 14. Lista los nombres de los fabricantes ordenados de forma descendente.
SELECT Nombre FROM Fabricante ORDER BY Nombre DESC;

-- 15. Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.
SELECT Nombre,Precio FROM Producto ORDER BY Nombre ASC, Precio DESC;

-- 16. Devuelve una lista con las 5 primeras filas de la tabla fabricante
SELECT * FROM Fabricante LIMIT 5;

-- 17. Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta.
SELECT * FROM Fabricante LIMIT 3, 2;

-- 18. Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas ORDER BY y LIMIT)
SELECT Nombre,Precio FROM Producto ORDER BY Nombre ASC,Precio ASC LIMIT 1;

-- 19. Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER BY y LIMIT)
SELECT Nombre,Precio FROM Producto ORDER BY Nombre DESC, Precio DESC LIMIT 1;

-- 20. Lista el nombre de todos los productos del fabricante cuyo identificador de fabricante es igual a 2.
SELECT Nombre,Codigo_fabricante FROM Producto ORDER BY Codigo_fabricante ASC LIMIT 2,2;

-- 21. Lista el nombre de los productos que tienen un precio menor o igual a 120€.
SELECT Nombre FROM Producto WHERE Precio <= 120;

-- 22. Lista el nombre de los productos que tienen un precio mayor o igual a 400€.
SELECT Nombre FROM Producto WHERE Precio >=400;

-- 23. Lista el nombre de los productos que no tienen un precio mayor o igual a 400€
SELECT Nombre FROM producto WHERE Precio <400;

-- 24. Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar el operador BETWEEN
SELECT * FROM Producto WHERE Precio >= 80 AND Precio <=300;

-- 25. Lista todos los productos que tengan un precio entre 60€ y 200€. Utilizando el operador BETWEEN.
SELECT  * FROM Producto WHERE Precio BETWEEN 60 AND 200;

-- 26. Lista todos los productos que tengan un precio mayor que 200€ y que el identificador de fabricante sea igual a 6.
SELECT * FROM Producto WHERE Precio > 200 AND Codigo_fabricante = 6;

-- 27. Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Sin utilizar el operador IN.
SELECT * FROM Producto WHERE Codigo_fabricante = 1 OR Codigo_fabricante = 3 OR Codigo_fabricante = 5;

-- 28. Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Utilizando el operador IN.
SELECT * FROM Producto WHERE Codigo_fabricante IN (1, 3, 5);

-- 29. Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100 el valor del precio). Cree un alias para la columna que contiene el precio que se llame céntimos.
SELECT Nombre, Precio * 100 AS céntimos FROM Producto;

-- 30. Lista los nombres de los fabricantes cuyo nombre empiece por la letra S.
SELECT Nombre FROM Fabricante WHERE Nombre LIKE "s%";

-- 31. Lista los nombres de los fabricantes cuyo nombre termine por la vocal e.
SELECT Nombre FROM Fabricante WHERE Nombre LIKE "%e";

-- 32. Lista los nombres de los fabricantes cuyo nombre contenga el carácter w.
SELECT Nombre FROM Fabricante WHERE Nombre LIKE "%w%";

-- 33. Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres.
SELECT Nombre FROM Fabricante WHERE LENGTH(Nombre) = 4;

-- 34. Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil en el nombre.
SELECT Nombre FROM Producto WHERE Nombre LIKE "%Portatil%";

-- 35. Devuelve una lista con el nombre de todos los productos que contienen la cadena Monitor en el nombre y tienen un precio inferior a 215 €.
SELECT Nombre FROM Producto WHERE Precio < 215 AND Nombre LIKE "%Monitor%"; 

-- 36. Lista el nombre y el precio de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).
SELECT Nombre, Precio FROM Producto WHERE Precio >= 180 ORDER BY Precio DESC,Nombre ASC;

-- 1.1.4 Consultas multitabla (Composición interna)
-- 1. Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.
SELECT p.Nombre, p.Precio, f.Nombre AS "Nombre de Fabricante" FROM Producto p, Fabricante f WHERE p.Codigo_fabricante = f.Codigo;
SELECT p.Nombre, p.Precio, f.Nombre AS "Nombre de Fabreicante" FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo;

-- 2. Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. Ordene el resultado por el nombre del fabricante, por orden alfabético.
SELECT p.Nombre, p.Precio, f.Nombre AS "Nombre de Fabricante" FROM Producto p, Fabricante f WHERE p.Codigo_fabricante = f.Codigo ORDER BY f.Nombre ASC;
SELECT p.Nombre, p.Precio, f.Nombre AS "Nombre de Fabricante" FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo ORDER BY f.Nombre ASC;

-- 3. Devuelve una lista con el identificador del producto, nombre del producto, identificador del fabricante y nombre del fabricante, de todos los productos de la base de datos.
SELECT p.CodigoP, p.Nombre, f.Codigo, f.Nombre  AS "Nombre de Fabricante" FROM Producto p, Fabricante f WHERE p.Codigo_fabricante = f.Codigo;
SELECT p.CodigoP, p.Nombre, f.Codigo, f.Nombre AS "Nombre de Fabricante" FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo;

-- 4. Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato
SELECT p.Nombre, p.Precio, f.Nombre AS "Nombre de Fabricante" FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo ORDER BY p.Precio ASC LIMIT 1;
SELECT p.Nombre, p.Precio, f.Nombre AS "Nombre de Fabricante" FROM Producto p, Fabricante f WHERE p.Codigo_fabricante = f.Codigo ORDER BY p.Precio ASC LIMIT 1;

-- 5. Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.
SELECT p.Nombre, p.Precio, f.Nombre AS "Nombre de Fabricante" FROM Producto p, Fabricante f WHERE p.Codigo_fabricante = f.Codigo ORDER BY p.Precio DESC LIMIT 1;
SELECT p.Nombre, p.Precio, f.Nombre AS "Nombre de Fabricante" FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo ORDER BY p.Precio DESC LIMIT 1;

-- 6. Devuelve una lista de todos los productos del fabricante Lenovo.
SELECT p.* FROM Producto p, Fabricante f WHERE p.Codigo_fabricante = f.Codigo AND f.Nombre = "Lenovo";
SELECT p.* FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = "Lenovo";

-- 7. Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.
SELECT p.* FROM Producto p, Fabricante f WHERE p.Codigo_fabricante = f.Codigo AND f.Nombre = 'Crucial' AND p.Precio > 200;
SELECT p.* FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = 'Crucial' AND p.Precio > 200;

-- 8. Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett- Packardy Seagate. Sin utilizar el operador IN.
SELECT p.* FROM Producto p, Fabricante f WHERE p.Codigo_fabricante = f.Codigo AND (f.Nombre = "asus" OR f.Nombre = "Hewlett-Packard" OR f.Nombre = "Seagate");
SELECT p.* FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = "Asus" OR f.Nombre = "Hewlett-Packard" OR f.Nombre = "Seagate";

-- 9. Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett- Packardy Seagate. Utilizando el operador IN.
SELECT p.* FROM Producto p, Fabricante f WHERE p.Codigo_fabricante = f.Codigo AND f.Nombre IN ("Asus", "Hewlett-Packard", "Seagate");
SELECT p.* FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre IN ("Asus", "Hewlett-Packard", "Seagate");

-- 10. Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre termine por la vocal e.
SELECT p.Nombre, p.Precio FROM Producto p, Fabricante f WHERE p.Codigo_fabricante = f.Codigo AND f.Nombre LIKE "%e";
SELECT p.Nombre, p.Precio FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre LIKE "%e";

-- 11. Devuelve un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contenga el carácter w en su nombre.
SELECT p.Nombre, p.Precio FROM Producto p, Fabricante f WHERE p.Codigo_fabricante = f.Codigo AND f.Nombre LIKE "%w%";
SELECT p.Nombre, p.Precio FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre LIKE "%w%";

-- 12. Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente)
SELECT p.Nombre, p.Precio, f.Nombre AS "Nombre de fbricante" FROM Producto p, Fabricante f  WHERE p.Codigo_fabricante = f.Codigo AND p.Precio >= 180 ORDER BY p.Precio DESC, p.Nombre ASC;
SELECT p.Nombre, p.Precio, f.Nombre AS "Nombre de Fabricante" FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE p.Precio >= 180 ORDER BY p.Precio DESC, p.Nombre ASC;

-- 13. Devuelve un listado con el identificador y el nombre de fabricante, solamente de aquellos fabricantes que tienen productos asociados en la base de datos.
SELECT DISTINCT f.Codigo, f.Nombre FROM Producto p, Fabricante f WHERE p.Codigo_fabricante = f.Codigo;
SELECT DISTINCT f.Codigo, f.Nombre FROM Fabricante f JOIN Producto p ON p.Codigo_fabricante = f.Codigo;

-- 1.1.5 Consultas multitabla (Composición externa)
-- 1. Devuelve un listado de todos los fabricantes que existen en la base de datos, junto con los productos que tiene cada uno de ellos. El listado deberá mostrar también aquellos fabricantes que no tienen productos asociados.
SELECT f.Nombre AS "Fabricante", p.Nombre AS "Producto" FROM Producto p RIGHT JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo;
SELECT f.Nombre AS "Fabricante", p.Nombre AS "Producto" FROM Fabricante f LEFT JOIN Producto p ON f.Codigo = p.Codigo_fabricante;

-- 2. Devuelve un listado donde sólo aparezcan aquellos fabricantes que no tienen ningún producto asociado
SELECT f.Nombre FROM Producto p RIGHT JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE p.CodigoP IS NULL;

-- 3. ¿Pueden existir productos que no estén relacionados con un fabricante? Justifique su respuesta.


-- 1.1.6 Consultas resumen
-- 1. Calcula el número total de productos que hay en la tabla productos.
SELECT COUNT(*) AS "Total de productos" FROM Producto;

-- 2. Calcula el número total de fabricantes que hay en la tabla fabricante.
SELECT COUNT(*) AS "Total de fabricantes" FROM Fabricante;

-- 3. Calcula el número de valores distintos de identificador de fabricante aparecen en la tabla productos.
SELECT COUNT(DISTINCT Codigo_fabricante) AS "Fabricantes distintos" FROM Producto;

-- 4. Calcula la media del precio de todos los productos
SELECT AVG(Precio) AS "Promedio Precios" FROM Producto;

-- 5. Calcula el precio más barato de todos los productos.
SELECT MIN(Precio) AS "Precio mas barato" FROM Producto;

-- 6. Calcula el precio más caro de todos los productos
SELECT MAX(Precio) AS "Precio mas caro" FROM Producto;

-- 7. Lista el nombre y el precio del producto más barato.
SELECT Nombre, Precio FROM Producto ORDER BY Precio ASC LIMIT 1;

-- 8. Lista el nombre y el precio del producto más caro.
SELECT Nombre, Precio FROM Producto ORDER BY Precio DESC LIMIT 1;

-- 9. Calcula la suma de los precios de todos los productos.
SELECT SUM(Precio) AS "Suma de precios" FROM Producto;

-- 10. Calcula el número de productos que tiene el fabricante Asus.
SELECT COUNT(*) AS "Productos Asus" FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = "Asus";

-- 11. Calcula la media del precio de todos los productos del fabricante Asus.
SELECT AVG(p.Precio) AS "Promedio Asus" FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = "Asus";

-- 12. Calcula el precio más barato de todos los productos del fabricante Asus.
SELECT MIN(p.Precio) AS "Minimo de Asus" FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = "Asus";

-- 13. Calcula el precio más caro de todos los productos del fabricante Asus.
SELECT MAX(p.Precio) AS "Maximo de Asus" FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = "asus";

-- 14. Calcula la suma de todos los productos del fabricante Asus.
SELECT SUM(p.Precio) AS "Suma de Asus" FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = "Asus";

-- 15. Muestra el precio máximo, precio mínimo, precio medio y el número total de productos que tiene el fabricante Crucial.
SELECT MAX(p.Precio) AS "Precio Maximo", MIN(p.Precio) AS "Precio Minimo",AVG(p.Precio) AS "Precio Promedio",COUNT(*) AS "Total de productos" FROM Producto p JOIN Fabricante f 
ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = "Crucial";

-- 16. Muestra el número total de productos que tiene cada uno de los fabricantes. El listado también debe incluir los fabricantes que no tienen ningún producto. 
-- El resultado mostrará dos columnas, una con el nombre del fabricante y otra con el número de productos que tiene. Ordene el resultado descendentemente por el número de productos.
SELECT f.Nombre AS "Fabricante", COUNT(p.CodigoP) AS "Total de Productos" FROM Fabricante f LEFT JOIN Producto p ON f.Codigo = p.Codigo_fabricante GROUP BY f.Codigo, f.Nombre 
ORDER BY "Total de Productos" DESC;

-- 17. Muestra el precio máximo, precio mínimo y precio medio de los productos de cada uno de los fabricantes. El resultado mostrará el nombre del fabricante junto con los datos que se solicitan.
SELECT f.Nombre AS "Fabricante", MAX(p.Precio) AS "Precio Maximo" , AVG(p.Precio) AS "Precio Promedio", MIN(p.Precio) AS "Precio Minimo" FROM Fabricante f JOIN Producto p
ON f.Codigo = p.Codigo_fabricante GROUP BY f.Codigo, f.Nombre;

-- 18. Muestra el precio máximo, precio mínimo, precio medio y el número total de productos de los fabricantes que tienen un precio medio superior a 200€. 
-- No es necesario mostrar el nombre del fabricante, con el identificador del fabricante es suficiente.
SELECT p.Codigo_fabricante AS "Codigo del Fabricante", MAX(p.Precio) AS "Maximo Precio" , MIN(p.Precio) AS "Precio Minimo",AVG(p.Precio) AS "Precio promedio" ,COUNT(*) AS "Total de productos" 
FROM Producto p GROUP BY p.Codigo_fabricante HAVING AVG (p.Precio) > 200;

-- 19. Muestra el nombre de cada fabricante, junto con el precio máximo, precio mínimo, precio medio y el número total de productos de los fabricantes que tienen un precio medio superior a 200€. 
-- Es necesario mostrar el nombre del fabricante.
SELECT f.Nombre AS "Fabricante", MAX(p.Precio) AS "Precio Maximo", MIN(p.Precio) AS "Precio minimo",AVG(p.Precio) AS "Precio promedio",COUNT(*) AS "Total de productos"
FROM Fabricante f JOIN Producto p ON f.Codigo = p.Codigo_fabricante GROUP BY f.Codigo, f.Nombre HAVING AVG(p.Precio) > 200;

-- 20. Calcula el número de productos que tienen un precio mayor o igual a 180€.
SELECT COUNT(*) AS "Precio mayor o igual a 180" FROM Producto WHERE Precio >= 180;

-- 21. Calcula el número de productos que tiene cada fabricante con un precio mayor o igual a 180€.
SELECT f.Nombre AS "Fabricante",COUNT(*) AS "Precio mayor o igual a 180" FROM Fabricante f JOIN Producto p ON f.Codigo = p.Codigo_fabricante WHERE p.Precio >= 180 GROUP BY f.Codigo, f.Nombre;

-- 22. Lista el precio medio los productos de cada fabricante, mostrando solamente el identificador del fabricante
SELECT Codigo_fabricante AS "Codigo de fabricante",AVG(Precio) AS "Precio promedio" FROM Producto GROUP BY Codigo_fabricante;

-- 23. Lista el precio medio los productos de cada fabricante, mostrando solamente el nombre del fabricante.
SELECT f.Nombre AS "Fabricante", AVG(p.Precio) AS "Precio promedio" FROM Fabricante f JOIN Producto p ON f.Codigo = p.Codigo_fabricante GROUP BY f.Codigo, f.Nombre;

-- 24. Lista los nombres de los fabricantes cuyos productos tienen un precio medio mayor o igual a 150€.
SELECT f.Nombre AS "Fabricante" FROM Fabricante f JOIN Producto p ON f.Codigo = p.Codigo_fabricante GROUP BY f.Codigo, f.Nombre HAVING AVG(p.Precio) >= 150;

-- 25. Devuelve un listado con los nombres de los fabricantes que tienen 2 o más productos
SELECT f.Nombre AS "Fabricante" FROM Fabricante f LEFT JOIN Producto p ON f.Codigo = p.Codigo_fabricante GROUP BY f.Codigo, f.Nombre HAVING COUNT(p.CodigoP) >= 2;

-- 26. Devuelve un listado con los nombres de los fabricantes y el número de productos que tiene cada uno con un precio superior o igual a 220 €. 
-- No es necesario mostrar el nombre de los fabricantes que no tienen productos que cumplan la condición.
SELECT f.Nombre,COUNT(p.CodigoP) AS "Total" FROM Fabricante f JOIN Producto p ON f.Codigo = p.Codigo_fabricante WHERE p.Precio >= 220 GROUP BY f.Codigo, f.Nombre ORDER BY CodigoP DESC,Nombre DESC;

-- 27. Devuelve un listado con los nombres de los fabricantes y el número de productos que tiene cada uno con un precio superior o igual a 220 €. 
-- El listado debe mostrar el nombre de todos los fabricantes, es decir, si hay algún fabricante que no tiene productos con un precio superior o igual a 220€ deberá aparecer en el listado con un
-- valor igual a 0 en el número de productos
SELECT f.Nombre,COUNT(CASE WHEN p.Precio >= 220 THEN 1 END) AS "Total" FROM Fabricante f LEFT JOIN Producto p ON f.Codigo = p.Codigo_fabricante GROUP BY f.Codigo, f.Nombre 
ORDER BY Total DESC,Nombre ASC;

-- 28. Devuelve un listado con los nombres de los fabricantes donde la suma del precio de todos sus productos es superior a 1000 €.
SELECT f.Nombre FROM Fabricante f JOIN Producto p ON f.Codigo = p.Codigo_fabricante GROUP BY f.Codigo, f.Nombre HAVING SUM(p.Precio) > 1000;

-- 29. Devuelve un listado con el nombre del producto más caro que tiene cada fabricante. El resultado debe tener tres columnas: nombre del producto, precio y nombre del fabricante. 
-- El resultado tiene que estar ordenado alfabéticamente de menor a mayor por el nombre del fabricante.
SELECT p.Nombre AS "producto",p.Precio, f.Nombre AS "Fabricante" FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo
WHERE (f.Codigo, p.Precio) IN (
  SELECT Codigo_fabricante, MAX(Precio)
  FROM Producto GROUP BY Codigo_fabricante
)
ORDER BY f.Nombre ASC;

-- 1.1.7 Subconsultas (En la cláusula WHERE)
-- 1.1.7.1 Con operadores básicos de comparación
-- 1. Devuelve todos los productos del fabricante Lenovo. (Sin utilizar INNER JOIN).
SELECT * FROM Producto WHERE Codigo_fabricante = (SELECT Codigo FROM Fabricante WHERE Nombre = "lenovo");

-- 2. Devuelve todos los datos de los productos que tienen el mismo precio que el producto más caro del fabricante Lenovo. (Sin utilizar INNER JOIN).
SELECT * FROM Producto WHERE Precio = (SELECT MAX(Precio) FROM Producto WHERE Codigo_fabricante = (SELECT Codigo FROM Fabricante WHERE Nombre = "Lenovo"));

-- 3. Lista el nombre del producto más caro del fabricante Lenovo.
SELECT Nombre FROM Producto WHERE Precio = (SELECT MAX(p.Precio) FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = "Lenovo");

-- 4. Lista el nombre del producto más barato del fabricante Hewlett-Packard.
SELECT Nombre FROM Producto WHERE Precio = (SELECT MIN(p2.Precio) FROM Producto p2 JOIN Fabricante f2 ON p2.Codigo_fabricante = f2.Codigo WHERE f2.Nombre = "Hewlett-Packard");

-- 5. Devuelve todos los productos de la base de datos que tienen un precio mayor o igual al producto más caro del fabricante Lenovo.
SELECT * FROM Producto WHERE Precio > (SELECT MAX(p.Precio)FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = "lenovo");

-- 6. Lista todos los productos del fabricante Asus que tienen un precio superior al precio medio de todos sus productos.
SELECT * FROM Producto WHERE Codigo_fabricante = (SELECT Codigo FROM Fabricante WHERE Nombre = "Asus")
AND Precio > ( SELECT AVG(p.Precio)FROM Producto p WHERE p.Codigo_fabricante = (SELECT Codigo FROM Fabricante WHERE Nombre = "Asus"));

-- 1.1.7.2 Subconsultas con ALL y ANY
-- 7. Devuelve el producto más caro que existe en la tabla producto sin hacer uso de MAX, ORDER BY ni LIMIT.
SELECT * FROM Producto p WHERE Precio >= ALL ( SELECT Precio FROM Producto p);

-- 8. Devuelve el producto más barato que existe en la tabla producto sin hacer uso de MIN, ORDER BY ni LIMIT.
SELECT * FROM Producto p WHERE Precio <= ALL (SELECT Precio FROM Producto p);

-- 9. Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando ALL o ANY).
SELECT Nombre FROM Fabricante WHERE Codigo = ANY (SELECT Codigo_fabricante FROM Producto );

-- 10. Devuelve los nombres de los fabricantes que no tienen productos asociados.(Utilizando ALL o ANY).
SELECT Nombre FROM Fabricante WHERE Codigo > ALL (SELECT Codigo_fabricante FROM Producto);

-- 1.1.7.3 Subconsultas con IN y NOT IN
-- 11. Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando IN o NOT IN).
SELECT Nombre FROM Fabricante WHERE Codigo IN (SELECT Codigo_fabricante FROM Producto);

-- 12. Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando IN o NOT IN).
SELECT Nombre FROM Fabricante WHERE Codigo NOT IN (SELECT DISTINCT Codigo_fabricante FROM Producto);

-- 1.1.7.4 Subconsultas con EXISTS y NOT EXISTS
-- 13. Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando EXISTS o NOT EXISTS).
SELECT f.Nombre FROM Fabricante f WHERE EXISTS ( SELECT 1 FROM Producto p WHERE p.Codigo_fabricante = f.Codigo);

-- 14. Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando EXISTS o NOT EXISTS).
SELECT f.Nombre FROM Fabricante f WHERE NOT EXISTS ( SELECT 1 FROM Producto p WHERE p.Codigo_fabricante = f.Codigo);

-- 1.1.7.5 Subconsultas correlacionadas
-- 15. Lista el nombre de cada fabricante con el nombre y el precio de su producto más caro.
SELECT f.Nombre AS "Fabricante",(SELECT p.Nombre FROM Producto p WHERE p.Codigo_fabricante = f.Codigo ORDER BY p.Precio DESC LIMIT 1)AS "Producto mas caro",
( SELECT p.Precio FROM Producto p WHERE p.Codigo_fabricante = f.Codigo ORDER BY p.Precio DESC LIMIT 1 )AS "Precio"FROM Fabricante f;

-- 16. Devuelve un listado de todos los productos que tienen un precio mayor o igual a la media de todos los productos de su mismo fabricante.
SELECT p.* FROM Producto p WHERE p.Precio >= (SELECT AVG(p2.Precio)FROM Producto p2 WHERE p2.Codigo_fabricante = p.Codigo_fabricante);

-- 17. Lista el nombre del producto más caro del fabricante Lenovo.
SELECT Nombre FROM Producto WHERE Precio = (SELECT MAX(p.Precio) FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = "Lenovo");

-- 1.1.8 Subconsultas (En la cláusula HAVING)
-- 18. Devuelve un listado con todos los nombres de los fabricantes que tienen el mismo número de productos que el fabricante Lenovo.
SELECT Nombre FROM Fabricante WHERE Codigo IN (SELECT Codigo_fabricante FROM Producto GROUP BY Codigo_fabricante HAVING COUNT(*) = ( SELECT COUNT(*) FROM Producto 
WHERE Codigo_fabricante = (SELECT Codigo FROM Fabricante WHERE Nombre = "Lenovo")));

