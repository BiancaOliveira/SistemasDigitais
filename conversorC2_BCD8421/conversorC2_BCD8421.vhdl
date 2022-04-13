entity conversorC2_BCD8421 is
	port(
		C2  : in bit_vector(4 downto 0);
		BCD : out bit_vector(3 downto 0);
		E   : out bit
	);
end conversorC2_BCD8421;

architecture comportamento of conversorC2_BCD8421 is
begin
	BCD(3) <= C2(3);
	BCD(2) <= C2(2);
	BCD(1) <= C2(1);
	BCD(0) <= C2(0);
	E <= C2(4) or (C2(3) and C2(2)) or (C2(3) and C2(1));
	
end architecture comportamento;

