USE videojuegos;


#- Muestreme todos los registros por cada tabla 
SELECT * FROM USUARIO;
SELECT * FROM producto;
SELECT * FROM compra;
SELECT * FROM `detalle de compra`;
#- Muestreme un limite de registros de los productos utilizando la palabra reservada LIMIT 
SELECT * FROM producto 
WHERE idproducto > 3 AND idproducto <7;


SELECT idusuario as 'USUARIO', pais as 'NACIMIENTO' from Usuario WHERE idusuario LIMIT 1, 5 ;


SELECT * FROM usuario INNER JOIN compra ON usuario.idusuario = compra.usario_idusuario;
