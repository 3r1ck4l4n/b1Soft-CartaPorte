Use master

create database Complemento_Carta_Porte;

use Complemento_Carta_Porte;

create table Mercancias(
-- Identificador del registro
	id_mercancias int primary Key not null identity(1,1),
	ClaveSTCC varchar(7), 
	Descricpion varchar(1000) not null, 
	Cantidad decimal not null,
	Clave_Unidad varchar(254) not null, 
	Unidad varchar(20), 
	Dimensiones varchar(50),
	Material_Peligroso varchar(2), 
	Cve_Material_Peligroso varchar(2) not null, 
	Embalaje varchar(50), 
	Descrip_Embalaje varchar(100), 
	Peso_En_Kg decimal not null,
	Valor_Mercancias varchar(100), 
	Moneda varchar(10), 
	Fraccion_Arancelaria varchar(50),
	UUID_Comercio_EXT varchar(100), 
	Bienes_Transp varchar(254) not null,
-- Llave foranea
	id_total_mercancias int not null
); 


create table Pedimentos(
-- identificador del registro
	id_pedimentos int primary Key not null identity(1,1),
	pedimentos varchar(21) not null,
--Llave foranea
	id_mercancias int  not null
	); 

create table Guias_De_Identificacion(
-- identificador del registro
	id_guias_identificacion int not null primary key identity(1,1),
	Numero_Guia_Iddentificacion varchar(254) not null, 
	Descrip_Guia_Identificacion varchar(1000) not null,
-- Llave foranea
	id_mercancias int not null
);

create table Cantidades_Transporta(
--  identificador del registro
	id_cantidad_transporta int primary Key not null identity(1,1),
	Cantidad decimal not null, 
	ID_Origen varchar (254) not null,
	ID_Destino varchar(254) not null, 
	Cves_Transporte varchar(254),
-- llave foranea
	id_mercancias int not null
); 

create table Detalles_Mercancias(
-- identificador del registro
	id_detalle_mercancias int primary Key not null identity(1,1),
	Unidad_Peso_Merc varchar(50) not null, 
	Peso_Bruto decimal not null,
	Peso_Neto decimal  not null, 
	Peso_Tara decimal not null, 
	Num_Piezas int,
-- Llave foranea
	id_mercancias int not null
); 

create table Autos_Transporte(
-- identificador del registro
	id_Auto_Transporte int primary Key not null identity(1,1),
	Num_Permiso varchar(50) not null, 
	Perm_SCT varchar(254) not null,
-- Llave foranea
	id_total_mercancias int not null
); 

create table Identificaciones_Vehiculares(
-- Identificador del registro
	id_identificacion_vehicular int primary Key not null identity(1,1),
	Config_Vehicular varchar(254) not null, 
	Placa_VM varchar(10) not null,
	Anio_Modelo_VM int not null,
-- Llave foranea
	id_Auto_Transporte int not null
); 

create table Seguros(
-- Identificador del registro
	id_seguros int primary Key not null identity(1,1),
	Asegura_Rest_Civil varchar(50) not null, 
	Poliza_Rest_Civil varchar(30) not null, 
	Asegura_Med_Ambiente varchar(50), 
	Poliza_Med_Ambiente varchar(30), 
	Asegura_Carga varchar(50), 
	Poliza_Carga varchar(30), 
	Prima_Seguro varchar(254),
-- Llave foranea
	id_Auto_Transporte int not null
);

create table Remolques(
-- Identificador del registro
	id_remolques int primary Key not null identity(1,1),
	Sub_Tipo_Rem varchar(254) not null, 
	Placa varchar(20) not null,
-- Llave foranea
	id_Auto_Transporte int not null
);

