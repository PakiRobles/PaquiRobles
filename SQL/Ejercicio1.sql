/* ## EJERCICIO 1
1. Crear una tabla llamada "Clientes" con las columnas: id (entero, clave primaria),
nombre (texto) y email (texto).*/

CREATE TABLE IF NOT EXISTS "Clientes" (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR(255) NOT NULL,	
	"e-mail" VARCHAR(255)
)

/* 2. Insertar un nuevo cliente en la tabla "Clientes" con id=1, nombre="Juan" y
email="juan@example.com".*/

INSERT INTO public."Clientes"("id", "name", "e-mail")
VALUES ('1','Juan','juan@example.com')

/* 3. Actualizar el email del cliente con id=1 a "juan@gmail.com".*/

UPDATE public."Clientes"
SET "e-mail" = 'juan@gmail.com'
WHERE id = 1

/* 4.Eliminar el cliente con id=1 de la tabla "Clientes".*/

DELETE FROM "Clientes"
WHERE id = 1;

/* 5. Crear una tabla llamada "Pedidos" con las columnas: id (entero, clave primaria),
cliente_id (entero, clave externa referenciando a la tabla "Clientes"), producto
(texto) y cantidad (entero).*/
CREATE TABLE IF NOT EXISTS "pedidos"(
	"id" INT PRIMARY KEY,
	"cliente_id" INT,
	"producto" VARCHAR(255),
	"cantidad" INT,
	CONSTRAINT Fk_cliente_id FOREIGN KEY ("cliente_id") REFERENCES "Clientes"("id")
)

/*6. Insertar un nuevo pedido en la tabla "Pedidos" con id=1, cliente_id=1,
producto="Camiseta" y cantidad=2.*/

INSERT INTO public."pedidos"("id","cliente_id","producto","cantidad")
	VALUES('1','1','Camiseta','2')


/*7. Actualizar la cantidad del pedido con id=1 a 3.*/
UPDATE public."pedidos"
SET "cantidad" = '3'
WHERE "id" = '1'

/*8. Eliminar el pedido con id=1 de la tabla "Pedidos".*/

DELETE FROM "pedidos"
WHERE "id" = '1'

/*9. Crear una tabla llamada "Productos" con las columnas: id (entero, clave
primaria), nombre (texto) y precio (decimal).*/

CREATE TABLE IF NOT EXISTS "Productos"(
	"id" INT PRIMARY KEY,
	"nombre" VARCHAR (255),
	"precio" DECIMAL (10,2)
)

/* 10. Insertar varios productos en la tabla "Productos" con diferentes valores.*/

INSERT INTO public."Productos"("id", "nombre", "precio")
VALUES 
	('1','Samsung Galaxy S24 Ultra 12/256GB','1099.53'),
	('2','Apple iPhone 16 128GB','959.00'),
	('3', 'Xiaomi Redmi Note 13 Pro 5G 8/256GB', '269.89')

/*11. Consultar todos los clientes de la tabla "Clientes"*/

SELECT * FROM public."Clientes"

/*12. Consultar todos los pedidos de la tabla "Pedidos" junto con los nombres de los
clientes correspondientes.*/
SELECT
"p"."id" as "id",
"p"."producto" as "Producto",
"p"."cantidad" as "Cantidad",
"c"."name" as "Nombre"
FROM public."pedidos" "p"
	LEFT JOIN "Clientes" "c"
	ON "p"."cliente_id" = "c"."id"

/*13. Consultar los productos de la tabla "Productos" cuyo precio sea mayor a $50.*/
SELECT * FROM public."Productos"
	WHERE "precio" >= '50'

	/* 14.Consultar los pedidos de la tabla "Pedidos" que tengan una cantidad mayor o
igual a 5.*/

SELECT * FROM public."pedidos"
	WHERE "cantidad" >= '5'

	/*15. Consultar los clientes de la tabla "Clientes" cuyo nombre empiece con la letra
"A".*/

SELECT 
"Clientes"."name"	as "nombre_cliente"
FROM public."Clientes"
	WHERE "name" ILIKE 'A%'

	/*16. Realizar una consulta que muestre el nombre del cliente y el total de pedidos
realizados por cada cliente.*/

SELECT
	COUNT ("p"."cliente_id") as "pedidos_totales",
	"c"."name" as "nombre_cliente"
FROM public."pedidos" "p"
 LEFT JOIN "Clientes" "c"
 ON "p"."cliente_id" = "c"."id"
 GROUP BY "c"."name"

/*17. Realizar una consulta que muestre el nombre del producto y la cantidad total de
pedidos de ese producto.*/
SELECT 
	"pedidos"."producto" as "nombre_producto",
	COUNT("pedidos"."producto") as "Total_pedidos"
FROM public."pedidos"
GROUP BY "pedidos"."producto"

/*18. Agregar una columna llamada "fecha" a la tabla "Pedidos" de tipo fecha*/

ALTER TABLE public."pedidos"
ADD COLUMN "fecha" DATE

/*19. Agregar una clave externa a la tabla "Pedidos" que haga referencia a la tabla
"Productos" en la columna "producto"*/

ALTER TABLE public."Productos"
ADD CONSTRAINT FK_pedidos_producto 
UNIQUE("nombre"); 

ALTER TABLE public."pedidos"
ADD CONSTRAINT FK_pedido_producto 
FOREIGN KEY("producto") REFERENCES "Productos"("nombre")

/*20. Realizar una consulta que muestre los nombres de los clientes, los nombres de
los productos y las cantidades de los pedidos donde coincida la clave externa.*/

SELECT 
"c"."name" as "nombre_cliente",
"pro"."nombre" as "nombre_producto",
"p"."cantidad" as "cantidad_pedido"
FROM public."pedidos" "p"
		LEFT JOIN public."Clientes" "c"
		ON "c"."id" = "p"."cliente_id"
		LEFT JOIN public."Productos" "pro"
		ON "pro"."nombre" = "p"."producto"


















