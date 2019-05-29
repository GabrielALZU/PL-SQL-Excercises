-- PROGRAMA QUE ESCRIBE EL ÁREA DE UN TRIÁNGULO, QUE INICIALIZAMOS
-- EL VALOR DE LAS VARIABLES BASE Y ALTURA.
SET SERVEROUTPUT ON;
DECLARE
base NUMBER:=10;
altura NUMBER:=10;
area NUMBER;
BEGIN
area:=base*altura/2;
dbms_output.put_line('El area del triángulo vale: '||area);
END;
/
