﻿CREATE PROCEDURE [dbo].[TipoInquilinoEliminar]
	@Id_TipoInquilino INT

AS BEGIN
	SET NOCOUNT ON
		BEGIN TRANSACTION TRANSAC
			BEGIN TRY
			    DELETE FROM dbo.TipoInquilino WHERE Id_TipoInquilino = @Id_TipoInquilino
		COMMIT TRANSACTION TRANSAC
				SELECT 0 AS CodeError, '' AS MsgError
			END TRY
BEGIN CATCH
	SELECT 
		 ERROR_NUMBER() AS CodeError,
		 ERROR_MESSAGE() AS MsgError
	     ROLLBACK TRANSACTION TRANSAC
END CATCH
END