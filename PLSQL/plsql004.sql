/* VERSIÓN QUE IMPRIME EL ÁREA DEL TRIÁNGULO, PREGUNTANDO EL VALOR
DE LA BASE Y DE LA ALTURA POR TECLADO */
SET SERVEROUTPUT ON;
DECLARE
base NUMBER;
altura NUMBER;
area NUMBER;
BEGIN
base:=&Dime_el_valor_de_la_base;
altura:=&Dime_el_valor_de_la_altura;
area:=base*altura/2;
dbms_output.put_line('El área del triángulo de base: '||base||' y de altura: '||altura||' vale: '||area);
END;
/
