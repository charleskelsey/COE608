LIBRARY ieee; 
use ieee.std_logic_1164.all; 

entity sseg32 is 
	port( Data: in std_logic_vector(31 downto 0); 
			Result7,Result6,Result5,Result4,Result3,Result2,Result1,Result0: out std_logic_vector(6 downto 0) ); 
end sseg32; 

architecture behavior of sseg32 is 
	component SevenSegmentDisplay IS 
		PORT( Data: in std_logic_vector(3 downto 0); 
				Result: out std_logic_vector(6 downto 0) ); 
	END component;
	
BEGIN 
	sseg0: SevenSegmentDisplay port map (Data=>Data(3 downto 0),Result=> Result0); 
	sseg1: SevenSegmentDisplay port map (Data=>Data(7 downto 4),Result=> Result1); 
	sseg2: SevenSegmentDisplay port map (Data=>Data(11 downto 8),Result=> Result2); 
	sseg3: SevenSegmentDisplay port map (Data=>Data(15 downto 12),Result=> Result3); 
	sseg4: SevenSegmentDisplay port map (Data=>Data(19 downto 16),Result=> Result4); 
	sseg5: SevenSegmentDisplay port map (Data=>Data(23 downto 20),Result=> Result5); 
	sseg6: SevenSegmentDisplay port map (Data=>Data(27 downto 24),Result=> Result6); 
	sseg7: SevenSegmentDisplay port map (Data=>Data(31 downto 28),Result=> Result7); 
end behavior;