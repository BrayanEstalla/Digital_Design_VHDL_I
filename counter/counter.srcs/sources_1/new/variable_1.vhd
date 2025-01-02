---------------------------------------------------------------------------------- 
-- Module Name: variable_1 - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity variable_1 is
  Port ( 
            a,b,c     :  in std_logic;
            d         :  out std_logic  
  );
end variable_1;

architecture Behavioral of variable_1 is
begin
            variable_1:process (a)
            variable s : std_logic;
            begin
                  s := a;
                  s := s or b; 
                  s := s or c; 
                  d<=s;        
            end process variable_1;
    
end Behavioral;
