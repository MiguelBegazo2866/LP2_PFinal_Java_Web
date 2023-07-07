create database incidentes_tech;
use incidentes_tech;

create table tb_area(
id_area int primary key auto_increment,
nom_area varchar(40));
select * from tb_area;

create table tb_seccion(
id_sec int primary key auto_increment,
nom_sec varchar(40));
select * from tb_seccion;

create table tb_incidente(
id_inc int primary key auto_increment,
nom_inc varchar(40),
id_tipo int references tb_tipo,
id_cat int references tb_categoria);
select * from tb_incidente;

create table tb_tipo(
id_tipo int primary key auto_increment,
nom_tipo varchar(40));
select * from tb_tipo;

create table tb_responsable(
id_resp int primary key auto_increment,
nomApe_resp varchar(40),
cod_resp varchar(20),
id_cargo int,
id_sec int);

drop table tb_responsable;
drop table tb_tipo;

create table tb_categoria(
id_cat int primary key auto_increment,
nom_cat varchar(40));
select * from tb_categoria;

create table tb_cargo(
id_cargo int primary key auto_increment,
nom_cargo varchar(40));
select * from tb_cargo;

create table tb_regIncidentes(
id_reg int primary key auto_increment,
num_reg varchar(50),
fec_reg varchar(10),
hor_reg varchar(10),
id_area int references tb_area,
id_sec int references tb_seccion,
id_cargo int references tb_cargo,
id_inc int references tb_incidente,
id_tipo int references tb_tipo,
id_cat int references tb_categoria,
id_usua int references tb_usuario,
id_resp int references tb_responsable
);
select * from tb_regIncidentes;
drop table tb_usuario;

create table tb_usuario(
id_usua int primary key auto_increment,
nomApe_usua varchar(40),
dni_usua varchar(8),
id_area int references tb_area,
id_sec int references tb_seccion);
select * from tb_usuario;

insert into tb_area values(1, 'Marketing');
insert into tb_area values(2, 'Tecnologia de la Informacion');
insert into tb_area values(3, 'Recursos Humanos');
insert into tb_area values(4, 'Finanzas');
insert into tb_area values(5, 'Ventas');

select * from tb_area;
drop table tb_area;
drop table tb_incidente;


insert into tb_seccion values(1, 'Presupuesto');
insert into tb_seccion values(2, 'Facturacion');
insert into tb_seccion values(3, 'Gestion de cuentas');
insert into tb_seccion values(4, 'Publicidad');
insert into tb_seccion values(5, 'Relaciones Publicas');
insert into tb_seccion values(6, 'Infraestructura Tecnologica');
insert into tb_seccion values(7, 'Desarrollo y Mantenimiento');
insert into tb_seccion values(8, 'Soporte Tecnico');
insert into tb_seccion values(9, 'Seguridad');
insert into tb_seccion values(10, 'Gestion de Proyectos');
select * from tb_seccion;


select * from tb_incidente;

insert into tb_tipo values(1, 'Seguridad');
insert into tb_tipo values(2, 'Datos');
insert into tb_tipo values(3, 'Interrupciones');
insert into tb_tipo values(4, 'Errores Software');
insert into tb_tipo values(5, 'Problemas Hardware');
insert into tb_tipo values(6, 'Telecomuniacioes');
select * from tb_tipo;

insert into tb_categoria values(1, 'Hacking');
insert into tb_categoria values(2, 'Pishing');
insert into tb_categoria values(3, 'Malware');
insert into tb_categoria values(4, 'Eliminacion Accidental');
insert into tb_categoria values(5, 'Corrupcion de Datos');
insert into tb_categoria values(6, 'Problemas de conectividad');
insert into tb_categoria values(7, 'Bugs y fallos de programación');
insert into tb_categoria values(8, 'Actualizaciones con problemas');
insert into tb_categoria values(9, 'Fallas en Dispositivos');
insert into tb_categoria values(10, 'Incompatibilidad de componentes');

insert into tb_incidente values(1, 'Brechas de seguridad', 1, 1);
insert into tb_incidente values(2, 'Caida de sito web', 1, 2);
insert into tb_incidente values(3, 'Ataque cibernetico', 2, 3);
insert into tb_incidente values(4, 'Caida de servicios Cloud', 2, 5);
insert into tb_incidente values(5, 'Perdida de datos', 4, 7);
insert into tb_incidente values(6, 'Fallas en el hardware', 5, 9);
insert into tb_incidente values(7, 'Interrupciones en servicios de Internet', 5, 10);
insert into tb_incidente values(8, 'Errores de software', 2, 4);
insert into tb_incidente values(9, 'Problemas en accesos a BD', 3, 6);
insert into tb_incidente values(10, 'Problemas en Telecomunicaciones', 4, 8);

