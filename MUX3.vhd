library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity MUX3 is
	port(
		cs : in std_logic_vector(1 downto 0);
		A_in : in std_logic_vector(11 downto 0);
		B_in : in std_logic_vector(11 downto 0);
		C_in : in std_logic_vector(11 downto 0);
		Output : out std_logic_vector(11 downto 0)
	);
end MUX3;


architecture Behavioral of MUX3 is
begin
	with cs select
    Output <= 	A_in when "00",
					B_in when "01",
					C_in when "10",
					A_in when others; 
	
	
end Behavioral;