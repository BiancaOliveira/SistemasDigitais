entity conversorC2_BCD8421_tb is
end  conversorC2_BCD8421_tb;

architecture tb of conversorC2_BCD8421_tb is
	
	component conversorC2_BCD8421 is
		port(
			C2  : in bit_vector(4 downto 0);
			BCD : out bit_vector(3 downto 0);
			E   : out bit
		);
	end component;	
	
	signal sC2  : bit_vector(4 downto 0);
	signal sBCD : bit_vector(3 downto 0);
	signal sE   : bit; 
	

begin  

	u_conversorC2_BCD8421_tb : conversorC2_BCD8421 port map(sC2, sBCD, sE);
	
	u_tb : process 
	begin
		sC2 <= "00000";
		wait for 10 ns;
		
		sC2 <= "10000";
		wait for 10 ns;
		
		sC2 <= "01000";
		wait for 10 ns;
		
		sC2 <= "01010";
		wait for 10 ns;
		
		sC2 <= "00001";
		wait for 10 ns;
		
		sC2 <= "01001";
		wait for 10 ns;
		
		sC2 <= "01100";
		wait for 10 ns;
		
		sC2 <= "00111";
		wait for 10 ns;
		
		wait;
	end process u_tb;
end architecture tb;
	
