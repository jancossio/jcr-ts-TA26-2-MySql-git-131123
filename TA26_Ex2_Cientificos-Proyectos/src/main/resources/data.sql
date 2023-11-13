DROP table IF EXISTS cientifico;
DROP table IF EXISTS proyecto;
DROP table IF EXISTS asignado_a;

create table cientifico(
	dni varchar(8),
	nomApels varchar(250),
    PRIMARY KEY(dni)
);

insert into cientifico (dni, nomApels)values('qwertyui','Mariano Gonzalez');
insert into cientifico (dni, nomApels)values('asdfghjk','Juan Lopez');
insert into cientifico (dni, nomApels)values('zxcvbnml','Maria Cantera');
insert into cientifico (dni, nomApels)values('poiuytre','Alberto Ribera');
insert into cientifico (dni, nomApels)values('lkjhgfds','Joselin Fernandez');


CREATE TABLE proyecto(
    id  varchar(4),
    nombre VARCHAR(250),
    horas INT,
    PRIMARY KEY(id)
);


insert into proyecto (id, nombre, horas)values('jhfk','Java',200);
insert into proyecto (id, nombre, horas)values('asdf','PHP',100);
insert into proyecto (id, nombre, horas)values('qwer','HTML',300);
insert into proyecto (id, nombre, horas)values('zxcv','Angular',250);
insert into proyecto (id, nombre, horas)values('mnbv','CSharp',350);


CREATE TABLE asignado_a(
    id INT AUTO_INCREMENT PRIMARY KEY,
    cientifico_dni varchar(8),
    proyecto_id varchar(4),
    FOREIGN KEY (cientifico_dni) REFERENCES cientifico(dni),
    FOREIGN KEY (proyecto_id) REFERENCES proyecto(id)
);


INSERT INTO asignado_a (cientifico_dni, proyecto_id) VALUES ('qwertyui', 'jhfk');
INSERT INTO asignado_a (cientifico_dni, proyecto_id) VALUES ('asdfghjk', 'asdf');
INSERT INTO asignado_a (cientifico_dni, proyecto_id) VALUES ('zxcvbnml', 'qwer');
INSERT INTO asignado_a (cientifico_dni, proyecto_id) VALUES ('poiuytre', 'zxcv');
INSERT INTO asignado_a (cientifico_dni, proyecto_id) VALUES ('lkjhgfds', 'mnbv');