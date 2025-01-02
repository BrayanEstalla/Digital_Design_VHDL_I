----------------------------------------------------------------------------------
-- Module Name: encoder_4to2_we - conditional signal assignment statement
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder_4to2_we is
  Port ( 
            a  : in  std_logic_vector(3 downto 0);
            f  : out std_logic_vector(1 downto 0)
  );
end encoder_4to2_we;

architecture Behavioral of encoder_4to2_we is
begin
            f <= "00" when a="0001" else
                 "01" when a="0010" else
                 "10" when a="0100" else
                 "11" when a="1000" else
                 "ZZ";

end Behavioral;
