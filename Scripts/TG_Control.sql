GO
-- TG actualizar puesto en nuevo Alquiler
CREATE TRIGGER tg_actualizar_disponibilidad_puesto
ON Alquileres
AFTER INSERT
AS
BEGIN
	DECLARE @mIdPuesto int
	SELECT @mIdPuesto = i.id_puesto
	FROM inserted i
	UPDATE Puestos
	SET disponible = 0
	WHERE id_puesto = @mIdPuesto
END