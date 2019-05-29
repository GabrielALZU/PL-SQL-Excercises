CREATE OR REPLACE PROCEDURE MUESTRA_DETALLE_PEDIDO(CP IN DETALLEPEDIDOS.CODIGOPEDIDO%TYPE)AS
CURSOR cursorDetallePedidos IS SELECT * FROM DETALLEPEDIDOS NATURAL JOIN PRODUCTOS WHERE CODIGOPEDIDO=CP;
TOTAL_LINEA NUMBER;
TOTAL NUMBER:=0;
BEGIN
DBMS_OUTPUT.PUT_LINE('Cantidad  Nombre Producto         Precio    total');
FOR RDP IN cursorDetallePedidos LOOP
	TOTAL_LINEA:= RDP.CANTIDAD*RDP.PRECIOUNIDAD;
	TOTAL:=TOTAL+TOTAL_LINEA;
	DBMS_OUTPUT.PUT_LINE(RDP.Cantidad||'   '||RDP.NOMBRE||'    '||RDP.PRECIOUNIDAD||'   '||TOTAL_LINEA);
END LOOP;
DBMS_OUTPUT.PUT_LINE('TOTAL PEDIDO: '||TOTAL);

END;
/
