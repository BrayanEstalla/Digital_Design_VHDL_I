---------------------------------------------------------------------------------- 
-- Module Name: ff_d_iee - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ff_d_iee is
  Port ( 
            clk, d, enable, reset   :  in  std_logic;
            q, nq                   :  out std_logic  
  );
end ff_d_iee;

architecture Behavioral of ff_d_iee is
signal sq : std_logic;
begin
            flip_flop_d:process (clk, reset, enable)
            begin
                    if (reset = '0') then
                        sq<='0';
                    else
                            if (rising_edge(clk))then
                                if enable='0' then                                
                                    sq<='0';
                                else
                                    sq<=d;
                                end if;
                            end if;
                    end if;
            end process flip_flop_d;
q<=sq;
nq<=not sq;
end Behavioral;
