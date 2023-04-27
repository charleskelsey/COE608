LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY register32 IS
PORT(
	d 		:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	ld 	:IN STD_LOGIC;
	clr 	:IN STD_LOGIC;
	clk 	:IN STD_LOGIC;
	Q 		:OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);
END register32;

ARCHITECTURE Behaviour OF register32 IS
BEGIN
	PROCESS(ld, clr, clk)
	BEGIN
		IF (clr = '1')THEN
			Q <= (OTHERS => '0');
		ELSIF ((clk'EVENT and clk = '1') and (ld = '1')) THEN
			Q <= d;
		END IF;
	END PROCESS;
END Behaviour;