---------------------------------------------------------------------------------- 
-- Module Name: register_sipo_iee - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_sipo_iee is
  Port ( 
            clk, reset, d                     :  in std_logic;
            q0, q1, q2, q3, q4, q5, q6, q7    :  out std_logic);
end register_sipo_iee;

architecture Behavioral of register_sipo_iee is
signal s0, s1, s2, s3, s4, s5, s6, s7 : std_logic:='0'; 
begin
            register_sipo:process(clk, reset)
            begin
                    if(reset='0') then
                        s0 <= '0'; s1 <= '0'; s2 <= '0'; s3 <= '0';
                        s4 <= '0'; s5 <= '0'; s6 <= '0'; s7 <= '0';    
                    else
                        if(rising_edge(clk)) then
                            s7 <= d;  s6 <= s7; s5 <= s6; s4 <= s5;
                            s3 <= s4; s2 <= s3; s1 <= s2; s0 <= s1;
                         end if;                          
                    end if;
            end process register_sipo;

q7 <= s7; q6 <= s6; q5 <= s5; q4 <= s4;
q3 <= s3; q2 <= s2; q1 <= s1; q0 <= s0;
end Behavioral;




------------------------------------------------------------------------------------ 
---- Module Name: register_sipo_iee - Behavioral
------------------------------------------------------------------------------------
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity register_sipo_iee is
--  Port ( 
--            clk, reset, d      :  in std_logic;
--            q                  :  out std_logic_vector(7 downto 0));
--end register_sipo_iee;

--architecture Behavioral of register_sipo_iee is
--signal s_q : std_logic_vector(7 downto 0) :=(others=>'0'); 
--begin
--            register_sipo:process(clk, reset)
--            begin
--                    if(reset='0') then
--                        s_q <= (others=>'0');    
--                    else
--                        if(rising_edge(clk)) then
--                            s_q(7) <= d; 
--                            s_q(6) <= s_q(7);
--                            s_q(5) <= s_q(6);
--                            s_q(4) <= s_q(5);
--                            s_q(3) <= s_q(4);
--                            s_q(2) <= s_q(3);
--                            s_q(1) <= s_q(2);
--                            s_q(0) <= s_q(1);
--                         end if;                          
--                    end if;
--            end process register_sipo;

--q<=s_q(7) & s_q(6) & s_q(5) & s_q(4) & s_q(3) & s_q(2) & s_q(1) & s_q(0);
--end Behavioral;
