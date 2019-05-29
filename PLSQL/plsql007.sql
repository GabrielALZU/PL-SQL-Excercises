/* PROGRAMA QUE DETERMINA EL MAYOR DE DOS NÚMEROS O SI SON IGUALES */
SET SERVEROUTPUT ON;
DECLARE
A NUMBER;
B NUMBER;
BEGIN
A:=&A;
B:=&B;
IF A>B THEN
	dbms_output.put_line(A||' ES MAYOR QUE '||B);
ELSE
	IF B>A THEN
	 	dbms_output.put_line(B||' ES MAYOR QUE '||A);
	ELSE
		dbms_output.put_line(A||' ES IGUAL QUE '||B);
	END IF;
END IF;
END;
/
