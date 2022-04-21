library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity CE_end is
   port( X_in : in std_logic_vector(11 downto 0);
			Y_in : in std_logic_vector(11 downto 0);
			cs_reg1_write : in std_logic;
			cs_reg2_write : in std_logic;
			cs_ALU1 : in std_logic;
			cs_ALU2 : in std_logic;
			cs_shift_dist : in std_logic_vector(3 downto 0);
			clk : in std_logic;
			output_cos : out std_logic_vector(11 downto 0);
			output_sin : out std_logic_vector(11 downto 0);
			const_k : in std_logic_vector(11 downto 0)
	);
end CE_end;


architecture Behavioral of CE_end is
--end component;
component adderip
port(add_sub		: IN STD_LOGIC ;
		dataa		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0));
end component;


component shifterIP
port(data		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		distance		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0));
end component;

component multiIP 
port(dataa		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0));
end component;

signal reg1_out : std_logic_vector(11 downto 0);
signal reg2_out : std_logic_vector(11 downto 0);

signal bitshift1_out : std_logic_vector(11 downto 0);
signal bitshift2_out : std_logic_vector(11 downto 0);

signal add_out1 : std_logic_vector(11 downto 0);
signal add_out2 : std_logic_vector(11 downto 0);

begin
	add1 : adderip port map(cs_ALU1, Y_in ,reg1_out,add_out1);
	add2 : adderip port map(cs_ALU2, X_in ,reg2_out,add_out2);
	
	
	bitshifter1 : shifterIP port map(X_in,cs_shift_dist,bitshift1_out);
	bitshifter2 : shifterIP port map(Y_in,cs_shift_dist,bitshift2_out);
	
	multi1 : multiIP port map(add_out1,const_k,output_cos);
	multi2 : multiIP port map(add_out2,const_k,output_sin);
	
	process (clk, reg1_out,bitshift1_out,cs_reg1_write)
	begin
		if (clk'event and clk='1' and cs_reg1_write='1') then
			reg1_out <= bitshift1_out;
		end if;
	end process;
	
	process (clk, reg2_out,bitshift2_out,cs_reg2_write)
	begin
		if (clk'event and clk='1' and cs_reg2_write='1') then
			reg2_out <= bitshift2_out;
		end if;
	end process;
	
end Behavioral;


