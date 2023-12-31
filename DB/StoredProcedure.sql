##Store Procedure

create procedure verUsuarios()
select * from usuario;

create procedure validarUsuario(in _RegistroAcademico varchar(400), in _Contraseña varchar(300))
select * from usuario where registroAcademico= _RegistroAcademico and BINARY contraseña =_Contraseña;

create procedure registrarUsuario(in _RegistroAcademico varchar(400), in _Nombre varchar(250), in _Apellido varchar(250), in _Correo varchar(300), in _Contraseña varchar(300))
INSERT INTO usuario(registroAcademico, nombre, apellido, correo, contraseña) VALUES(_RegistroAcademico, _Nombre, _Apellido, _Correo, _Contraseña);

create procedure buscarUsuarioRegistroAcademicoCorreo(in _RegistroAcademico varchar(400), in _Correo varchar(300))
select * from usuario where registroAcademico = _RegistroAcademico and correo = _Correo;

create procedure buscarUsuarioRegistroAcademico(in _RegistroAcademico varchar(400))
select * from usuario where registroAcademico = _RegistroAcademico;

create procedure actualizarContraseña(in _RegistroAcademico varchar(400), in _NuevaContraseña varchar(300))
UPDATE usuario SET contraseña = _NuevaContraseña where registroAcademico= _RegistroAcademico;

create procedure verPublicaciones()
select publicacion.id as id,idTipo, tipo.nombre as tipo, usuario.nombre as nombreUsuario, usuario.apellido as apellidoUsuario, mensaje, fechaCreacion 
from publicacion inner join tipo
on publicacion.idTipo= tipo.id
inner join usuario
on publicacion.idUsuario= usuario.registroAcademico
ORDER BY fechaCreacion DESC;

create procedure filtrarPublicacionesCurso()
select publicacion.id as id,idTipo, tipo.nombre as tipo, usuario.nombre as nombreUsuario, usuario.apellido as apellidoUsuario, curso.id as idCurso, curso.nombre ,mensaje, fechaCreacion 
from publicacion inner join curso
on publicacion.idCurso= curso.id
inner join tipo
on publicacion.idTipo= tipo.id
inner join usuario
on publicacion.idUsuario= usuario.registroAcademico
where idCurso is not null
ORDER BY fechaCreacion DESC;

create procedure filtrarPublicacionesCatedratico()
select publicacion.id as id,idTipo, tipo.nombre as tipo, usuario.nombre as nombreUsuario, usuario.apellido as apellidoUsuario, catedratico.nombre as nombreCatedratico, mensaje, fechaCreacion 
from publicacion inner join catedratico
on publicacion.idCatedratico= catedratico.id
inner join tipo
on publicacion.idTipo= tipo.id
inner join usuario
on publicacion.idUsuario= usuario.registroAcademico
where idCatedratico is not null
ORDER BY fechaCreacion DESC;



create procedure filtrarPublicacionesNombreCurso(in _NombreCurso varchar(400))
select publicacion.id as id,idTipo, tipo.nombre as tipo, usuario.nombre as nombreUsuario, usuario.apellido as apellidoUsuario, curso.id as idCurso, curso.nombre ,mensaje, fechaCreacion 
from publicacion inner join curso
on publicacion.idCurso= curso.id
inner join tipo
on publicacion.idTipo= tipo.id
inner join usuario
on publicacion.idUsuario= usuario.registroAcademico
where curso.nombre like _NombreCurso ORDER BY fechaCreacion DESC;

create procedure filtrarPublicacionesNombreCatedratico(in _NombreCatedratico varchar(400))
select publicacion.id as id,idTipo, tipo.nombre as tipo, usuario.nombre as nombreUsuario, usuario.apellido as apellidoUsuario, catedratico.nombre as nombreCatedratico, mensaje, fechaCreacion 
from publicacion inner join catedratico
on publicacion.idCatedratico= catedratico.id
inner join tipo
on publicacion.idTipo= tipo.id
inner join usuario
on publicacion.idUsuario= usuario.registroAcademico
where catedratico.nombre like _NombreCatedratico
ORDER BY fechaCreacion DESC;


create procedure agregarPublicaciones(in _IdUsuario varchar(400), in _IdCatedratico int, in _IdCurso int, in _IdTipo int, in _Mensaje varchar(900))
INSERT INTO publicacion(idUsuario, idCatedratico, idCurso, idTIpo, mensaje, fechaCreacion) VALUES(_IdUsuario, _IdCatedratico, _IdCurso, _IdTipo, _Mensaje, now());

create procedure agregarComentario(in _IdPublicacion int, _IdUsuario varchar(400), in _Comentario varchar(800))
insert into comentario(idPublicacion, idUsuario, comentario, fechaCreacion) values(_IdPublicacion, _Idusuario, _comentario, now());

create procedure comentarioPublicacion(in _IdPublicacion int)
select usuario.nombre as nombreUsuario, usuario.apellido as apellidoUsuario, comentario, comentario.fechaCreacion as fechaCreacion
from comentario inner join publicacion
on comentario.idPublicacion = publicacion.id
inner join usuario
on publicacion.idUsuario= usuario.registroAcademico
where publicacion.id = _IdPublicacion order by comentario.fechaCreacion desc;


create procedure agregarCurso(in _Nombre varchar(400), in _Creditos int)
insert into curso(nombre, creditos) values(_Nombre, _Creditos);

create procedure verCursos()
select * from curso;

create procedure agregarCursoAprobado(in _IdUsuario varchar(400), in _IdCurso int)
insert into cursosAprobados(idUsuario, idCurso) values(_IdUsuario, _IdCurso);

create procedure cursosAprobadosUsuarios()
select usuario.nombre as nombreUsuario, usuario.apellido as apellidoUsuario, curso.nombre as nombreCurso, curso.creditos as creditos
from cursosAprobados inner join curso
on cursosAprobados.id = curso.id
inner join usuario
on cursosAprobados.idUsuario= usuario.registroAcademico;

create procedure buscarCursosAprobadosUsuario(in _IdUsuario varchar(400))
select curso.nombre as nombreCurso, curso.creditos as creditos
from cursosAprobados inner join curso
on cursosAprobados.id = curso.id
where cursosAprobados.idUsuario = _IdUsuario;


create procedure agregarCatedratico(in _Nombre varchar(400))
insert into catedratico(nombre) values(_Nombre);

create procedure verCatedraticos()
select *from catedratico;

create procedure agregarTipo(in _Nombre varchar(250))
insert into tipo(nombre) values(_Nombre);

create procedure verTipos()
select * from tipo;





