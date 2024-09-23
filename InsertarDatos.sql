INSERT INTO Usuario VALUES (1), (2);

INSERT INTO Mascota (nombre, edad, tipo, UsuarioId) VALUES
('Firulais', 3, 'perro', 1),
('Chetto', 2, 'gato', 1),
('Canelo', 4, 'perro', 2),
('Luna', 1, 'gato', 2);

INSERT INTO Publicacion (contenido, MascotaId) VALUES
('Hoy jugué mucho en el parque', 1),
('Chetto duerme todo el día', 2),
('Canelo es el rey de la casa', 3),
('Luna es muy traviesa', 4);

INSERT INTO Comentario (contenido, PublicacionId, MascotaId) VALUES
('¡Qué divertido!', 1, 2),
('Luna es adorablé', 4, 1),
('Chetto debería salir más', 2, 3);

INSERT INTO Amistad (MascotaId1, MascotaId2) VALUES
(1, 2),
(2, 3),
(3, 4);

SELECT * FROM Usuario;
SELECT * FROM Mascota;
SELECT * FROM Publicacion;
SELECT * FROM Comentario;
SELECT * FROM Amistad;