CREATE DATABASE facedog;
USE facedog;

CREATE TABLE Usuario (
    id INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE Mascota (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    edad INT CHECK (edad >= 0),
    tipo ENUM('perro', 'gato', 'otro') NOT NULL,
    UsuarioId INT,
    FOREIGN KEY (UsuarioId) REFERENCES Usuario(id) ON DELETE CASCADE
);

CREATE TABLE Publicacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    contenido TEXT NOT NULL,
    MascotaId INT,
    FOREIGN KEY (MascotaId) REFERENCES Mascota(id) ON DELETE CASCADE
);

CREATE TABLE Comentario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    contenido TEXT NOT NULL,
    PublicacionId INT,
    MascotaId INT,
    FOREIGN KEY (PublicacionId) REFERENCES Publicacion(id) ON DELETE CASCADE,
    FOREIGN KEY (MascotaId) REFERENCES Mascota(id) ON DELETE CASCADE
);

CREATE TABLE Amistad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    MascotaId1 INT,
    MascotaId2 INT,
    FOREIGN KEY (MascotaId1) REFERENCES Mascota(id) ON DELETE CASCADE,
    FOREIGN KEY (MascotaId2) REFERENCES Mascota(id) ON DELETE CASCADE
);
