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


