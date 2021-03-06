CREATE OR REPLACE PROCEDURE MUESTRA_PEDIDO(CP IN PEDIDOS.CODIGOPEDIDO%TYPE) AS
REG_PEDIDO PEDIDOS%ROWTYPE;
BEGIN
SELECT * INTO REG_PEDIDO FROM PEDIDOS WHERE CODIGOPEDIDO=CP;
MUESTRA_CLIENTE(REG_PEDIDO.CODIGOCLIENTE);
DBMS_OUTPUT.PUT_LINE('*******************************************');
DBMS_OUTPUT.PUT_LINE('FECHA PEDIDO  : '||REG_PEDIDO.FECHAPEDIDO);
DBMS_OUTPUT.PUT_LINE('FECHA ENTREGA : '||REG_PEDIDO.FECHAENTREGA);
DBMS_OUTPUT.PUT_LINE('FECHA ESTIMADA: '||REG_PEDIDO.FECHAESPERADA);
DBMS_OUTPUT.PUT_LINE('ESTADO        : '||REG_PEDIDO.ESTADO);
DBMS_OUTPUT.PUT_LINE('*******************************************');
MUESTRA_DETALLE_PEDIDO(CP);
END;
/
