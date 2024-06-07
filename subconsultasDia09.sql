create database peliculas;

select * from peliculas;


select * from reparto ;

drop table peliculas;
drop table reparto;

--Obtener el ID de la película “Titanic”
SELECT id FROM peliculas WHERE "Pelicula" = 'Titanic';


--Listar a todos los actores que aparecen en la película "Titanic".
SELECT actor 
FROM reparto 
WHERE id_pelicula = (SELECT id FROM peliculas where "Pelicula" = 'Titanic');


--Consultar en cuántas películas del top 100 participa Harrison Ford:


SELECT COUNT(DISTINCT r.id_pelicula) 
FROM reparto r
JOIN peliculas p ON r.id_pelicula = p.id
WHERE r.actor = 'Harrison Ford' AND p.id <= 100;


--Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente:

SELECT CONCAT("Pelicula" , ' (', "Año estreno", ')') AS Pelicula_con_anio
FROM peliculas p 
WHERE "Año estreno" >= 1990 
AND "Año estreno" < 2000 
ORDER BY "Pelicula" ASC;

--Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrada para la consulta como “longitud_titulo”:

SELECT "Pelicula" , LENGTH("Pelicula") AS longitud_titulo 
FROM peliculas p ;


--Consultar cuál es la longitud más grande entre todos los títulos de las películas

SELECT MAX(LENGTH("Pelicula")) AS longitud_maxima 
FROM peliculas ;

 
