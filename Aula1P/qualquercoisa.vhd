library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity qualquercoisa is
	-- generic();
	port(
		E : in std_logic_vector(3 downto 0);
		S : out std_logic_vector(1 downto 0)
	);
end entity;

--architecture estrutural of qualquercoisa is
--	component PortaOU is
--		port(
--			x0, x1 : in std_logic;
--			y 		 : out std_logic
--		);
--	end component;
--begin
--	p1 : PortaOU port map(x0=>E(3), x1=>E(2), y=>S(1));
--	p2 : PortaOU port map(x0=>E(3), x1=>E(1), y=>S(0));
--end architecture;

architecture comportamental of qualquercoisa is
begin
	S <= "00" when E="0001" else
		  "01" when E="0010" else
		  "10" when E="0100" else
		  "11";
end architecture;