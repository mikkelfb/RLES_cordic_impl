library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity CE is
   port( X_in : in std_logic_vector(11 downto 0);
			Y_in : in std_logic_vector(11 downto 0);
			Z_in : in std_logic_vector(11 downto 0);
			const : in std_logic_vector(11 downto 0);
			cs_mux_1 : in std_logic_vector(1 downto 0);
			cs_mux_2 : in std_logic;
			cs_mux_3 : in std_logic_vector(1 downto 0);
			cs_reg1_write : in std_logic;
			cs_reg2_write : in std_logic;
			cs_ALU : in std_logic;
			cs_shift_dist : in std_logic_vector(3 downto 0);
			clk : in std_logic;
			output : out std_logic_vector(11 downto 0)
	);
end CE;


architecture Behavioral of CE is
component MUX3
port(cs : in std_logic_vector(1 downto 0);
	A_in : in std_logic_vector(11 downto 0);
	B_in : in std_logic_vector(11 downto 0);
	C_in : in std_logic_vector(11 downto 0);
	Output : out std_logic_vector(11 downto 0));
end component;

component MUX2
port(cs : in std_logic;
	A_in : in std_logic_vector(11 downto 0);
	B_in : in std_logic_vector(11 downto 0);
	Output : out std_logic_vector(11 downto 0));
end component;

--component BIT_SHIFTER
--port(input : in std_logic_vector(11 downto 0);
--		output : out std_logic_vector(11 downto 0));
--end component;

--component ADDER
--port(cs : in std_logic;
--		A_in : in std_logic_vector(11 downto 0);
--		B_in : in std_logic_vector(11 downto 0);
--		Output : out std_logic_vector(11 downto 0));
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


signal mux1_out : std_logic_vector(11 downto 0);
signal mux2_out : std_logic_vector(11 downto 0);
signal mux3_out : std_logic_vector(11 downto 0);

signal reg1_out : std_logic_vector(11 downto 0);
signal reg2_out : std_logic_vector(11 downto 0);
signal bitshift_out : std_logic_vector(11 downto 0);

begin
	MUX3_1 : MUX3 port map(cs_mux_1,X_in, Y_in, Z_in, mux1_out);
	MUX2_2 : MUX2 port map(cs_mux_2,Y_in,X_in,mux2_out);
	MUX3_3 : MUX3 port map(cs_mux_3,reg1_out,reg2_out,const,mux3_out);
	add : adderip port map(cs_ALU, mux1_out,mux3_out,Output);
	
	
	
	bitshifter : shifterIP port map(mux2_out,cs_shift_dist,bitshift_out);
	
	process (clk, reg1_out,bitshift_out,cs_reg1_write)
	begin
		if (clk'event and clk='1' and cs_reg1_write='1') then
			reg1_out <= bitshift_out;
		end if;
	end process;
	
	process (clk, reg2_out,bitshift_out,cs_reg2_write)
	begin
		if (clk'event and clk='1' and cs_reg2_write='1') then
			reg2_out <= bitshift_out;
		end if;
	end process;
	
	
	
end Behavioral;


