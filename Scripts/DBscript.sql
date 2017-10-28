create dataBase TP_Alquileres_LabIV
use TP_Alquileres_LabIV

Create table Puestos(
id_puesto int identity,
piso int,
CHECK (piso between 1 and 5),
cantidad_sillas int,
tiene_ventana bit,
constraint pk_puestos primary key (id_puesto)
)

create table Tipos_documento(
 id_tipo_documento int identity,
 documento varchar(20)
 constraint pk_tipo_documento primary key (id_tipo_documento)
 )

create table Clientes(
id_cliente int identity,
nombre_cliente varchar(50),
apellido_cliente varchar(50),
mail_cliente varchar(100) unique,
telefono varchar(20),
documento int,
tipo_documento int
constraint pk_id_clientes primary key (id_cliente),
constraint fk_tiposDocumento_cliente foreign key (tipo_documento) references Tipos_documento(id_tipo_documento)
)

create table Alquileres(
id_alquiler int identity,
id_cliente int,
id_puesto int,
cantidad_computadoras int,
cantidad_sillas_adicionales int,
tene_acceso_sala_reuniones int,
constraint pk_alquileres  primary key (id_alquiler),
constraint fk_cliente_alquileres foreign key (id_cliente) references Clientes(id_cliente),
constraint fk_puesto_alquileres foreign key (id_puesto) references Puestos(id_puesto)
)

insert into Tipos_documento(documento)values('CI')
insert into Tipos_documento(documento)values('DNI')
insert into Tipos_documento(documento)values('LC')
insert into Tipos_documento(documento)values('LE')