create database APP character set utf8;

use APP;

create table usuario(
	registroAcademico varchar(400) primary key not null,
    nombre varchar(250) not null, 
    apellido varchar(250) not null,
    correo varchar(300) not null,
    contraseña varchar(300) not null
);

create table tipo(
	id int primary key auto_increment not null,
    nombre varchar(250) not null
);

create table catedratico(
	id int primary key auto_increment not null,
    nombre varchar(400) not null
);

create table curso(
	id int primary key auto_increment not null,
    nombre varchar(400) not null,
    creditos int not null
);

create table cursosAprobados(
	id int primary key auto_increment not null,
    idUsuario varchar(400) not null,
    idCurso int not null
);

create table publicacion(
	id int primary key auto_increment not null,
    idUsuario varchar(400) not null,
    idCatedratico int not null,
    idCurso int not null,
    idTipo int not null,
    mensaje varchar(900) not null,
    fechaCreacion datetime not null
);

create table comentario(
	id int primary key auto_increment not null,
    idPublicacion int not null,
    idUsuario varchar(400) not null,
    comentario varchar(800) not null,
    fechaCreacion datetime not null
);

