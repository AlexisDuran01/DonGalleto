CREATE TABLE tipoSalas (
    id SERIAL PRIMARY KEY,
    tipo VARCHAR(30) NOT NULL
);

CREATE TABLE salas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    capacidad INT NOT NULL,
    estatus integer,
    descripcion TEXT,
    tipoSala INT REFERENCES tipoSalas(id)
);


INSERT INTO tipoSalas (tipo) VALUES
('Sala Estándar'),
('3D'),
('IMAX'),
('VIP'),
('4DX');

SELECT * FROM tipoSalas;

INSERT INTO salas (nombre, capacidad, tipoSala, estatus) VALUES
('Sala 1', 100, 1, 1),  -- Sala Estándar
('Sala 2', 100, 1, 1),  -- Sala Estándar
('Sala 3', 120, 2, 1),  -- 3D
('Sala 4', 120, 2, 1),  -- 3D
('Sala 5', 150, 3, 1),  -- IMAX
('Sala 6', 150, 3, 1),  -- IMAX
('Sala 7', 80, 4, 1),   -- VIP
('Sala 8', 80, 4, 1),   -- VIP
('Sala 9', 140, 5, 1),  -- 4DX
('Sala 10', 140, 5, 1); -- 4DX

SELECT * FROM salas;

SELECT
    salas.id,
    nombre ,
    capacidad,
    estatus,
    descripcion,
    tipoSalas.tipo AS tipoSala
FROM
    salas
INNER JOIN
    tipoSalas ON salas.tipoSala = tipoSalas.id;
