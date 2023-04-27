library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity OR32 is
	port (a_in		: in  std_logic_vector(7 downto 0);	--Operand 1
			b_in		: in  std_logic_vector(7 downto 0);	--Operand 2
			result	: out std_logic_vector(7 downto 0)		--Result
	);
end OR32;

architecture behavior of OR32 is
begin
	result <= a_in or b_in;
end behavior;