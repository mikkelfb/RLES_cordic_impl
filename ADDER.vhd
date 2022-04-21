library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.NUMERIC_STD.ALL;
entity ADDER is
	port(
		cs : in std_logic;
		A_in : in std_logic_vector(11 downto 0);
		B_in : in std_logic_vector(11 downto 0);
		Output : out std_logic_vector(11 downto 0)
	);
end ADDER;


architecture Behavioral of ADDER is
signal B_complemented : std_logic_vector(11 downto 0);
signal constXOR : std_logic_vector(11 downto 0) := (others=>'1');
signal out_tmp : std_logic_vector(11 downto 0);
begin
	Output<=out_tmp;
	process(cs,A_in,B_in,out_tmp,B_complemented,constXOR)
	begin
	if(cs = '1') then
		B_complemented <= (B_in(11 downto 0) xor constXOR)+1;
		
		out_tmp<= A_in and B_complemented;
	else 
		out_tmp<= A_in and B_in;
	end if;
	end process;
end Behavioral;