-- OTRA VERSIÓN DEL PROGRAMA QUE IMPRIME EL ÁREA DEL TRIÁNGULO
SET SERVEROUTPUT ON;
DECLARE
base NUMBER:=20;
altura NUMBER:=10;
area NUMBER;
BEGIN
area:=base*altura/2;
dbms_output.put_line('El area del triángulo de base: '||base||' y de altura: '||altura||' vale: '||area);
END;
/
