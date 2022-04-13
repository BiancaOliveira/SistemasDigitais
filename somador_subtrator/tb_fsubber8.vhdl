library ieee;
use ieee.std_logic_1164.all;

entity tb_fsubber8 is
end tb_fsubber8;

architecture sub_tb of tb_fsubber8 is
    	component fsubber8 is
      	port(
           	a, b : in std_logic_vector(7 downto 0); 
            	bin  : in std_logic;
            	s    : out std_logic_vector(7 downto 0);
            	bout : out std_logic
        	);
    	end component;

    	signal sa, sb, ss  : std_logic_vector(7 downto 0);
    	signal scin, scout : std_logic;

begin
    	-- instancia
    	fa8 : fsubber8 port map(sa, sb, scin, ss, scout);

    	tbp : process
    	begin

        	sa <= "00000000"; -- 0x00
        	sb <= "11111111"; -- 0xFF
        	scin <= '0';
        	wait for 10 ns;

        	sa <= "11111111"; -- 0xFF
        	sb <= "00000001"; -- 0x01
        	scin <= '0';
        	wait for 10 ns;

        	sa <= "00111111"; -- 0x3F
        	sb <= "11000000"; -- 0xC0
        	scin <= '0';
        	wait for 10 ns;
		
		sa <= "00000010"; -- 0x03
        	sb <= "00000011"; -- 0x04
        	scin <= '0';
        	wait for 10 ns;
		
		sa <= "00100010"; -- 0x22
        	sb <= "01010011"; -- 0x53
        	scin <= '0';
        	wait for 10 ns;

        wait;
    end process;

end architecture;
