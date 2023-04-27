library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity FullAdder is
	port (a		: in  std_logic;	--Operand 1
			b		: in  std_logic;	--Operand 2
			cin	: in  std_logic;	--Carry in (Maybe from previous stage)
			sum	: out std_logic;	--Result
			cout	: out std_logic	--Carry out (Maybe for next stage)
	);
end FullAdder;

architecture behavior of FullAdder is
begin
	sum <= (a xor b) xor cin;
	cout <= (a and b) or ((a xor b) and cin);
end behavior;