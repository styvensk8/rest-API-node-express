USE dbmysql;

INSERT INTO specialty (specialty) VALUES ('Medicina general'); 
INSERT INTO specialty (specialty) VALUES ('Cardiología');
INSERT INTO specialty (specialty) VALUES ('Medicina interna');
INSERT INTO specialty (specialty) VALUES ('Dermatología');
INSERT INTO specialty (specialty) VALUES ('Rehabilitación física');
INSERT INTO specialty (specialty) VALUES ('Psicología');
INSERT INTO specialty (specialty) VALUES ('Odontología');
INSERT INTO specialty (specialty) VALUES ('Radiología');

INSERT INTO type_document (name_document) VALUES ('Registro civil');
INSERT INTO type_document (name_document) VALUES ('Tarjeta de identidad');
INSERT INTO type_document (name_document) VALUES ('Cédula de ciudadanía');
INSERT INTO type_document (name_document) VALUES ('Cedula extranjeria');
INSERT INTO type_document (name_document) VALUES ('Pasaporte');

USE dbmysql;

INSERT INTO user (name, surname, years, phone, document_number, type_document) VALUES ('Styven','Castro','20','3108540206','1000604423',3);