select i.id_inc, i.nom_inc, t.nom_tipo, c.nom_cat from tb_incidente i 
inner join tb_tipo t on i.id_tipo = t.id_tipo
inner join tb_categoria c on i.id_cat = c.id_cat;

insert into tb_cargo values(1, 'Gerente Informatico');
insert into tb_cargo values(2, 'Supervisor Informatico');
insert into tb_cargo values(3, 'Jefe Proyecto');
insert into tb_cargo values(4, 'Asistente Finanzas');
insert into tb_cargo values(5, 'Supervisor Soporte Tecnico');
insert into tb_cargo values(6, 'Analista');
insert into tb_cargo values(7, 'Gerente Seguridad');
select * from tb_cargo;

insert into tb_regIncidentes values(1, '000100', '2023-06-03', '10:00', 1, 2, 4, 3, 2, 4, 3, 2);
insert into tb_regIncidentes values(2, '000101', '2023-04-15', '13:00', 2, 3, 1, 3, 4, 6, 1, 4);
insert into tb_regIncidentes values(3, '000102', '2023-02-22', '11:00', 3, 2, 5, 5, 1, 4, 2, 2);
insert into tb_regIncidentes values(4, '000103', '2023-03-18', '12:00', 1, 5, 3, 3, 2, 6, 1, 6);
insert into tb_regIncidentes values(5, '000104', '2023-05-02', '14:00', 4, 2, 2, 6, 3, 6, 5, 1);
insert into tb_regIncidentes values(6, '000105', '2023-01-07', '16:00', 5, 1, 6, 2, 3, 6, 2, 6);
insert into tb_regIncidentes values(7, '000106', '2023-06-10', '18:00', 6, 3, 5, 6, 1, 2, 3, 4);
insert into tb_regIncidentes values(8, '000107', '2023-08-10', '12:00', 1, 5, 3, 3, 2, 6, 1, 6);
insert into tb_regIncidentes values(9, '000108', '2023-09-08', '14:00', 4, 2, 2, 6, 3, 6, 5, 1);
insert into tb_regIncidentes values(10, '000109', '2023-11-05', '16:00', 5, 1, 6, 2, 3, 6, 2, 6);

insert into tb_regIncidentes values(14, '000111', '2023-06-03', '10:00', 1, 2, 4, 3, 2, 4, 3, 2);
insert into tb_regIncidentes values(15, '000112', '2023-04-15', '13:00', 2, 3, 1, 3, 4, 6, 1, 4);
insert into tb_regIncidentes values(16, '000113', '2023-02-22', '11:00', 3, 2, 5, 5, 1, 4, 2, 2);
insert into tb_regIncidentes values(17, '000114', '2023-03-18', '12:00', 1, 5, 3, 3, 2, 6, 1, 6);
insert into tb_regIncidentes values(18, '000115', '2023-05-02', '14:00', 4, 2, 2, 6, 3, 6, 5, 1);
insert into tb_regIncidentes values(19, '000116', '2023-01-07', '16:00', 5, 1, 6, 2, 3, 6, 2, 6);
insert into tb_regIncidentes values(20, '000117', '2023-06-10', '18:00', 6, 3, 5, 6, 1, 2, 3, 4);
insert into tb_regIncidentes values(21, '000118', '2023-08-10', '12:00', 1, 5, 3, 3, 2, 6, 1, 6);
insert into tb_regIncidentes values(22, '000119', '2023-09-08', '14:00', 4, 2, 2, 6, 3, 6, 5, 1);
insert into tb_regIncidentes values(23, '000120', '2023-11-05', '16:00', 5, 1, 6, 2, 3, 6, 2, 6);

select * from tb_regIncidentes;

insert into tb_usuario values(1, 'Carlos Saravia', '04149109', 1, 2);
insert into tb_usuario values(2, 'Ernesto Rodriguez', '08049109', 2, 3);
insert into tb_usuario values(3, 'Jorge Salinas', '04146599', 3, 2);
insert into tb_usuario values(4, 'Eduardo Camavinga', '08929109', 1, 5);
insert into tb_usuario values(5, 'Gonzalo Nuñez', '04298109', 4, 2);
insert into tb_usuario values(6, 'Maria Jimenez', '04361079', 5, 1);
insert into tb_usuario values(7, 'Teresa Orbegozo', '09893109', 6, 3);
insert into tb_usuario values(8, 'Genaro Neyra', '09449209', 4, 2);

