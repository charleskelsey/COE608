library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity LeftShift32 is
	port (a_in		: in  std_logic_vector(7 downto 0);	--Operand 1
			result	: out std_logic_vector(7 downto 0)		--Result
	);
end LeftShift32;

architecture behavior of LeftShift32 is
begin
	result(7 downto 1) <= a_in(6 downto 0);		--ROLL OVER LEFT (ROL)
	result(0) <= '0';
end behavior;