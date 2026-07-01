Use BarberiaDB;
go

create table Profesionales(
Id_Profesional int identity(1,1) PRIMARY KEY NOT NULL,
Nombre_profesional Varchar(100) NOT NULL,
Especialidad Varchar(100) NOT NULL,
Telefono Varchar(20) NOT NULL,
Activo Bit DEFAULT 1 NOT NULL
);

create table Clientes(
Id_Cliente int Identity(1,1) PRIMARY KEY,
Nombre_Cliente Varchar(100) NOT NULL,
Telefono Varchar(20) NOT NULL,
Activo Bit DEFAULT 1 NOT NULL

);

create table Horario(
Id_horario INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
Id_Profesional int NOT NULL,
DiaSemana INT NOT NULL,
HoraInicio TIME NOT NULL,
HoraFin TIME NOT NULL,
CONSTRAINT FK_Horario_Profesionales FOREIGN KEY (Id_Profesional) REFERENCES Profesionales(Id_Profesional)
);

create table Servicios(
Id_Servicio INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
NombreServicio VARCHAR(20) NOT NULL,
Duracion INT NOT NULL,
Precio BIGINT NOT NULL
);

create table Turno(
Id_Turno INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
FechaHora DATETIME NOT NULL,
Id_Cliente INT NOT NULL,
Id_Profesional INT NOT NULL,
Id_Servicio INT NOT NULL,
CONSTRAINT FK_Turno_Clientes FOREIGN KEY(Id_Cliente) REFERENCES Clientes(Id_Cliente),
CONSTRAINT FK_Turno_Profesionales FOREIGN KEY(Id_Profesional) REFERENCES Profesionales(Id_Profesional),
CONSTRAINT FK_Turno_Servicios FOREIGN KEY(Id_Servicio) REFERENCES Servicios(Id_Servicio)

);