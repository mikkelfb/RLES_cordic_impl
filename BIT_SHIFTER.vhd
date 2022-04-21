library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity BIT_SHIFTER is
	port(
		input : in std_logic_vector(11 downto 0);
		output : out std_logic_vector(11 downto 0)
	);
end BIT_SHIFTER;

architecture Behavioral of BIT_SHIFTER is
begin
	output(10 downto 0) <= input(11 downto 1);
	
end Behavioral;