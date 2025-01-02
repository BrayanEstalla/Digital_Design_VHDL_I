----------------------------------------------------------------------------------
-- Module Name: encoder_4to2_prt_we - conditional signal assignment statement
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder_4to2_prt_we is
  Port ( 
            a  :  in  std_logic_vector(3 downto 0);
            f  :  out std_logic_vector(1 downto 0)
  );
end encoder_4to2_prt_we;

architecture Behavioral of encoder_4to2_prt_we is
begin

            f <= "11"  when a(3)='1' else
                 "10"  when a(2)='1' else
                 "01"  when a(1)='1' else
                 "00"  when a(0)='1' else
                 "ZZ";
  
end Behavioral;
