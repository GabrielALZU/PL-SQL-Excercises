CREATE OR REPLACE PROCEDURE IMPRIME_CUADRADO(N IN INT)
AS
BEGIN
FOR I IN 1..N LOOP
	IMPRIME_LINEA(N);
END LOOP;

END;
/
