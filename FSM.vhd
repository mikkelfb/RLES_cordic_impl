library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity FSM is
	port(
		clk : in std_logic;
		Z_in : in std_logic_vector(11 downto 0);
		cs_mux1_out : out std_logic_vector(1 downto 0);
		cs_mux2_out : out std_logic;
		cs_mux3_out : out std_logic_vector(1 downto 0);
		cs_reg1_write_out : out std_logic;
		cs_reg2_write_out : out std_logic;
		cs_add_sub_out : out std_logic;
		cs_reg_x1_write : out std_logic;
		cs_reg_y1_write : out std_logic;
		cs_reg_z1_write : out std_logic
		
		--cs_shift_dist_out : out std_logic_vector(3 downto 0);
		--shift_dist_in : in std_logic_vector(3 downto 0)
	);
end FSM;


architecture Behavioral of FSM is
type state_type is
	(S1,S2,S3);
signal current_state,next_state : state_type;
begin

-- next state logic
process(clk, current_state,next_state)
begin
	if(clk'event and clk='1') then
		current_state<=next_state;
	end if;
	
	case current_state is
		when S1=>
			next_state <= S2;
		when S2=>
			next_state <= S3;
		when S3=>
			next_state <= S1;
	end case;

end process;
--,Z_in,cs_mux1_out,cs_mux2_out,cs_mux3_out,cs_reg1_write_out,cs_reg2_write_out,cs_add_sub_out,cs_shift_dist_out,shift_dist_in
-- state logic output
process(clk,current_state)
begin
	case current_state is
		when S1 =>
			cs_mux1_out <= "00";
			cs_mux2_out <= '0';
			cs_mux3_out <= "10";
			cs_reg1_write_out <= '1';
			cs_reg2_write_out <= '0';
			--cs_shift_dist_out <= shift_dist_in;
			cs_reg_x1_write <='0';
			cs_reg_y1_write <='0';
			cs_reg_z1_write <='1';
			if(Z_in(11) = '0') then
				cs_add_sub_out <= '1';
			else
				cs_add_sub_out <= '0';
			end if;
			
		when S2 =>
			cs_mux1_out <= "10";
			cs_mux2_out <= '1';
			cs_mux3_out <= "00";
			cs_reg1_write_out <= '0';
			cs_reg2_write_out <= '1';
			cs_reg_x1_write <='1';
			cs_reg_y1_write <='0';
			cs_reg_z1_write <='0';
			--cs_shift_dist_out <= shift_dist_in;
			if(Z_in(11) = '0') then
				cs_add_sub_out <= '1';
			else
				cs_add_sub_out <= '0';
			end if;
	
		when S3 =>
			cs_mux1_out <= "01";
			cs_mux2_out <= '0';
			cs_mux3_out <= "01";
			cs_reg1_write_out <= '0';
			cs_reg2_write_out <= '0';
			cs_reg_x1_write <='0';
			cs_reg_y1_write <='1';
			cs_reg_z1_write <='0';
			--cs_shift_dist_out <= shift_dist_in;
			if(Z_in(11) = '0') then
				cs_add_sub_out <= '0';
			else
				cs_add_sub_out <= '1';
			end if;
			
		end case;
end process;
	
end Behavioral;


--if(current_state = S1) then
--		cs_mux1_out <= "00";
--		cs_mux2_out <= '0';
--		cs_mux3_out <= "10";
--		cs_reg1_write_out <= '1';
--		cs_reg2_write_out <= '0';
--		
--		cs_shift_dist_out <= shift_dist_in;
--		
--		if(Z_in(11) = '0') then
--			cs_add_sub_out <= '1';
--		else
--			cs_add_sub_out <= '0';
--		end if;
--	elsif(current_state = S2) then
--		cs_mux1_out <= "10";
--		cs_mux2_out <= '1';
--		cs_mux3_out <= "00";
--		cs_reg1_write_out <= '0';
--		cs_reg2_write_out <= '1';
--		
--		cs_shift_dist_out <= shift_dist_in;
--		
--		if(Z_in(11) = '0') then
--			cs_add_sub_out <= '1';
--		else
--			cs_add_sub_out <= '0';
--		end if;
--	
--	elsif(current_state = S3) then
--		cs_mux1_out <= "01";
--		cs_mux2_out <= '0';
--		cs_mux3_out <= "01";
--		cs_reg1_write_out <= '0';
--		cs_reg2_write_out <= '0';
--		cs_shift_dist_out <= shift_dist_in;
--		if(Z_in(11) = '0') then
--			cs_add_sub_out <= '0';
--		else
--			cs_add_sub_out <= '1';
--		end if;



--with Z_in(11) select
--				cs_add_sub_out <= '1' when '0',
--										'0' when '1';