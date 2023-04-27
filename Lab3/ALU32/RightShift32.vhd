library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity RightShift32 is
	port (a_in		: in  std_logic_vector(7 downto 0);	--Operand 1
			result	: out std_logic_vector(7 downto 0)		--Result
	);
end RightShift32;

architecture behavior of RightShift32 is
begin
	result(6 downto 0) <= a_in(7 downto 1);		--ROLL OVER RIGHT (ROR)
	result(7) <= '0';
end behavior;