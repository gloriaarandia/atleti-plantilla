Create database if not exists atletiplantilla;
use atletiplantilla;

-- Tabla jugador
Create table jugador (
id_jugador int auto_increment primary key,
nombre varchar(100) not null,
dorsal int not null unique,
posicion enum('Portero', 'Defensa', 'Centrocampista', 'Delantero') not null,
fecha_nacimiento date not null,
equipo_actual varchar(100) not null,
equipo_procedencia varchar(100) null,
nacionalidad varchar(100) not null,
url_imagen varchar(255) not null,
titular boolean not null default false
);


-- Tabla estadística
Create table estadistica (
id_estadistica int auto_increment primary key,
id_jugador int not null,
temporada varchar(7) not null,
competicion varchar(100) not null,
goles int not null default 0,
asistencias int not null default 0,
apariciones int not null default 0,
amarillas int not null default 0,
rojas int not null default 0,
unique (id_jugador, temporada, competicion),
foreign key (id_jugador) references jugador(id_jugador)
);