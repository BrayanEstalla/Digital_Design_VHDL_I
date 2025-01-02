---------------------------------------------------------------------------------- 
-- Module Name: ff_t_iee - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ff_t_iee is
  Port ( 
            clk, t, enable, reset   :  in  std_logic;
            q, nq                   :  out std_logic  
  );
end ff_t_iee;

architecture Behavioral of ff_t_iee is
signal sq : std_logic;
begin
            flip_flop_t:process (clk, reset, enable)
            begin
                    if (reset = '0') then
                        sq<='0';
                    else
                         if (rising_edge(clk))then
                                if enable='0' then
                                   sq<='0';
                                else 
                                    if t='0' then
                                       sq<= sq;
                                    else
                                        sq<= not sq;
                                    end if;
                                 end if;
                           end if;
                    end if;
            end process flip_flop_t;
q<=sq;
nq<=not sq;
end Behavioral;

