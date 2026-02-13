drop database if exists MercaTec;
create database if not exists MercaTec;
use MercaTec;

create table if not exists usuarios(
	usuario varchar(30)primary key not null,
    nom_user varchar(30),
    ap_paterno_user varchar (30),
    ap_materno_user varchar (30),
    num_user varchar(30),
    email varchar(40),
    contrasenia varchar(30)
);

insert into usuarios values 
('kros','kros','kros','kros','kros','kros','kros'),
('mel','mel','mel','mel','mel','mel','mel'),
('pep','pep','pep','pep','pep','pep','pep');

create table if not exists vendedores(
	usuario_vend varchar(30)primary key not null,
    nom_vend  varchar(30),
    ap_paterno_vend  varchar (30),
    ap_materno_vend  varchar (30),
    num_vend  varchar(30),
    email_vend  varchar(40),
    contrasenia_vend varchar(30)
);

insert into vendedores values 
('vendedor','vendedor','vendedor','vendedor','vendedor','vendedor','vendedor');


create table if not exists adminss (
	administrador varchar(20) primary key not null,
    nombre_admin varchar(30),
    ap_paterno_admin varchar (30),
    ap_materno_admin varchar (30),
    num_admin varchar(30),
    email_admin varchar(40),
    contrasenia_admin varchar(20)
);


insert into adminss values 
('Cris','Cris','Cris','Cris','Cris','Cris','Cris');

CREATE table inventario (
  nombre VARCHAR(100) primary key,
  can varchar (14)
);



insert into inventario values 
('Jitomate','3'),
('cebolla','3'),
('arroz','3'),
('tamarindo','3'),
('Sprite','3'),
('Delaware','3'),
('Brocoli','3'),
('berenjena','3');




create table if not exists carrito ( 
	Id int not null primary key auto_increment,
	nombre varchar(20),
	cantidad varchar (15),
    precio varchar (12)
);

create table if not exists productos (
	Id_producto int not null primary key auto_increment,
	producto varchar(30),
    precio varchar (40),
    tipo_producto varchar(60)
);

insert into productos values 
('1','papa','40','Frutas');

create table if not exists productos_vendedor (
	Id_producto int not null primary key auto_increment,
	producto varchar(30),
    precio varchar (40),
    tipo_producto varchar(60)
);
insert into productos_vendedor values 
('1','Fresas','41','Frutas'),
('2','Cebollas','42','Frutas'),
('3','Jitomates','43','Frutas'),

('4','Arroz','44','Leguminosas'),
('5','Frijol','45','Leguminosas'),
('6','Lentejas','46','Leguminosas'),

('7','Res','47','Carnes'),
('8','Filete','48','Carnes'),
('9','Tomahawk','49','Carnes'),

('10','Coca-Cola','50','Refrescos'),
('11','Sprite','51','Refrescos'),
('12','Mirinda','52','Refrescos');

create table if not exists repartidores(
	repartidor varchar(30)primary key not null,
    nom_rep varchar(30),
    ap_paterno_rep varchar (30),
    ap_materno_rep varchar (30),
    num_rep varchar(30),
    email varchar(40),
    contrasenia varchar(30)
);

insert into repartidores values 
('samuel','samuel','samuel','samuel','samuel','samuel','samuel'),
('carlos','carlos','carlos','carlos','carlos','carlos','carlos'),
('lulu','lulu','lulu','lulu','lulu','lulu','lulu');

CREATE TABLE tabla_imagenes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    imagen LONGBLOB
);


create table if not exists asistentes (
	asistente varchar(20) primary key not null,
    nombre_asistente varchar(30),
    email_asistente varchar(40),
    contrasenia_asistente varchar(20)
);

insert into asistentes values 
('asistente','asistente','asistente','asistente');

create table if not exists ingeniero_soporte (
	soporte varchar(20) primary key not null,
    nombre_soporte varchar(30),
    email_soporte varchar(40),
    contrasenia_soporte varchar(20)
);

insert into ingeniero_soporte values 
('ingsoporte','ingsoporte','ingsoporte','ingsoporte');

create table if not exists gerente_soporte (
	gerente varchar(20) primary key not null,
    nombre_gerente varchar(30),
    email_gerente varchar(40),
    contrasenia_gerente varchar(20)
);

insert into gerente_soporte values 
('gersoporte','gersoporte','gersoporte','gersoporte');

create table if not exists gerente_mantenimiento (
	mantenimiento varchar(20) primary key not null,
    nombre_mantenimiento varchar(30),
    email_mantenimiento varchar(40),
    contrasenia_mantenimiento varchar(20)
);

insert into gerente_mantenimiento values 
('germantenimiento','germantenimiento','germantenimiento','germantenimiento');

create table if not exists ingeniero_mantenimiento (
	mantenimientos varchar(20) primary key not null,
    nombre_mantenimientos varchar(30),
    email_mantenimientos varchar(40),
    contrasenia_mantenimientos varchar(20)
);

insert into ingeniero_mantenimiento values 
('ingmantenimiento','ingmantenimiento','ingmantenimiento','ingmantenimiento');

create table if not exists reportes (
	Id_reporte int not null primary key auto_increment,
	usuario varchar(40),
    reporte varchar (70),
    estado varchar (40),
    respuesta varchar (70),
    foreign key (usuario) references usuarios (usuario) on update cascade on delete cascade
);

insert into reportes values
('1','kros','No me carga el inicio de sesión','Abierto','Sin Respuesta'),
('2','mel','Quiero mun chat interactivo','Abierto','Sin Respuesta'),
('3','pep','No me cargan las amterias','Abierto','Sin Respuesta');

create table if not exists soporte (
	Id_reporte int not null primary key auto_increment,
	usuario varchar(40),
    reporte varchar (70),
    estado varchar (40),
    respuesta varchar (70),
    foreign key (Id_reporte) references reportes (Id_reporte) on update cascade on delete cascade
);

insert into soporte values
('1','kros','No me carga el inicio de sesión','Abierto','Sin Respuesta'),
('2','mel','Quiero mun chat interactivo','Abierto','Sin Respuesta'),
('3','pep','No me cargan las amterias','Abierto','Sin Respuesta');




select*from usuarios;
select*from adminss;
select*from vendedores;
select*from carrito;
select*from productos;
select*from tabla_imagenes;
select*from productos_vendedor;
select*from repartidores;
select*from inventario;
select*from ingeniero_mantenimiento;
select*from ingeniero_soporte;
select*from asistentes;
select*from gerente_soporte;
select*from reportes;
select*from soporte;