create table Totales_Mercancias(
-- Identificador del registro
	id_Total_Mercancias int primary Key not null identity(1,1),
	Peso_Bruto_Total decimal not null, 
	Unidad_Peso  varchar(20) not null, 
	Peso_Neto_Total decimal,
	Num_Total_Mercancias int not null, 
	Cargo_Por_Transaccion varchar(254),
-- Llave foranea
	Id_Carta_Porte varchar(50) not null
); 

create table Transportes_Aereos(
-- Identificador del registro
	Id_transporte_aereo int primary Key not null identity(1,1),
	Perm_SCT varchar(54) not null, 
	Num_Permiso_SCT varchar(50) not null, 
	Matricula_Aeronave varchar(10),
	Nombre_Aseg varchar(50), 
	Num_Poliza_Seguro varchar(30), 
	Numero_Guia varchar(15) not null, 
	Lugar_Contrato varchar(254), 
	Codigo_Transportista varchar(254) not null,
	RFC_Embarcador varchar(254), 
	Num_Reg_ld_Trib_Embarc varchar(40), 
	Residencia_Fiscal_Embarc varchar(254),
-- Llave foranea
	id_total_mercancias int not null
);

create table Transportes_Ferroviarios(
-- Identificador del registro
	id_Transporte_Ferroviario int primary Key not null identity(1,1),
	Tipo_De_Trafico varchar(254) not null, 
	Nombre_Aseg  varchar(50), 
	Num_Poliza_Seguro varchar(30), 
	Tipo_De_Servicio varchar(254) not null,
-- Llave foranea
	id_total_mercancias int not null
);

create table Derechos_De_Paso(
-- Identificador del registro
	Id_derechos_paso int primary Key not null identity(1,1),
	KilometrajePagado decimal not null,
-- Llave foranea
	id_Transporte_Ferroviario int not null
);

create table Contenedores(
-- Identificador del registro
	Id_Contenedor int primary Key not null identity(1,1),
	MatriculaContenedor varchar(15) not null, 
	NumPecinto varchar(20), 
	TipoContenedor varchar(30) not null,
-- Llave foranea
	id_Transporte_Maritimo int not null
);

create table Transportes_Maritimos(
-- Identificador del registro
	id_Transporte_Maritimo int primary Key not null identity(1,1),
	Num_Permiso_SCT varchar(30), 
	Nombre_Aseg varchar(50), 
	Tipo_Embarcacion varchar(254) not null,
	Matricula varchar(7) not null, 
	Numero_OMI varchar(20) not null, 
	Anio_Embarcacion int,
	Nombre_Embarc varchar(50), 
	Nacionalidad_Embarc varchar(254) not null, 
	Unidades_De_Arq_Bruto decimal not null, 
	Tipo_Carga  varchar(100) not null, 
	Num_Cert_ITC varchar(50) not null,
	Eslora decimal, Manga decimal, 
	calado decimal, 
	Linea_Naviera varchar(100), 
	Nombre_Agente_Naviero varchar(100) not null, 
	Num_Autorizacion_Naviero varchar(50) not null,
	Num_Viaje varchar(50), 
	Num_Conoc_Embarc varchar(50), 
	Num_Poliza_Seguro varchar(30), 
	Perm_SCT varchar(254),
-- Llave foranea
	Id_total_mercancias int not null
);


create table Cartas_Porte(
-- Identificador del registro
	Id_Carta_Porte varchar(50) primary Key not null,
	version_carta_porte varchar(20) not null, 
	Trans_Internac varchar(10) not null, 
	Entrada_SalidaMerc varchar (10), 
	Pais_Origen_Destino varchar(100), 
	Via_Entrada_Salida varchar(100), 
	Total_Dist_Rec decimal
);

create table Ubicaciones_Totales(
-- Identificador del registro
	Id_Ubicaciones_Totales varchar(10) primary Key not null,
-- Llave foranea
	Id_Carta_Porte varchar(50) not null
);

create table Figuras_Transporte(
-- Identificador del registro
	Id_Figura_Transporte int primary Key not null identity(1,1),
-- Llave foranea
	Id_Carta_Porte varchar(50) not null
	);

