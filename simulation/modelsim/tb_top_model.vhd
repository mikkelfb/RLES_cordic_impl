LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity tb_top_model is
end tb_top_model;

Architecture behavioral of tb_top_model is
	component top_module
	port ( clk : in std_logic;
 		theta : in std_logic_vector(11 downto 0);
 		out_cos : out std_logic_vector(11 downto 0);
 		out_sin : out std_logic_vector(11 downto 0));
	end component;
	
	constant T: time := 20 ns;
	
	signal clk_sig : std_logic;
	signal theta_sig : std_logic_vector(11 downto 0) := "010100101101";
	signal out_cos_sig : std_logic_vector(11 downto 0);
	signal out_sin_sig : std_logic_vector(11 downto 0);

	begin
	
	uut: top_module port map (
		clk_sig,
		theta_sig,
		out_cos_sig,
		out_sin_sig
	);
	
	process
	begin
		clk <= '0';
		wait for T/2;
		clk <= '1';
		wait for T/2;
	end process;
	
end behavioral;