insert into tb_usuario values(9, 'Carlos Gimenez', '04149109', 1, 2);
insert into tb_usuario values(10, 'Dario Paz', '08049109', 2, 3);
insert into tb_usuario values(11, 'Jorge Yepez', '04146599', 3, 2);
insert into tb_usuario values(12, 'Ernesto Palacios', '08929109', 1, 5);
insert into tb_usuario values(13, 'Gonzalo Alegria', '04298109', 4, 2);
insert into tb_usuario values(14, 'Frida Arimborgo', '04361079', 5, 1);
insert into tb_usuario values(15, 'Teresa Sanchez', '09893109', 6, 3);
insert into tb_usuario values(16, 'Genaro Suarez', '09449209', 4, 2);

select * from tb_usuario;

insert into tb_responsable values(1, 'Humberto Saravia', '9109', 4, 2);
insert into tb_responsable values(2, 'Juvenal Silva', '9109', 5, 3);
insert into tb_responsable values(3, 'Patricio Alvarez', '6599', 1, 4);
insert into tb_responsable values(4, 'Miguel Zavala', '9109', 6, 5);
insert into tb_responsable values(5, 'Gianina Vasconcellos', '8109', 2, 6);
insert into tb_responsable values(6, 'Frida Borges', '1079', 3, 1);
insert into tb_responsable values(7, 'Daniel Irigoyen', '3109', 1, 4);
select * from tb_responsable;

delete from tb_regIncidentes ri where ri.id_reg = 7;

select * from tb_regIncidentes;

select ri.num_reg, ri.fec_reg, ri.hor_reg, a.nom_area, s.nom_sec, t.nom_tipo, c.nom_cat,
ca.nom_cargo, i.nom_inc, u.nomApe_usua, r.nomApe_resp
from tb_regIncidentes ri
inner join tb_area a on ri.id_area = a.id_area
inner join tb_seccion s on ri.id_sec = s.id_sec
inner join tb_tipo t on ri.id_tipo = t.id_tipo
inner join tb_categoria c on ri.id_cat = c.id_cat
inner join tb_cargo  ca on ri.id_cargo = ca.id_cargo
inner join tb_incidente i on ri.id_inc = i.id_inc
inner join tb_usuario u on ri.id_usua = u.id_usua
inner join tb_responsable r on ri.id_resp = r.id_resp;

select u.id_usua, u.dni_usua, u.nom_usua, u.ape_usua, a.nom_area, s.nom_sec from tb_usuario u
inner join tb_area a on u.id_area = a.id_area
inner join tb_seccion s on u.id_sec = s.id_sec;

select r.id_resp, r.cod_resp, r.nom_resp, r.ape_resp, c.nom_cargo, s.nom_sec from tb_responsable r
inner join tb_cargo c on r.id_cargo = c.id_cargo
inner join tb_seccion s on r.id_sec = s.id_sec;

select i.id_inc, i.nom_inc, p.nom_tipo, c.nom_cat from tb_incidente i 
inner join tb_tipo p on i.id_tipo = p.id_tipo
inner join tb_categoria c on i.id_cat = c.id_cat;


select ri.num_reg, ri.fec_reg, ri.hor_reg, a.nom_area, s.nom_sec, t.nom_tipo, c.nom_cat,
ca.nom_cargo, i.nom_inc, u.nomApe_usua, r.nomApe_resp
from tb_regIncidentes ri
inner join tb_area a on ri.id_area = a.id_area
inner join tb_seccion s on ri.id_sec = s.id_sec
inner join tb_tipo t on ri.id_tipo = t.id_tipo
inner join tb_categoria c on ri.id_cat = c.id_cat
inner join tb_cargo  ca on ri.id_cargo = ca.id_cargo
inner join tb_incidente i on ri.id_inc = i.id_inc
inner join tb_usuario u on ri.id_usua = u.id_usua
inner join tb_responsable r on ri.id_resp = r.id_resp;

select u.id_usua, u.nomApe_usua, u.dni_usua, a.nom_area, s.nom_sec from tb_usuario u 
inner join tb_area a ON u.id_area= a.id_area
inner join tb_seccion s ON u.id_sec= s.id_sec
order by a.nom_area;

SELECT c.nom_cargo, COUNT(*) AS cantidad
FROM tb_responsable r
inner join tb_cargo c on r.id_cargo = c.id_cargo
GROUP BY c.nom_cargo
ORDER BY cantidad DESC
LIMIT 10;

SELECT i.id_inc, i.nom_inc, t.nom_tipo, c.nom_cat FROM tb_incidente i
inner join tb_tipo t ON i.id_tipo = t.id_tipo
inner join tb_categoria c ON i.id_cat = c.id_cat
order by t.nom_tipo;

select * from tb_responsable;

SELECT c.nom_cargo, r.nomApe_resp, s.nom_sec
FROM tb_responsable r
inner join tb_cargo c on r.id_cargo = c.id_cargo
inner join tb_seccion s on r.id_sec = s.id_sec
ORDER BY c.nom_cargo DESC;