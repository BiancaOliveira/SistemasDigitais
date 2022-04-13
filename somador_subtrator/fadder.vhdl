library ieee;
use ieee.std_logic_1164.all;

entity fadder is 
	port(
		a, b : in std_logic;
		cin  : in std_logic;
		s    : out std_logic;
		cout : out std_logic
	);
end entity;

architecture sum of fadder is
begin
	s <= (a xor b) xor cin;
	cout <= (a and cin) or (b and cin) or (a and b);
end architecture;
