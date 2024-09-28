/* 1. Crea una tabla llamada "Pedidos" con las columnas: "id" (entero, clave
primaria), "id_usuario" (entero, clave foránea de la tabla "Usuarios") y
"id_producto" (entero, clave foránea de la tabla "Productos").*/

CREATE TABLE IF NOT EXISTS "Pedidos" (
	"id" INT PRIMARY KEY,
	"id_usuario" INT,
	"id_producto" INT,
	FOREIGN KEY ("id_usuario") REFERENCES "Usuarios" ("id"),
	FOREIGN KEY ("id_producto") REFERENCES "Productos" ("id")
)

/*2. Inserta al menos tres registros en la tabla "Pedidos" que relacionen usuarios con
productos.*/

INSERT INTO "Pedidos" ("id","id_usuario",id_producto)
VALUES
(1,1,6),
(2,3,8),
(3,2,3),
(4,5,6),
(5,4,4);

/*3.Realiza una consulta que muestre los nombres de los usuarios y los nombres de
los productos que han comprado, incluidos aquellos que no han realizado
ningún pedido (utiliza LEFT JOIN y COALESCE).*/ 

SELECT
COALESCE
(u."nombre", '-') AS "cliente",
p."nombre" AS "producto"
FROM public."Usuarios" u 
LEFT JOIN public."Pedidos" 
	ON u."id" = "Pedidos"."id_usuario" 
LEFT JOIN public."Productos" p
	ON p."id" = "Pedidos"."id_producto"


/* 4. Realiza una consulta que muestre los nombres de los usuarios que han
realizado un pedido, pero también los que no han realizado ningún pedido
(utiliza LEFT JOIN).*/

SELECT 
COALESCE
(u."nombre", '-') AS "cliente",
p."id" AS "NºPedido" 
FROM public."Usuarios" u
LEFT JOIN public."Pedidos" p
ON u."id" = p."id_usuario"
ORDER by u."id"

/* 5. Agrega una nueva columna llamada "cantidad" a la tabla "Pedidos" y actualiza 
los registros existentes con un valor (utiliza ALTER TABLE y UPDATE)*/
ALTER TABLE public."Pedidos"
ADD COLUMN "cantidad" INT 

UPDATE public."Pedidos"
SET "cantidad" ='3'
WHERE "id" = '1';
UPDATE public."Pedidos"
SET "cantidad" ='4'
WHERE "id" = '2';
UPDATE public."Pedidos"
SET "cantidad" ='6'
WHERE "id" = '3';
UPDATE public."Pedidos"
SET "cantidad" ='1'
WHERE "id" = '4';
UPDATE public."Pedidos"
SET "cantidad" ='10'
WHERE "id" = '5';

