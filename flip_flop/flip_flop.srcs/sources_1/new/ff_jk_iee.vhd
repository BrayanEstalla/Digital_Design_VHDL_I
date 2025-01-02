----------------------------------------------------------------------------------
-- Module Name: ff_jk_iee - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ff_jk_iee is
  Port ( 
            clk, j, k, enable, reset   :  in  std_logic;
            q, nq                      :  out std_logic  
  );
end ff_jk_iee;

architecture Behavioral of ff_jk_iee is
signal sq : std_logic;
begin
            flip_flop_jk:process (clk, reset, enable)
            begin
                    if (reset = '0') then
                        sq<='0';
                    else
                         if (rising_edge(clk))then
                                if enable='0' then
                                    sq<= '0';
                                else    
                                    if j='0' and k='0' then
                                       sq<= sq;
                                    elsif j='1' and k='0' then
                                       sq<= '1';                                     
                                    elsif j='0' and k='1' then
                                       sq<= '0';
                                    else
                                        sq<= not sq;
                                    end if;
                                 end if;
                           end if;
                    end if;
            end process flip_flop_jk;
q<=sq;
nq<=not sq;
end Behavioral;
