CREATE TABLE IF NOT EXISTS "MiBaseDeDatos"()
/*2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "edad" (entero).*/

CREATE TABLE IF NOT EXISTS "Usuarios"(
	"id" INT PRIMARY KEY,
	"nombre" VARCHAR(255),
	"edad" INT
)

/*3. Inserta dos registros en la tabla "Usuarios".*/

INSERT INTO "Usuarios" ("id","nombre","edad")VALUES
	('1','Ana','32'),
	('2','Elena','25'),
	('3','Rocio','28'),
	('4','Lorena',24)
	
/* 4. Actualiza la edad de un usuario en la tabla "Usuarios".*/

UPDATE public."Usuarios"
SET "edad" = '23'
WHERE "id" = '2'

/* 5. Elimina un usuario de la tabla "Usuarios".*/

DELETE FROM public."Usuarios"
WHERE "id" = '1'

/*1. Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "pais" (texto).*/ 

CREATE TABLE IF NOT EXISTS "Ciudades"(
	"id" INT PRIMARY KEY,
	"nombre" VARCHAR (255),
	"pais" VARCHAR (255)
)
-- 2. Inserta al menos tres registros en la tabla "Ciudades".
INSERT INTO public."Ciudades" ("id","nombre","pais")VALUES
	('1','Madrid','España'),
	('2','París','Francia'),
	('3','Lisboa','Portugal'),
	('4','Donosti','España'),
	('5','Berlin','Alemania')

--3.Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id" de la tabla "Ciudades".

ALTER TABLE public."Usuarios"
ADD CONSTRAINT FK_usuarios_id FOREIGN KEY ("id") REFERENCES "Ciudades"("id")

--4. Realiza una consulta que muestre los nombres de los usuarios junto con el nombre de su ciudad y país (utiliza un LEFT JOIN).

SELECT 
"u"."nombre" as "nombre",
"c"."nombre" as "nombre_ciudad",
"c"."pais" as "nombre_pais"
FROM public."Usuarios" "u"
LEFT JOIN public."Ciudades" "c"
ON u."id" = c."id"

--5.Realiza una consulta que muestre solo los usuarios que tienen una ciudad asociada (utiliza un INNER JOIN).

SELECT 
"u"."nombre" as "nombre",
"c"."nombre" as "ciudad"
FROM public."Usuarios" "u"
INNER JOIN public."Ciudades" "c"
ON u."id" = c."id"
WHERE "c"."nombre" <> 'null'




