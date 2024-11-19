CREATE DATABASE IF NOT EXISTS db_clinica;
USE db_clinica;

CREATE TABLE IF NOT EXISTS pacientes (
    idPaciente INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    fechaNacimiento DATE NULL
);

CREATE TABLE IF NOT EXISTS doctores (
    idDoctor INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS citas (
    idCita INT PRIMARY KEY AUTO_INCREMENT,
    idPaciente INT FOREIGN KEY (idPaciente) REFERENCES Pacientes (idPaciente),
    idDoctor INT FOREIGN KEY (idDoctor) REFERENCES Doctores (idDoctor),
    fechaCita DATETIME NOT NULL,
    motivo VARCHAR(200) NULL
);