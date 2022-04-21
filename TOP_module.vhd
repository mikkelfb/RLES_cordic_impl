library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TOP_MODULE is
port(
 clk : in std_logic;
 theta : in std_logic_vector(11 downto 0);
 out_cos : out std_logic_vector(11 downto 0);
 out_sin : out std_logic_vector(11 downto 0));
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

component CE_end
port(X_in : in std_logic_vector(11 downto 0);
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
end component;


component FSM
port(clk : in std_logic;
		Z_in_0 : in std_logic;
		Z_in_1 : in std_logic;
		Z_in_2 : in std_logic;
		Z_in_3 : in std_logic;
		Z_in_4 : in std_logic;
		Z_in_5 : in std_logic;
		Z_in_6 : in std_logic;
		Z_in_7 : in std_logic;
		Z_in_8 : in std_logic;
		Z_in_9 : in std_logic;
		Z_in_10 : in std_logic;
		cs_mux1_out : out std_logic_vector(1 downto 0);
		cs_mux2_out : out std_logic;
		cs_mux3_out : out std_logic_vector(1 downto 0);
		cs_reg1_write_out : out std_logic;
		cs_reg2_write_out : out std_logic;
		cs_add_sub_out_0 : out std_logic;
		cs_add_sub_out_1 : out std_logic;
		cs_add_sub_out_2 : out std_logic;
		cs_add_sub_out_3 : out std_logic;
		cs_add_sub_out_4 : out std_logic;
		cs_add_sub_out_5 : out std_logic;
		cs_add_sub_out_6 : out std_logic;
		cs_add_sub_out_7 : out std_logic;
		cs_add_sub_out_8 : out std_logic;
		cs_add_sub_out_9 : out std_logic;
		cs_reg_x1_write : out std_logic;
		cs_reg_y1_write : out std_logic;
		cs_reg_z1_write : out std_logic;
		cs_reg1_end_write_out : out std_logic;
		cs_reg2_end_write_out : out std_logic;
		cs_add_sub_out_end1: out std_logic;
		cs_add_sub_out_end2 : out std_logic;
		cs_reg_cos_out_write : out std_logic;
		cs_reg_sin_out_write : out std_logic);
end component;


-- signal for combining FSM with CE
signal Z_in_0_sig : std_logic;
signal Z_in_1_sig : std_logic;
signal Z_in_2_sig : std_logic;
signal Z_in_3_sig : std_logic;
signal Z_in_4_sig : std_logic;
signal Z_in_5_sig : std_logic;
signal Z_in_6_sig : std_logic;
signal Z_in_7_sig : std_logic;
signal Z_in_8_sig : std_logic;
signal Z_in_9_sig : std_logic;
signal Z_in_10_sig : std_logic;

signal cs_mux_1_sig :  std_logic_vector(1 downto 0);
signal cs_mux_2_sig :  std_logic;
signal cs_mux_3_sig :  std_logic_vector(1 downto 0);
signal cs_reg1_write_sig :  std_logic;
signal cs_reg2_write_sig :  std_logic;
signal cs_reg1_end_write_sig : std_logic;
signal cs_reg2_end_write_sig : std_logic;

signal cs_add_sub_out_0_sig : std_logic;
signal cs_add_sub_out_1_sig : std_logic;
signal cs_add_sub_out_2_sig : std_logic;
signal cs_add_sub_out_3_sig : std_logic;
signal cs_add_sub_out_4_sig : std_logic;
signal cs_add_sub_out_5_sig : std_logic;
signal cs_add_sub_out_6_sig : std_logic;
signal cs_add_sub_out_7_sig : std_logic;
signal cs_add_sub_out_8_sig : std_logic;
signal cs_add_sub_out_9_sig : std_logic;
signal cs_add_sub_end1_out_10_sig : std_logic;
signal cs_add_sub_end2_out_10_sig : std_logic;



signal cs_shift_dist_sig_CE0 :  std_logic_vector(3 downto 0) := "0001";
signal cs_shift_dist_sig_CE1 :  std_logic_vector(3 downto 0) := "0010";
signal cs_shift_dist_sig_CE2 :  std_logic_vector(3 downto 0) := "0011";
signal cs_shift_dist_sig_CE3 :  std_logic_vector(3 downto 0) := "0100";
signal cs_shift_dist_sig_CE4 :  std_logic_vector(3 downto 0) := "0101";
signal cs_shift_dist_sig_CE5 :  std_logic_vector(3 downto 0) := "0110";
signal cs_shift_dist_sig_CE6 :  std_logic_vector(3 downto 0) := "0111";
signal cs_shift_dist_sig_CE7 :  std_logic_vector(3 downto 0) := "1000";
signal cs_shift_dist_sig_CE8 :  std_logic_vector(3 downto 0) := "1001";
signal cs_shift_dist_sig_CE9 :  std_logic_vector(3 downto 0) := "1010";
signal cs_shift_dist_sig_CE10 : std_logic_vector(3 downto 0) := "1011";

signal const_sig : std_logic_vector(11 downto 0);
signal const0_sig : std_logic_vector(11 downto 0) := "011101101011";
signal const1_sig : std_logic_vector(11 downto 0) := "001111101011";
signal const2_sig : std_logic_vector(11 downto 0) := "000111111101";
signal const3_sig : std_logic_vector(11 downto 0) := "000100000000";
signal const4_sig : std_logic_vector(11 downto 0) := "000010000000";
signal const5_sig : std_logic_vector(11 downto 0) := "000001000000";
signal const6_sig : std_logic_vector(11 downto 0) := "000000100000";
signal const7_sig : std_logic_vector(11 downto 0) := "000000010000";
signal const8_sig : std_logic_vector(11 downto 0) := "000000001000";
signal const9_sig : std_logic_vector(11 downto 0) := "000000000100";


signal const_k_sig : std_logic_vector(11 downto 0) := "010011011100";

signal output_sig_CE0 : std_logic_vector(11 downto 0);
signal output_sig_CE1 : std_logic_vector(11 downto 0);
signal output_sig_CE2 : std_logic_vector(11 downto 0);
signal output_sig_CE3 : std_logic_vector(11 downto 0);
signal output_sig_CE4 : std_logic_vector(11 downto 0);
signal output_sig_CE5 : std_logic_vector(11 downto 0);
signal output_sig_CE6 : std_logic_vector(11 downto 0);
signal output_sig_CE7 : std_logic_vector(11 downto 0);
signal output_sig_CE8 : std_logic_vector(11 downto 0);
signal output_sig_CE9 : std_logic_vector(11 downto 0);
signal output_cos_sig : std_logic_vector(11 downto 0);
signal output_sin_sig : std_logic_vector(11 downto 0);

signal x_zero : std_logic_vector(11 downto 0) := "000000000001";
signal y_zero : std_logic_vector(11 downto 0) := (others=>'0');
signal z_zero : std_logic_vector(11 downto 0);

signal x_1 : std_logic_vector(11 downto 0);
signal y_1 : std_logic_vector(11 downto 0);
signal z_1 : std_logic_vector(11 downto 0);

signal x_2 : std_logic_vector(11 downto 0);
signal y_2 : std_logic_vector(11 downto 0);
signal z_2 : std_logic_vector(11 downto 0);

signal x_3 : std_logic_vector(11 downto 0);
signal y_3 : std_logic_vector(11 downto 0);
signal z_3 : std_logic_vector(11 downto 0);

signal x_4 : std_logic_vector(11 downto 0);
signal y_4 : std_logic_vector(11 downto 0);
signal z_4 : std_logic_vector(11 downto 0);

signal x_5 : std_logic_vector(11 downto 0);
signal y_5 : std_logic_vector(11 downto 0);
signal z_5 : std_logic_vector(11 downto 0);

signal x_6 : std_logic_vector(11 downto 0);
signal y_6 : std_logic_vector(11 downto 0);
signal z_6 : std_logic_vector(11 downto 0);

signal x_7 : std_logic_vector(11 downto 0);
signal y_7 : std_logic_vector(11 downto 0);
signal z_7 : std_logic_vector(11 downto 0);

signal x_8 : std_logic_vector(11 downto 0);
signal y_8 : std_logic_vector(11 downto 0);
signal z_8 : std_logic_vector(11 downto 0);

signal x_9 : std_logic_vector(11 downto 0);
signal y_9 : std_logic_vector(11 downto 0);
signal z_9 : std_logic_vector(11 downto 0);

signal x_10 : std_logic_vector(11 downto 0);
signal y_10 : std_logic_vector(11 downto 0);
signal z_10 : std_logic_vector(11 downto 0);

signal cs_x1_reg_write : std_logic;
signal cs_y1_reg_write : std_logic;
signal cs_z1_reg_write : std_logic;
signal cs_reg_cos_out_write_sig : std_logic;
signal cs_reg_sin_out_write_sig : std_logic;

begin
Z_in_0_sig <= z_zero(11);
Z_in_1_sig <= z_1(11);
Z_in_2_sig <= z_2(11);
Z_in_3_sig <= z_3(11);
Z_in_4_sig <= z_4(11);
Z_in_5_sig <= z_5(11);
Z_in_6_sig <= z_6(11);
Z_in_7_sig <= z_7(11);
Z_in_8_sig <= z_8(11);
Z_in_9_sig <= z_9(11);
Z_in_10_sig <= z_10(11);

fsm0 : FSM port map(clk,
			Z_in_0_sig,
			Z_in_1_sig,
			Z_in_2_sig,
			Z_in_3_sig,
			Z_in_4_sig,
			Z_in_5_sig,
			Z_in_6_sig,
			Z_in_7_sig,
			Z_in_8_sig,
			Z_in_9_sig,
			Z_in_10_sig,
			cs_mux_1_sig,
			cs_mux_2_sig,
			cs_mux_3_sig,
			cs_reg1_write_sig,
			cs_reg2_write_sig,
			cs_add_sub_out_0_sig,
			cs_add_sub_out_1_sig,
			cs_add_sub_out_2_sig,
			cs_add_sub_out_3_sig,
			cs_add_sub_out_4_sig,
			cs_add_sub_out_5_sig,
			cs_add_sub_out_6_sig,
			cs_add_sub_out_7_sig,
			cs_add_sub_out_8_sig,
			cs_add_sub_out_9_sig,
			cs_x1_reg_write,
			cs_y1_reg_write,
			cs_z1_reg_write,
			cs_reg1_end_write_sig,
			cs_reg2_end_write_sig,
			cs_add_sub_end1_out_10_sig,
			cs_add_sub_end2_out_10_sig,
			cs_reg_cos_out_write_sig,
			cs_reg_sin_out_write_sig
			);
			
ce0 : CE port map(x_zero,y_zero,z_zero,const0_sig,
			cs_mux_1_sig,cs_mux_2_sig,cs_mux_3_sig,
			cs_reg1_write_sig,cs_reg2_write_sig,
			cs_add_sub_out_0_sig,cs_shift_dist_sig_CE0,
			clk,output_sig_CE0);
			
ce1 : CE port map(x_1,y_1,z_1,const1_sig,
			cs_mux_1_sig,cs_mux_2_sig,cs_mux_3_sig,
			cs_reg1_write_sig,cs_reg2_write_sig,
			cs_add_sub_out_1_sig,cs_shift_dist_sig_CE1,
			clk,output_sig_CE1);

ce2 : CE port map(x_2,
			y_2,
         z_2,
         const2_sig,
			cs_mux_1_sig,
         cs_mux_2_sig,
         cs_mux_3_sig,
			cs_reg1_write_sig,
         cs_reg2_write_sig,
			cs_add_sub_out_2_sig,
         cs_shift_dist_sig_CE2,
			clk,output_sig_CE2);
						

ce3 : CE port map(x_3,
			y_3,
         z_3,
         const3_sig,
			cs_mux_1_sig,
         cs_mux_2_sig,
         cs_mux_3_sig,
			cs_reg1_write_sig,
         cs_reg2_write_sig,
			cs_add_sub_out_3_sig,
         cs_shift_dist_sig_CE3,
			clk,output_sig_CE3);
			
ce4 : CE port map(x_4,
			y_4,
         z_4,
         const4_sig,
			cs_mux_1_sig,
         cs_mux_2_sig,
         cs_mux_3_sig,
			cs_reg1_write_sig,
         cs_reg2_write_sig,
			Z_in_4_sig,
         cs_shift_dist_sig_CE4,
			clk,
			output_sig_CE4);
			
ce5 : CE port map(x_5,
			y_5,
         z_5,
         const5_sig,
			cs_mux_1_sig,
         cs_mux_2_sig,
         cs_mux_3_sig,
			cs_reg1_write_sig,
         cs_reg2_write_sig,
			cs_add_sub_out_5_sig,
         cs_shift_dist_sig_CE5,
			clk,output_sig_CE5);
			
ce6 : CE port map(x_6,
			y_6,
         z_6,
         const6_sig,
			cs_mux_1_sig,
         cs_mux_2_sig,
         cs_mux_3_sig,
			cs_reg1_write_sig,
         cs_reg2_write_sig,
			cs_add_sub_out_6_sig,
         cs_shift_dist_sig_CE6,
			clk,output_sig_CE6);
			
ce7 : CE port map(x_7,
			y_7,
         z_7,
         const7_sig,
			cs_mux_1_sig,
         cs_mux_2_sig,
         cs_mux_3_sig,
			cs_reg1_write_sig,
         cs_reg2_write_sig,
			cs_add_sub_out_7_sig,
         cs_shift_dist_sig_CE7,
			clk,output_sig_CE7);
			
			
ce8 : CE port map(x_8,
			y_8,
         z_8,
         const8_sig,
			cs_mux_1_sig,
         cs_mux_2_sig,
         cs_mux_3_sig,
			cs_reg1_write_sig,
         cs_reg2_write_sig,
			cs_add_sub_out_8_sig,
         cs_shift_dist_sig_CE8,
			clk,output_sig_CE8);
			
ce9 : CE port map(x_9,
			y_9,
         z_9,
         const9_sig,
			cs_mux_1_sig,
         cs_mux_2_sig,
         cs_mux_3_sig,
			cs_reg1_write_sig,
         cs_reg2_write_sig,
			cs_add_sub_out_9_sig,
         cs_shift_dist_sig_CE9,
			clk,output_sig_CE9);
			
			
ce10_end : CE_end port map(x_10,
									y_10,
									cs_reg1_end_write_sig,
									cs_reg2_end_write_sig,
									cs_add_sub_end1_out_10_sig,
									cs_add_sub_end2_out_10_sig,
									cs_shift_dist_sig_CE10,
									clk,
									output_cos_sig,
									output_sin_sig,
									const_k_sig);


			
process(clk, z_zero)
begin
	if(clk'event and clk='1') then
		z_zero <= theta;
	end if;
end process;

process(clk,x_1,cs_x1_reg_write, x_2)
begin
	if(clk'event and clk='1' and cs_x1_reg_write = '1') then
		x_1<=output_sig_CE0;
		x_2<=output_sig_CE1;
		x_3<=output_sig_CE2;
		x_4<=output_sig_CE3;
		x_5<=output_sig_CE4;
		x_6<=output_sig_CE5;
		x_7<=output_sig_CE6;
		x_8<=output_sig_CE7;
		x_9<=output_sig_CE8;
		x_10<=output_sig_CE9;
	end if;
end process;


process(clk,y_1,cs_y1_reg_write, y_2)
begin
	if(clk'event and clk='1' and cs_y1_reg_write = '1') then
		y_1<=output_sig_CE0;
		y_2<=output_sig_CE1;
		y_3<=output_sig_CE2;
		y_4<=output_sig_CE3;
		y_5<=output_sig_CE4;
		y_6<=output_sig_CE5;
		y_7<=output_sig_CE6;
		y_8<=output_sig_CE7;
		y_9<=output_sig_CE8;
		y_10<=output_sig_CE9;
	end if;
end process;


process(clk,z_1,cs_z1_reg_write, z_2)
begin
	if(clk'event and clk='1' and cs_z1_reg_write = '1') then
		z_1<=output_sig_CE0;
		z_2<=output_sig_CE1;
		z_3<=output_sig_CE2;
		z_4<=output_sig_CE3;
		z_5<=output_sig_CE4;
		z_6<=output_sig_CE5;
		z_7<=output_sig_CE6;
		z_8<=output_sig_CE7;
		z_9<=output_sig_CE8;
		z_10<=output_sig_CE9;
	end if;
end process;

process(clk, output_cos_sig,cs_reg_cos_out_write_sig)
begin
	if(clk'event and clk='1' and cs_reg_cos_out_write_sig = '1') then
		out_cos <=output_cos_sig;
	end if;	
end process;	

process(clk, output_sin_sig,cs_reg_sin_out_write_sig)
begin
	if(clk'event and clk='1' and cs_reg_sin_out_write_sig = '1') then
		out_sin <= output_sin_sig;
	end if;	
end process;	
end Behavioral;
