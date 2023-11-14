DROP table IF EXISTS cientifico;
DROP table IF EXISTS proyecto;
DROP table IF EXISTS asignado_a;

create table cientificos(
	dni varchar(8),
	nom_apels varchar(250),
    PRIMARY KEY(dni)
);

insert into cientificos (dni, nom_apels)values('qwertyui','Mariano Gonzalez');
insert into cientificos (dni, nom_apels)values('asdfghjk','Juan Lopez');
insert into cientificos (dni, nom_apels)values('zxcvbnml','Maria Cantera');
insert into cientificos (dni, nom_apels)values('poiuytre','Alberto Ribera');
insert into cientificos (dni, nom_apels)values('lkjhgfds','Joselin Fernandez');


CREATE TABLE proyectos(
    id  varchar(4),
    nombre VARCHAR(250),
    horas INT,
    PRIMARY KEY(id)
);


insert into proyectos (id, nombre, horas)values('jhfk','Java',200);
insert into proyectos (id, nombre, horas)values('asdf','PHP',100);
insert into proyectos (id, nombre, horas)values('qwer','HTML',300);
insert into proyectos (id, nombre, horas)values('zxcv','Angular',250);
insert into proyectos (id, nombre, horas)values('mnbv','CSharp',350);


CREATE TABLE asignado_a(
    id INT AUTO_INCREMENT PRIMARY KEY,
    cientifico_dni varchar(8),
    proyecto_id varchar(4),
    FOREIGN KEY (cientifico_dni) REFERENCES cientifico(dni) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (proyecto_id) REFERENCES proyecto(id) ON DELETE CASCADE ON UPDATE CASCADE
);


INSERT INTO asignado_a (cientifico_dni, proyecto_id) VALUES ('qwertyui', 'jhfk');
INSERT INTO asignado_a (cientifico_dni, proyecto_id) VALUES ('asdfghjk', 'asdf');
INSERT INTO asignado_a (cientifico_dni, proyecto_id) VALUES ('zxcvbnml', 'qwer');
INSERT INTO asignado_a (cientifico_dni, proyecto_id) VALUES ('poiuytre', 'zxcv');
INSERT INTO asignado_a (cientifico_dni, proyecto_id) VALUES ('lkjhgfds', 'mnbv');