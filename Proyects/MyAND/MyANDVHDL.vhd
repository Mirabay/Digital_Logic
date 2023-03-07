-- SIEMPRE hay que indicar la libreria de STD_LOGIC
library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;

-- La entidad funciona como la caja negra
-- solo nos sirve para declarar las variables que ocupara
-- nuestro ciruito.
entity MyAND is

--declaramos nuestras entradas y salidas
	port (
	
	-- las entradas se declaran con "in" haciendo uso de std_logic.
		A: in std_logic;
		B: in std_logic;
	-- las salidas se declaran on "out" haciendo uso de std_logic.
		C : out std_logic
		
		--std_logic sirve para declarar valores binarios.
		);
		
end MyAND;

-- iniciamos con la arquitectura de nuestro circuito
-- aquí declaramos toda la logica.
architecture gate of MyAND is -- gate es el nombre de la arquitectura
begin
	-- Si A y B son 1 entonces C vale 1.
	C<= A and B;

end gate;
		
		