/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Portatil_Bot
 * Created: 05-jun-2017
 */

-- Todos los datos de las tablas usuarios y documentos que tenga en la tabla documento mayor 0
select * from usuarios u inner join documentos d on u.usuario_id = d.usuario_id where d.usuario_id > 0;

-- Todos los datos de las tablas usuarios y documentos que tenga en la tabla usuario.usuario_id mayor 1
select * from usuarios u inner join documentos d on u.usuario_id = d.usuario_id where u.usuario_id > 1;


select * FROM usuarios;


ERROR 
Mysql error 1452 - Cannot add or update a child row: a foreign key constraint fails
SELECT DISTINCT id_documento FROM documentos doc LEFT JOIN archivo ar ON doc.documento_id = ar.id_archivo WHERE doc.documento_id IS NULL