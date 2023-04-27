library ieee; 
use ieee.std_logic_1164.all; 

entity bufrr is 
	port( a : in std_logic_vector(3 downto 0); 
			b : in std_logic_vector(3 downto 0); 
			output_a : out std_logic_vector(31 downto 0); 
			output_b : out std_logic_vector(31 downto 0) ); 
end bufrr; 

architecture Behavior of bufrr is 
begin 
	output_a <= (27 downto 0 => '0') & a; 
	output_b <= (27 downto 0 => '0') & b; 
end behavior;