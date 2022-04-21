library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity MUX2 is
	port(
		cs : in std_logic;
		A_in : in std_logic_vector(11 downto 0);
		B_in : in std_logic_vector(11 downto 0);
		Output : out std_logic_vector(11 downto 0)
	);
end MUX2;


architecture Behavioral of MUX2 is
begin
	with cs select
    Output <= 	A_in when '0',
					B_in when '1';
end Behavioral;