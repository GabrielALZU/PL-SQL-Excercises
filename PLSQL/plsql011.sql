/* PROGRAMA QUE IMPRIME EL VALOR DE UNA NOTA COMO TEXTO */
SET SERVEROUTPUT ON;
DECLARE
NOTA NUMBER;
B NUMBER;
C NUMBER;
BEGIN
NOTA:=&NOTA;
IF NOTA>=0 AND NOTA<5 THEN
	DBMS_OUTPUT.PUT_LINE('INSUFICIENTE');
ELSIF NOTA>=5 AND NOTA<6 THEN
	DBMS_OUTPUT.PUT_LINE('SUFICIENTE');
ELSIF NOTA>=6 AND NOTA<7 THEN
	DBMS_OUTPUT.PUT_LINE('BIEN');
ELSIF NOTA>=7 AND NOTA<9 THEN
	DBMS_OUTPUT.PUT_LINE('NOTABLE');
ELSIF NOTA>=9 AND NOTA<10 THEN
	DBMS_OUTPUT.PUT_LINE('SOBRESALIENTE');
ELSIF NOTA=10 THEN
	DBMS_OUTPUT.PUT_LINE('MATÍCULA DE HONOR');
ELSE
	DBMS_OUTPUT.PUT_LINE('NOTA NO VÁLIDA');
END IF;

END;
/
