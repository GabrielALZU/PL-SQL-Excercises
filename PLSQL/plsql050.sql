CREATE OR REPLACE PROCEDURE MUESTRA_CLIENTE(CO IN CLIENTES.CODIGOCLIENTE%TYPE)AS
REG_CLI CLIENTES%ROWTYPE;
BEGIN
SELECT * INTO REG_CLI FROM CLIENTES WHERE CODIGOCLIENTE=CO;
DBMS_OUTPUT.PUT_LINE('CLIENTE Nº: '||CO);
DBMS_OUTPUT.PUT_LINE('NOMBRE    : '||REG_CLI.NOMBRECLIENTE);
DBMS_OUTPUT.PUT_LINE('DIRECCIÓN : '||REG_CLI.LINEADIRECCION1);
DBMS_OUTPUT.PUT_LINE('CP        : '||REG_CLI.CODIGOPOSTAL);
DBMS_OUTPUT.PUT_LINE('CIUDAD    : '||REG_CLI.CIUDAD);
DBMS_OUTPUT.PUT_LINE('PAIS      : '||REG_CLI.PAIS);

END;
/
