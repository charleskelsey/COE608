library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity AND32 is
	port (a_in		: in  std_logic_vector(7 downto 0);	--Operand 1
			b_in		: in  std_logic_vector(7 downto 0);	--Operand 2
			result	: out std_logic_vector(7 downto 0)		--Result
	);
end AND32;

architecture behavior of AND32 is
begin
	result <= a_in and b_in;
end behavior;