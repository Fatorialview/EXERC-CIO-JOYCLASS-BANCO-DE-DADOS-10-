CREATE OR REPLACE FUNCTION clientes_dia(data_cadastro DATE)
RETURNS INT
AS 
DECLARE
    total_clientes INT;
BEGIN

--exemplo
    SELECT COUNT(*) INTO total_clientes
    FROM clientes
    WHERE DATE(data_cadastro) = fn_contar_clientes_dia.data_cadastro;

    RETURN total_clientes;
END;