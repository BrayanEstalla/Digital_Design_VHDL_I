---------------------------------------------------------------------------------- 
-- Module Name: register_pipo_iee - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_pipo_iee is
  Port ( 
            clk, reset  :  in  std_logic;
            d           :  in  std_logic_vector(7 downto 0);
            q           :  out  std_logic_vector(7 downto 0)
  );
end register_pipo_iee;

architecture Behavioral of register_pipo_iee is
--signal s_q  :  std_logic_vector(7 downto 0):= "00000000";
--signal s_q  :  std_logic_vector(7 downto 0):= X"00";
signal s_q  :  std_logic_vector(7 downto 0):=(others=>'0');
begin
            register_pipo: process (clk, reset)
            begin
                    if (reset='0') then   
                        --s_q<="00000000";
                        --s_q<=X"00";                                  
                        s_q<=(others=>'0');
                    else
                        if rising_edge(clk) then
                        s_q<=d; 
                        end if;
                    end if;            
            end process register_pipo;
            
q<=s_q;
end Behavioral;



------------------------------------------------------------------------------------ 
---- Module Name: register_pipo_iee - Behavioral
------------------------------------------------------------------------------------
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity register_pipo_iee is
--  Port ( 
--            clk, reset                               :  in  std_logic;
--            d0, d1, d2, d3, d4, d5, d6, d7           :  in  std_logic;
--            q0, q1, q2, q3, q4, q5, q6, q7           :  out  std_logic
--  );
--end register_pipo_iee;

--architecture Behavioral of register_pipo_iee is
--signal s0, s1, s2, s3, s4, s5, s6, s7  :  std_logic:='0';
--begin
--            register_pipo: process (clk, reset)
--            begin
--                    if (reset='0') then                                     
--                        s0<='0'; s1<='0'; s2<='0'; s3<='0';
--                        s4<='0'; s5<='0'; s6<='0'; s7<='0';
--                    else
--                        if rising_edge(clk) then
--                        s0<=d0; s1<=d1; s2<=d2; s3<=d3;
--                        s4<=d4; s5<=d5; s6<=d6; s7<=d7; 
--                        end if;
--                    end if;            
--            end process register_pipo;
            
--q0<=s0; q1<=s1; q2<=s2; q3<=s3;
--q4<=s4; q5<=s5; q6<=s6; q7<=s7; 
--end Behavioral;
