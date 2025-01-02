---------------------------------------------------------------------------------- 
-- Module Name: signal_1 - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity signal_1 is
  Port ( 
            a, b, c     :  in std_logic;
            d           :  out std_logic 
  );
end signal_1;

architecture Behavioral of signal_1 is
signal s : std_logic;
begin
            signal_1:process (a)
            begin
                  s <= a;
                  s <= s or b; 
                  s <= s or c;                    
            end process signal_1;
 d<=s;
end Behavioral;
