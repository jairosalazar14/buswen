--Crear tablas--
CREATE TABLE IF NOT EXISTS Buses (
    bus_id INTEGER PRIMARY KEY,
    ficha TEXT NOT NULL,
    marca TEXT NOT NULL,
    modelo TEXT NOT NULL,
    capacidad INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Viajes (
    viaje_id INTEGER PRIMARY KEY,
    lugar TEXT NOT NULL,
    salida DATETIME NOT NULL,
    llegada DATETIME NOT NULL,
    bus_id INTEGER NOT NULL,
    FOREIGN KEY (bus_id) REFERENCES Buses (bus_id)
);

CREATE TABLE IF NOT EXISTS Choferes (
    chofer_id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    cedula TEXT NOT NULL,
    telefono TEXT NOT NULL,
    bus_id INTEGER NOT NULL,
    FOREIGN KEY (bus_id) REFERENCES Buses (bus_id)
);

CREATE TABLE IF NOT EXISTS Gastos (
    gasto_id INTEGER PRIMARY KEY,
    concepto TEXT NOT NULL,
    monto REAL NOT NULL,
    fecha DATE NOT NULL,
    chofer_id INTEGER NOT NULL,
    FOREIGN KEY (chofer_id) REFERENCES Choferes (chofer_id)
);

CREATE TABLE IF NOT EXISTS Ingresos (
    ingreso_id INTEGER PRIMARY KEY,
    concepto TEXT NOT NULL,
    monto REAL NOT NULL,
    fecha DATE NOT NULL,
    chofer_id INTEGER NOT NULL,
    FOREIGN KEY (chofer_id) REFERENCES Choferes (chofer_id)
);


--Llenar tablas--
INSERT INTO Buses (ficha, marca, modelo, capacidad) VALUES
('F0001', 'Mercedes Benz', 'Sprinter 519 CDI', 22),
('F0002', 'Mercedes Benz', 'Sprinter 516 CDI', 20),
('F0003', 'Daihatsu', 'Delta V116L', 25),
('F0004', 'Daihatsu', 'Delta V118L', 27),
('F0005', 'Toyota', 'Coaster', 30),
('F0006', 'Toyota', 'Hiace', 16),
('F0007', 'Mercedes Benz', 'Sprinter 515 CDI', 19),
('F0008', 'Daihatsu', 'Delta V119L', 28),
('F0009', 'Toyota', 'Coaster', 30),
('F0010', 'Toyota', 'Hiace', 16);


INSERT INTO Choferes (nombre, cedula, telefono, bus_id) VALUES
('Juan Pérez', '001-1234567-8', '(809)123-4567', 5),
('María González', '002-2345678-9', '(829)234-5678', 9),
('Pedro Rodríguez', '003-3456789-0', '(849)345-6789', 2),
('Ana García', '004-4567890-1', '(809)456-7890', 7),
('Miguel Martínez', '005-5678901-2', '(829)567-8901', 4),
('Carmen Fernández', '006-6789012-3', '(849)678-9012', 10),
('Manuel Gómez', '007-7890123-4', '(809)789-0123', 6),
('Susana Morales', '008-8901234-5', '(829)890-1234', 3),
('Roberto Jiménez', '009-9012345-6', '(849)901-2345', 8),
('Laura Peña', '010-0123456-7', '(809)012-3456', 1);


INSERT INTO Viajes (lugar, salida, llegada, bus_id) VALUES
('Santo Domingo Este', '2023-04-25 08:00:00', '2023-04-25 08:50:00', 5),
('Santo Domingo Norte', '2023-04-26 09:30:00', '2023-04-26 10:15:00', 1),
('Santo Domingo Oeste', '2023-04-27 11:00:00', '2023-04-27 11:50:00', 8),
('Santo Domingo Este', '2023-04-28 14:00:00', '2023-04-28 14:50:00', 3),
('Santo Domingo Norte', '2023-04-29 15:30:00', '2023-04-29 16:15:00', 1),
('Santo Domingo Oeste', '2023-04-30 17:00:00', '2023-04-30 17:50:00', 4),
('Santo Domingo Este', '2023-05-01 18:30:00', '2023-05-01 19:15:00', 7),
('Santo Domingo Norte', '2023-04-25 12:00:00', '2023-04-25 12:45:00', 4),
('Santo Domingo Oeste', '2023-04-26 13:30:00', '2023-04-26 14:15:00', 3),
('Santo Domingo Este', '2023-04-27 15:00:00', '2023-04-27 15:45:00', 6),
('Santo Domingo Norte', '2023-04-28 16:30:00', '2023-04-28 17:15:00', 8),
('Santo Domingo Oeste', '2023-04-29 10:00:00', '2023-04-29 10:50:00', 5),
('Santo Domingo Este', '2023-04-30 11:30:00', '2023-04-30 12:15:00', 3),
('Santo Domingo Norte', '2023-05-01 13:00:00', '2023-05-01 13:50:00', 7),
('Santo Domingo Oeste', '2023-04-25 14:30:00', '2023-04-25 15:15:00', 1);


INSERT INTO Ingresos (concepto, monto, fecha, chofer_id) VALUES
('Ingreso viaje', 7500, '2023-04-25', 1),
('Ingreso viaje', 6400, '2023-04-26', 10),
('Ingreso viaje', 9800, '2023-04-27', 9),
('Ingreso viaje', 7100, '2023-04-28', 8),
('Ingreso viaje', 8600, '2023-04-29', 10),
('Ingreso viaje', 6100, '2023-04-30', 5),
('Ingreso viaje', 10400, '2023-05-01', 4),
('Ingreso viaje', 9300, '2023-04-25', 5),
('Ingreso viaje', 7900, '2023-04-26', 8),
('Ingreso viaje', 6800, '2023-04-27', 7),
('Ingreso viaje', 8300, '2023-04-28', 9),
('Ingreso viaje', 7400, '2023-04-29', 1),
('Ingreso viaje', 8900, '2023-04-30', 2),
('Ingreso viaje', 10200, '2023-05-01', 4),
('Ingreso viaje', 6600, '2023-04-25', 6);

INSERT INTO Gastos (concepto, monto, fecha, chofer_id) VALUES
('Compra de combustible', 2475, '2023-04-25', 1),
('Pago de peaje', 2112, '2023-04-26', 10),
('Mantenimiento del vehículo', 3234, '2023-04-27', 9),
('Compra de combustible', 2343, '2023-04-28', 8),
('Pago de peaje', 2838, '2023-04-29', 10),
('Mantenimiento del vehículo', 2013, '2023-04-30', 5),
('Compra de combustible', 3432, '2023-05-01', 4),
('Pago de peaje', 3069, '2023-04-25', 5),
('Mantenimiento del vehículo', 2607, '2023-04-26', 8),
('Compra de combustible', 2244, '2023-04-27', 7),
('Pago de peaje', 2739, '2023-04-28', 9),
('Mantenimiento del vehículo', 2442, '2023-04-29', 1),
('Compra de combustible', 2937, '2023-04-30', 2),
('Pago de peaje', 3366, '2023-05-01', 4),
('Mantenimiento del vehículo', 2178, '2023-04-25', 6);

WITH IngresosAgrupados AS (
    SELECT chofer_id, fecha, SUM(monto) AS monto_total
    FROM Ingresos
    GROUP BY chofer_id, fecha
),
GastosAgrupados AS (
    SELECT chofer_id, fecha, SUM(monto) AS monto_total
    FROM Gastos
    GROUP BY chofer_id, fecha
)

SELECT 
    v.lugar AS Destino,
    (strftime('%s', v.llegada) - strftime('%s', v.salida)) / 60 AS Duración,
    c.nombre AS Chofer,
    b.capacidad AS Pasajeros,
    b.ficha AS Bus,
    i.monto_total AS Ingreso,
    g.monto_total AS Gasto,
    (i.monto_total - g.monto_total) AS Utilidad
FROM
    Viajes AS v
JOIN
    Buses AS b ON v.bus_id = b.bus_id
JOIN
    Choferes AS c ON b.bus_id = c.bus_id
JOIN
    IngresosAgrupados AS i ON c.chofer_id = i.chofer_id AND DATE(i.fecha) = DATE(v.salida)
JOIN
    GastosAgrupados AS g ON c.chofer_id = g.chofer_id AND DATE(g.fecha) = DATE(v.salida)
ORDER BY
    v.viaje_id;