create table Tipos_Figura(
-- Identificador del registro
	Id_Tipo_Figura int primary Key not null identity(1,1),
	RFCFigura varchar(15), 
	NumLicencia varchar(16), 
	NombreFigura varchar(20),
	NumRegIDTribFigura varchar(40), 
	ResidenciaFiscalFigura varchar(30),
	TipoFigura varchar(10) not null,
-- Llave foranea	
	Id_Figura_Transporte int not null
);

create table Partes_Transporte(
-- Identificador del registro
	id_parte_transporte int not null primary key identity(1,1), 
	parte_transporte varchar(50) not null,
-- Llave foranea
	Id_Tipo_Figura int not null
);

create table Domicilios(
-- Identificador del registro
	Id_domicilio int primary Key not null identity(1,1),
	Calle varchar(50), 
	Numero_Exterior int, 
	Numero_Interior int,
	Colonia varchar(50), 
	Localidad varchar (50), 
	Referencia varchar(250),
	Municipio varchar(50), 
	Estado Varchar(30) not null, 
	Pais varchar(50) not null,
	Codigo_Postal varchar(12) not null,
-- Llaves foraneas; ambas opcionales
	id_ubicaciones int,
	Id_Tipo_Figura int
);

create table Ubicaciones(
-- IDentificador del registro
	Id_Ubicaciones int primary Key not null identity(1,1),
	RFC_Remitente_Destinatario varchar(20),
	Nombre_Remitente_Destinatario varchar(100), 
	Num_Reg_Id_Trib varchar(40),
	Residencia_Fiscal varchar(100), 
	Num_Estacion varchar(50), 
	Nombre_Estacion varchar(50), 
	Navegacion_Trafico varchar(100), 
	Fecha_Hora_Salida_Llegada date not null, 
	Tipo_Estacion varchar(2),
	Distancia_Recorrida decimal, 
	Tipo_Ubicacion varchar not null,
-- Llave foranea
	Id_Ubicaciones_Totales varchar(10) 
);

create table Carros(
-- Identificador del registro
	Id_Carro int primary Key not null identity(1,1),
	Matricula_Carro varchar(15) not null, 
	Guia_Carro varchar(15) not null,
	Toneladas_Neta_Carro decimal not null, 
	Tipo_Carro varchar (50) not null,
-- Llave foranea
	id_Transporte_Ferroviario int not null
);

create table Contenedores_Carro(
-- Identificador del registro
	Id_Contenedor_carro int primary Key not null identity(1,1),
	Tipo_Contenedor varchar(100) not null, 
	Peso_Contenedor_Vacio decimal not null,
	Peso_Neto_Mercancia decimal not null,
-- Llave foranea
	Id_Carro int not null
	);


--------------------------------------------- Relationships ----------------------

ALTER TABLE Contenedores_Carro
	ADD FOREIGN KEY(Id_Carro)
	REFERENCES Carros(Id_Carro)
	ON UPDATE CASCADE;

ALTER TABLE Carros
	ADD FOREIGN KEY(id_Transporte_Ferroviario)
	REFERENCES Transportes_Ferroviarios(id_Transporte_Ferroviario)
	ON UPDATE CASCADE;

ALTER TABLE Ubicaciones
	ADD FOREIGN KEY(Id_Ubicaciones_Totales)
	REFERENCES Ubicaciones_Totales(Id_Ubicaciones_Totales)
	ON UPDATE CASCADE;

ALTER TABLE Domicilios
	ADD FOREIGN KEY(id_ubicaciones)
	REFERENCES Ubicaciones(id_ubicaciones)
	ON UPDATE CASCADE;

ALTER TABLE Domicilios
	ADD FOREIGN KEY(Id_Tipo_Figura)
	REFERENCES Tipos_Figura(Id_Tipo_Figura)
	ON UPDATE CASCADE;

