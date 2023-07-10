CREATE DATABASE IF NOT EXISTS dbmysql;

USE dbmysql;

CREATE TABLE type_document (
  id int(10) NOT NULL AUTO_INCREMENT comment 'Identificador único', 
  name_document varchar(150) NOT NULL comment 'Nombre del documento', 
  CONSTRAINT pk_type_document PRIMARY KEY (id), 
  CONSTRAINT uk_type_document UNIQUE (name_document)
) comment='Tipo de documento';

CREATE TABLE specialty (
  id int(10) NOT NULL AUTO_INCREMENT comment 'Identificador único', 
  specialty varchar(100) NOT NULL comment 'Nombre de la especialidad', 
  CONSTRAINT pk_specialty PRIMARY KEY (id), 
  CONSTRAINT uk_specialty UNIQUE (specialty)
) comment='Especialidad';

CREATE TABLE doctor (
  id int(10) NOT NULL AUTO_INCREMENT comment 'Identificador único', 
  name varchar(100) NOT NULL comment 'Nombre del doctor', 
  surname varchar(100) NOT NULL comment 'Apellido del doctor', 
  email varchar(200) NOT NULL comment 'Correo electrónico del doctor', 
  office varchar(20) NOT NULL comment 'Consultorio', 
  specialty int(10) NOT NULL comment 'Especialidad', 
  CONSTRAINT pk_doctor PRIMARY KEY (id), 
  CONSTRAINT uk_doctor UNIQUE (email)
) comment='Datos del doctor';

CREATE TABLE user (
  id int(10) NOT NULL AUTO_INCREMENT comment 'Identificador único', 
  name varchar(100) NOT NULL comment 'Nombre del usuario o paciente', 
  surname varchar(100) NOT NULL comment 'Apellido del usuario o paciente', 
  years int(10) NOT NULL comment 'Edad del usuario o paciente', 
  phone varchar(20) NOT NULL comment 'Número de teléfono del usuario o paciente', 
  document_number varchar(150) NOT NULL comment 'Número de documento del usuario o paciente', 
  type_document int(10) NOT NULL comment 'Tipo de identificación', 
  CONSTRAINT pk_user PRIMARY KEY (id), 
  CONSTRAINT uk_user UNIQUE (document_number, type_document)
) comment='Datos del cliente';

CREATE TABLE appointment (
  id int(10) NOT NULL AUTO_INCREMENT comment 'Identificador único', 
  date date NOT NULL comment 'Fecha de la cita', 
  hour time(6) NOT NULL comment 'Hora de la cita', 
  doctor int(10) NOT NULL comment 'Identificado del doctor asignado para la cita', 
  user int(10) NOT NULL comment 'Identificador del usuario que solicita la cita', 
  CONSTRAINT pk_appointment PRIMARY KEY (id)
) comment='Datos para generar la cita';

ALTER TABLE user ADD CONSTRAINT fk_document_user FOREIGN KEY (type_document) REFERENCES type_document (id);
ALTER TABLE doctor ADD CONSTRAINT fk_specialty_doctor FOREIGN KEY (specialty) REFERENCES specialty (id);
ALTER TABLE appointment ADD CONSTRAINT fk_doctor_appointment FOREIGN KEY (doctor) REFERENCES doctor (id);
ALTER TABLE appointment ADD CONSTRAINT fk_user_appointment FOREIGN KEY (user) REFERENCES user (id);
