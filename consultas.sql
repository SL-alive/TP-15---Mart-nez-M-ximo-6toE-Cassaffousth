-- consulta 1
SELECT 
    e.nombre AS estudiante,
    e.dni,
    c.nombre AS curso,
    c.turno,
    c.nivel
FROM estudiantes e
JOIN cursos c ON e.id_curso = c.id_curso
ORDER BY c.nombre, e.nombre;

-- consulta 2
SELECT 
    nombre,
    fecha,
    estado
FROM eventos
WHERE fecha > '2025-08-01'
ORDER BY fecha ASC;


-- consulta 3
SELECT 
    nombre AS evento,
    fecha,
    descripcion,
    estado
FROM eventos
WHERE nombre = 'Día del Estudiante';

-- consulta 4

SELECT
    actividades.nombre AS actividad,
    recursos.nombre AS recurso,
    recursos.cantidad
FROM recursos
JOIN actividades
    ON recursos.id_actividad = actividades.id_actividad
ORDER BY actividades.nombre ASC, recursos.nombre ASC;


-- consulta 5


SELECT
    estudiantes.nombre AS estudiante,
    actividades.nombre AS actividad,
    eventos.nombre AS evento,
    participaciones.rol
FROM participaciones
JOIN estudiantes 
    ON participaciones.id_estudiante = estudiantes.id_estudiante
JOIN actividades 
    ON participaciones.id_actividad = actividades.id_actividad
JOIN eventos
    ON actividades.id_evento = eventos.id_evento
ORDER BY estudiantes.nombre ASC;

-- Martinez Maximo - 6to E