library ieee;
use ieee.std_logic_1164.ALL; 

ENTITY SevenSegmentDisplay IS 
	PORT( Data: in std_logic_vector(3 downto 0); 
			Result: out std_logic_vector(6 downto 0) ); 
END SevenSegmentDisplay; 

ARCHITECTURE BEHAVIOR OF SevenSegmentDisplay IS 
Begin 
	Result <= "1000000" when Data="0000" else --0 
	"1111001" when Data="0001" else --1 
	"0100100" when Data="0010" else --2 
	"0110000" when Data="0011" else --3 
	"0011001" when Data="0100" else --4 
	"0010010" when Data="0101" else --5 
	"0000010" when Data="0110" else --6 
	"1111000" when Data="0111" else --7 
	"0000000" when Data="1000" else --8 
	"0011000" when Data="1001" else --9 
	"0001000" when Data="1010" else --A 
	"0000000" when Data="1011" else --B 
	"1000110" when Data="1100" else --C 
	"0100001" when Data="1101" else --D 
	"0000110" when Data="1110" else --E 
	"0001110" when Data="1111" else --F 
	"1000000"; 
END BEHAVIOR;