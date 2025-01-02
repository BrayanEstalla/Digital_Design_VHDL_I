----------------------------------------------------------------------------------
-- Module Name: freq_div_pkg - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

package freq_div_pkg is
            procedure divider(
            signal sclk             :   in    std_logic;
            constant counter_max    :   in    integer;
            signal counter          :   inout integer;
            signal sclk_out         :   inout std_logic
            
            );
end package freq_div_pkg;

package body freq_div_pkg is

            procedure divider(
            signal sclk             :   in    std_logic;
            constant counter_max    :   in    integer;
            signal counter          :   inout integer;
            signal sclk_out         :   inout std_logic
            
            ) is
            begin
                    if(rising_edge(sclk)) then
                        if counter = counter_max then
                                counter<=0;
                                sclk_out<=not sclk_out;
                         else
                                counter<= counter + 1;
                         end if;     
                    end if;
            end procedure divider;                 
       
end package body;
