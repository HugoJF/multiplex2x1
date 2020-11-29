LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std_unsigned.ALL;

ENTITY testbench IS
	GENERIC 
	(
		N : NATURAL := 4
	);
END testbench;

ARCHITECTURE tb OF testbench IS

	-- DUT component
	COMPONENT multiplex2x1 IS
		PORT 
		(
			input0, input1 : IN std_logic_vector(0 TO N - 1);
			sel            : IN std_logic;
			output         : OUT std_logic_vector(0 TO N - 1)
		);
	END COMPONENT;

	SIGNAL sel                    : std_logic;
	SIGNAL input0, input1, output : std_logic_vector(0 TO N - 1);

BEGIN
	-- Connect DUT
	DUT : multiplex2x1
	PORT MAP(input0, input1, sel, output);

	PROCESS
	BEGIN
		-- input0
		input0 <= "0001";
		input1 <= "0101";
		sel    <= '0';
		WAIT FOR 1 ns;
		ASSERT(output = "0001") REPORT "Fail input0 CASE 1" SEVERITY error;
 
		-- input1
		input0 <= "1111";
		input1 <= "0000";
		sel    <= '1';
		WAIT FOR 1 ns;
		ASSERT(output = "0000") REPORT "Fail input1 CASE 1" SEVERITY error;
 
		WAIT;
	END PROCESS;
END tb;