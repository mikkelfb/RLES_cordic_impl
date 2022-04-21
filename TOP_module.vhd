library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TOP_MODULE is
port(
 clk : in std_logic;
 theta : in std_logic_vector(11 downto 0));
end TOP_MODULE;

architecture Behavioral of TOP_MODULE is
component CE
port(X_in : in std_logic_vector(11 downto 0);
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
			output : out std_logic_vector(11 downto 0));
end component;

component FSM
port(clk : in std_logic;
		Z_in : in std_logic_vector(11 downto 0);
		cs_mux1_out : out std_logic_vector(1 downto 0);
		cs_mux2_out : out std_logic;
		cs_mux3_out : out std_logic_vector(1 downto 0);
		cs_reg1_write_out : out std_logic;
		cs_reg2_write_out : out std_logic;
		cs_add_sub_out : out std_logic;
		cs_reg_x1_write : out std_logic;
		cs_reg_y1_write : out std_logic;
		cs_reg_z1_write : out std_logic);
end component;


-- signal for combining FSM with CE
signal Z_in_sig : std_logic_vector(11 downto 0) := (others=>'1');
signal cs_mux_1_sig :  std_logic_vector(1 downto 0);
signal cs_mux_2_sig :  std_logic;
signal cs_mux_3_sig :  std_logic_vector(1 downto 0);
signal cs_reg1_write_sig :  std_logic;
signal cs_reg2_write_sig :  std_logic;
signal cs_ALU_sig :  std_logic;


signal cs_shift_dist_sig_CE0 :  std_logic_vector(3 downto 0) := "0001";
signal cs_shift_dist_sig_CE1 :  std_logic_vector(3 downto 0) := "0010";



signal X_sig : std_logic_vector(11 downto 0);
signal Y_sig : std_logic_vector(11 downto 0);
signal Z_sig : std_logic_vector(11 downto 0);
signal const_sig : std_logic_vector(11 downto 0);


signal output_sig_CE0 : std_logic_vector(11 downto 0);
signal output_sig_CE1 : std_logic_vector(11 downto 0);

signal x_zero : std_logic_vector(11 downto 0) := "000000000001";
signal y_zero : std_logic_vector(11 downto 0) := (others=>'0');
signal z_zero : std_logic_vector(11 downto 0);

signal x_1 : std_logic_vector(11 downto 0);
signal y_1 : std_logic_vector(11 downto 0);
signal z_1 : std_logic_vector(11 downto 0);

signal cs_x1_reg_write : std_logic;
signal cs_y1_reg_write : std_logic;
signal cs_z1_reg_write : std_logic;

begin

fsm0 : FSM port map(clk,Z_in_sig,
			cs_mux_1_sig,cs_mux_2_sig,cs_mux_3_sig,
			cs_reg1_write_sig,cs_reg2_write_sig,
			cs_ALU_sig,
			cs_x1_reg_write,cs_y1_reg_write,cs_z1_reg_write);
			
ce0 : CE port map(x_zero,y_zero,z_zero,const_sig,
			cs_mux_1_sig,cs_mux_2_sig,cs_mux_3_sig,
			cs_reg1_write_sig,cs_reg2_write_sig,
			cs_ALU_sig,cs_shift_dist_sig_CE0,
			clk,output_sig_CE0);
			
ce1 : CE port map(x_1,y_1,z_1,const_sig,
			cs_mux_1_sig,cs_mux_2_sig,cs_mux_3_sig,
			cs_reg1_write_sig,cs_reg2_write_sig,
			cs_ALU_sig,cs_shift_dist_sig_CE1,
			clk,output_sig_CE1);
	
			
			
process(clk, z_zero)
begin
	if(clk'event and clk='1') then
		z_zero <= theta;
	end if;
end process;

process(clk,x_1,cs_x1_reg_write)
begin
	if(clk'event and clk='1' and cs_x1_reg_write = '1') then
		x_1<=output_sig_CE0;
	end if;
end process;


process(clk,y_1,cs_y1_reg_write)
begin
	if(clk'event and clk='1' and cs_y1_reg_write = '1') then
		y_1<=output_sig_CE0;
	end if;
end process;


process(clk,z_1,cs_z1_reg_write)
begin
	if(clk'event and clk='1' and cs_z1_reg_write = '1') then
		z_1<=output_sig_CE0;
	end if;
end process;
			
			
end Behavioral;
