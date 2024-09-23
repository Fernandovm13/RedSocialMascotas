-- CONSULTAR USUARIOS CON SUS MASCOTAS--
SELECT 
    Usuario.id AS UsuarioID,
    Mascota.nombre AS MascotaNombre,
    Mascota.edad AS MascotaEdad,
    Mascota.tipo AS MascotaTipo
FROM 
    Usuario
LEFT JOIN 
    Mascota ON Usuario.id = Mascota.UsuarioId;
    
 -- CONSULTAR PUBLICACIONES CON SUS MASCOTAS --    
    SELECT 
    Publicacion.id AS PublicacionID,
    Publicacion.contenido AS PublicacionContenido,
    Mascota.nombre AS MascotaNombre
FROM 
    Publicacion
JOIN 
    Mascota ON Publicacion.MascotaId = Mascota.id;

-- CONSULTAR COMENTARIOS CON SUS PUBLIACIONES Y MASCOTAS -- 
SELECT 
    Comentario.id AS ComentarioID,
    Comentario.contenido AS ComentarioContenido,
    Publicacion.id AS PublicacionID,
    Publicacion.contenido AS PublicacionContenido,
    Mascota.nombre AS MascotaNombre
FROM 
    Comentario
JOIN 
    Publicacion ON Comentario.PublicacionId = Publicacion.id
JOIN 
    Mascota ON Comentario.MascotaId = Mascota.id;
    
-- CONSULTAR AMISTADES ENTRE MASCOTAS -- 
SELECT 
    Amistad.id AS AmistadID,
    Mascota1.nombre AS Mascota1Nombre,
    Mascota2.nombre AS Mascota2Nombre
FROM 
    Amistad
JOIN 
    Mascota AS Mascota1 ON Amistad.MascotaId1 = Mascota1.id
JOIN 
    Mascota AS Mascota2 ON Amistad.MascotaId2 = Mascota2.id;
    
    
-- CONSULTAR PUBLICACIONES CON COMENTARIOS Y SU MASCOTAS -- 
SELECT 
    Publicacion.id AS PublicacionID,
    Publicacion.contenido AS PublicacionContenido,
    Mascota.nombre AS MascotaNombre,
    Comentario.id AS ComentarioID,
    Comentario.contenido AS ComentarioContenido
FROM 
    Publicacion
JOIN 
    Mascota ON Publicacion.MascotaId = Mascota.id
LEFT JOIN 
    Comentario ON Publicacion.id = Comentario.PublicacionId;
    
    


