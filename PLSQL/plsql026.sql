/* PROGRAMA QUE IMPRIME LA TABLA DE MULTIPLICAR DE LOS 10 PRIMEROS NÚMEROS*/
SET SERVEROUTPUT ON;
DECLARE
T NUMBER;
N NUMBER;
BEGIN
T:=1;
WHILE T<=10 LOOP
	DBMS_OUTPUT.PUT_LINE('TABLA DEL '||T);
	N:=0;
	WHILE N<=10 LOOP
		DBMS_OUTPUT.PUT_LINE(N||' X '||T||' = '||N*T);
		N:=N+1;
	END LOOP;
		DBMS_OUTPUT.PUT_LINE('------------------------');
	T:=T+1;
END LOOP;

END;
/
