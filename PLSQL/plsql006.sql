-- PROGRAMA QUE INDICA SI EL PRIMER NÚMERO ES MAYOR QUE EL SEGUNDO O
-- IMPRIME QUE NO ES MAYOR QUE EL SEGUNDO.
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
	dbms_output.put_line(A||' NO ES MAYOR QUE '||B);
END IF;
END;
/
