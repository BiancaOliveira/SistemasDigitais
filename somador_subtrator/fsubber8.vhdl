library ieee;
use ieee.std_logic_1164.all;

entity fsubber8 is
    port(
        a, b : in std_logic_vector(7 downto 0); 
        bin  : in std_logic;
        s    : out std_logic_vector(7 downto 0);
        bout : out std_logic
    );
end entity;

architecture sub of fsubber8 is
    component fadder8 is
        port(
            a, b : in std_logic_vector(7 downto 0);
		cin  : in std_logic;
		s    : out std_logic_vector(7 downto 0);
		cout : out std_logic
        );
    end component;

    signal c2_b  : std_logic_vector(7 downto 0);
    signal snotb : std_logic_vector(7 downto 0);
    signal d : std_logic; -- desconsiderado
begin
    snotb <= not(b);

    fa8of : fadder8 port map(a, c2_b, bin, s, bout);

    fa8ap : fadder8 port map(snotb, "00000001", '0', c2_b, d);

end architecture;
