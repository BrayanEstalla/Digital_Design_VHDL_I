----------------------------------------------------------------------------------
-- Module Name: BCDto7_wsw - selected signal assignment statement
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCDto7_wsw is
  Port ( 
            BCD  : in  std_logic_vector(3 downto 0);
            F    : out std_logic_vector(7 downto 0)
  );
end BCDto7_wsw;

architecture Behavioral of BCDto7_wsw is
begin
            with BCD select
            F <= x"40" when "0000",
                 x"79" when "0001",
                 x"24" when "0010",
                 x"30" when "0011",
                 x"19" when "0100",
                 x"12" when "0101",
                 x"02" when "0110",
                 x"78" when "0111",
                 x"00" when "1000",
                 x"18" when "1001",
                 x"FF" when others;
            
end Behavioral;


