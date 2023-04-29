CREATE DATABASE ROJASSOLUTECH

CREATE TABLE   Buses (
    bus_id INTEGER PRIMARY KEY,
    ficha TEXT NOT NULL,
    marca TEXT NOT NULL,
    modelo TEXT NOT NULL,
    capacidad INTEGER NOT NULL
);

CREATE TABLE   Viajes (
    viaje_id INTEGER PRIMARY KEY,
    lugar TEXT NOT NULL,
    salida DATETIME NOT NULL,
    llegada DATETIME NOT NULL,
    bus_id INTEGER NOT NULL,
    FOREIGN KEY (bus_id) REFERENCES Buses (bus_id)
);

CREATE TABLE   Choferes (
    chofer_id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    cedula TEXT NOT NULL,
    telefono TEXT NOT NULL,
    bus_id INTEGER NOT NULL,
    FOREIGN KEY (bus_id) REFERENCES Buses (bus_id)
);

CREATE TABLE   Gastos (
    gasto_id INTEGER PRIMARY KEY,
    concepto TEXT NOT NULL,
    monto REAL NOT NULL,
    fecha DATE NOT NULL,
    chofer_id INTEGER NOT NULL,
    FOREIGN KEY (chofer_id) REFERENCES Choferes (chofer_id)
);

CREATE TABLE  Ingresos (
    ingreso_id INTEGER PRIMARY KEY,
    concepto TEXT NOT NULL,
    monto REAL NOT NULL,
    fecha DATE NOT NULL,
    chofer_id INTEGER NOT NULL,
    FOREIGN KEY (chofer_id) REFERENCES Choferes (chofer_id)
);

INSERT INTO Buses (bus_id,ficha, marca, modelo, capacidad) VALUES
(1,'F0001', 'Mercedes Benz', 'Sprinter 519 CDI', 22),
(2,'F0002', 'Mercedes Benz', 'Sprinter 516 CDI', 20),
(3,'F0003', 'Daihatsu', 'Delta V116L', 25),
(4,'F0004', 'Daihatsu', 'Delta V118L', 27),
(5,'F0005', 'Toyota', 'Coaster', 30),
(6,'F0006', 'Toyota', 'Hiace', 16),
(7,'F0007', 'Mercedes Benz', 'Sprinter 515 CDI', 19),
(8,'F0008', 'Daihatsu', 'Delta V119L', 28),
(9,'F0009', 'Toyota', 'Coaster', 30),
(10,'F0010', 'Toyota', 'Hiace', 16);


INSERT INTO Choferes (chofer_id,nombre, cedula, telefono, bus_id) VALUES
(1,'Juan Pérez', '001-1234567-8', '(809)123-4567', 5),
(2,'María González', '002-2345678-9', '(829)234-5678', 9),
(3,'Pedro Rodríguez', '003-3456789-0', '(849)345-6789', 2),
(4,'Ana García', '004-4567890-1', '(809)456-7890', 7),
(5,'Miguel Martínez', '005-5678901-2', '(829)567-8901', 4),
(6,'Carmen Fernández', '006-6789012-3', '(849)678-9012', 10),
(7,'Manuel Gómez', '007-7890123-4', '(809)789-0123', 6),
(8,'Susana Morales', '008-8901234-5', '(829)890-1234', 3),
(10,'Roberto Jiménez', '009-9012345-6', '(849)901-2345', 8),
(11,'Laura Peña', '010-0123456-7', '(809)012-3456', 1);




INSERT INTO Viajes (viaje_id,lugar, salida, llegada, bus_id) VALUES
(1,'Santo Domingo Este', '2023-04-25 08:00:00', '2023-04-25 08:50:00', 5),
(2,'Santo Domingo Norte', '2023-04-26 09:30:00', '2023-04-26 10:15:00', 1),
(3,'Santo Domingo Oeste', '2023-04-27 11:00:00', '2023-04-27 11:50:00', 8),
(4,'Santo Domingo Este', '2023-04-28 14:00:00', '2023-04-28 14:50:00', 3),
(5,'Santo Domingo Norte', '2023-04-29 15:30:00', '2023-04-29 16:15:00', 1),
(6,'Santo Domingo Oeste', '2023-04-30 17:00:00', '2023-04-30 17:50:00', 4),
(7,'Santo Domingo Este', '2023-05-01 18:30:00', '2023-05-01 19:15:00', 7),
(8,'Santo Domingo Norte', '2023-04-25 12:00:00', '2023-04-25 12:45:00', 4),
(9,'Santo Domingo Oeste', '2023-04-26 13:30:00', '2023-04-26 14:15:00', 3),
(10,'Santo Domingo Este', '2023-04-27 15:00:00', '2023-04-27 15:45:00', 6),
(11,'Santo Domingo Norte', '2023-04-28 16:30:00', '2023-04-28 17:15:00', 8),
(12,'Santo Domingo Oeste', '2023-04-29 10:00:00', '2023-04-29 10:50:00', 5),
(13,'Santo Domingo Este', '2023-04-30 11:30:00', '2023-04-30 12:15:00', 3),
(14,'Santo Domingo Norte', '2023-05-01 13:00:00', '2023-05-01 13:50:00', 7),
(15,'Santo Domingo Oeste', '2023-04-25 14:30:00', '2023-04-25 15:15:00', 1);



INSERT INTO Ingresos (ingreso_id,concepto, monto, fecha, chofer_id) VALUES
(1,'Ingreso viaje', 7500, '2023-04-25', 1),
(3,'Ingreso viaje', 6400, '2023-04-26', 2),
(4,'Ingreso viaje', 9800, '2023-04-27', 3),
(5,'Ingreso viaje', 7100, '2023-04-28', 4),
(6,'Ingreso viaje', 8600, '2023-04-29', 5),
(7,'Ingreso viaje', 6100, '2023-04-30', 6),
(8,'Ingreso viaje', 10400, '2023-05-01', 7),
(9,'Ingreso viaje', 9300, '2023-04-25', 8),
(10,'Ingreso viaje', 7900, '2023-04-26', 10),
(11,'Ingreso viaje', 6800, '2023-04-27', 11)

--(12,'Ingreso viaje', 8300, '2023-04-28', 12),
--(13,'Ingreso viaje', 7400, '2023-04-29', 13),
--(14,'Ingreso viaje', 8900, '2023-04-30', 14),
--(15,'Ingreso viaje', 10200, '2023-05-01', 15),
--(16,'Ingreso viaje', 6600, '2023-04-25', 16);

INSERT INTO Gastos (gasto_id,concepto, monto, fecha, chofer_id) VALUES
(1,'Compra de combustible', 2475, '2023-04-25', 1),
(2,'Pago de peaje', 2112, '2023-04-26', 2),
(3,'Mantenimiento del vehículo', 3234, '2023-04-27', 3),
(4,'Compra de combustible', 2343, '2023-04-28', 4),
(5,'Pago de peaje', 2838, '2023-04-29', 5),
(6,'Mantenimiento del vehículo', 2013, '2023-04-30', 6),
(7,'Compra de combustible', 3432, '2023-05-01', 7),
(8,'Pago de peaje', 3069, '2023-04-25', 8),
(9,'Mantenimiento del vehículo', 2607, '2023-04-26', 10),
(10,'Compra de combustible', 2244, '2023-04-27',11)

select * from Choferes
select * from Buses
select * from Gastos
select * from Ingresos
select * from Viajes

