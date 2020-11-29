LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY multiplex2x1 IS
	GENERIC 
	(
		N : NATURAL := 4
	);
	PORT 
	(
		input0, input1 : IN std_logic_vector(N - 1 DOWNTO 0);
		sel            : IN std_logic;
		output         : OUT std_logic_vector(N - 1 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE behavioral OF multiplex2x1 IS
BEGIN
	PROCESS (input0, input1, sel)
	BEGIN
		IF sel = '0' THEN
			output <= input0;
		ELSE
			output <= input1;
		END IF;
	END PROCESS;

END ARCHITECTURE;