ALTER TABLE Partes_Transporte
	ADD FOREIGN KEY(Id_Tipo_Figura)
	REFERENCES Tipos_Figura(Id_Tipo_Figura)
	ON UPDATE CASCADE;

ALTER TABLE Tipos_Figura
	ADD FOREIGN KEY(Id_Figura_Transporte)
	REFERENCES Figuras_Transporte(Id_Figura_Transporte)
	ON UPDATE CASCADE;

ALTER TABLE Ubicaciones_Totales
	ADD FOREIGN KEY(Id_Carta_Porte)
	REFERENCES cartas_porte(Id_Carta_Porte)
	ON UPDATE CASCADE;
	
ALTER TABLE Transportes_Maritimos
	ADD FOREIGN KEY(Id_total_mercancias)
	REFERENCES totales_mercancias(Id_total_mercancias)
	ON UPDATE CASCADE;

ALTER TABLE Contenedores
	ADD FOREIGN KEY(Id_transporte_maritimo)
	REFERENCES Transportes_Maritimos(Id_transporte_maritimo)
	ON UPDATE CASCADE;

ALTER TABLE Derechos_De_Paso
	ADD FOREIGN KEY(Id_transporte_ferroviario)
	REFERENCES Transportes_Ferroviarios(Id_transporte_ferroviario)
	ON UPDATE CASCADE;	

ALTER TABLE Transportes_Ferroviarios
	ADD FOREIGN KEY(Id_total_mercancias)
	REFERENCES totales_mercancias(Id_total_mercancias)
	ON UPDATE CASCADE;	

ALTER TABLE Transportes_Aereos
	ADD FOREIGN KEY(Id_total_mercancias)
	REFERENCES totales_mercancias(Id_total_mercancias)
	ON UPDATE CASCADE;	

ALTER TABLE Totales_Mercancias
	ADD FOREIGN KEY(Id_Carta_Porte)
	REFERENCES cartas_porte(Id_Carta_Porte)
	ON UPDATE CASCADE;	
	
ALTER TABLE Remolques
	ADD FOREIGN KEY(id_Auto_Transporte)
	REFERENCES Autos_Transporte(id_Auto_Transporte)
	ON UPDATE CASCADE;	

ALTER TABLE Seguros
	ADD FOREIGN KEY(id_Auto_Transporte)
	REFERENCES Autos_Transporte(id_Auto_Transporte)
	ON UPDATE CASCADE;	

ALTER TABLE Identificaciones_Vehiculares
	ADD FOREIGN KEY(id_Auto_Transporte)
	REFERENCES Autos_Transporte(id_Auto_Transporte)
	ON UPDATE CASCADE;	
	
ALTER TABLE Autos_Transporte
	ADD FOREIGN KEY(Id_total_mercancias)
	REFERENCES totales_mercancias(Id_total_mercancias)
	ON UPDATE CASCADE;	

ALTER TABLE Detalles_Mercancias
	ADD FOREIGN KEY(id_mercancias)
	REFERENCES Mercancias(id_mercancias)
	ON UPDATE CASCADE;	

ALTER TABLE Pedimentos
	ADD FOREIGN KEY(id_mercancias)
	REFERENCES Mercancias(id_mercancias)
	ON UPDATE CASCADE;	

ALTER TABLE Guias_De_Identificacion
	ADD FOREIGN KEY(id_mercancias)
	REFERENCES Mercancias(id_mercancias)
	ON UPDATE CASCADE;	

ALTER TABLE Cantidades_Transporta
	ADD FOREIGN KEY(id_mercancias)
	REFERENCES Mercancias(id_mercancias)
	ON UPDATE CASCADE;	
	
ALTER TABLE Mercancias
	ADD FOREIGN KEY(Id_total_mercancias)
	REFERENCES totales_mercancias(Id_total_mercancias)
	ON UPDATE CASCADE;

