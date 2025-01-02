----------------------------------------------------------------------------------
-- Module Name: example_1_we - conditional signal assignment statement
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity example_1_we is
    Port ( 
           a : in STD_LOGIC_VECTOR (2 downto 0);
           f : out STD_LOGIC
          );
end example_1_we;

architecture Behavioral of example_1_we is
begin
           f<= '0' when (a="000") else
               '0' when (a="001") else
               '0' when (a="010") else
               '1' when (a="011") else
               '0' when (a="100") else
               '1' when (a="101") else
               '1' when (a="110") else
               '1';
              

end Behavioral;




------------------------------------------------------------------------------------
---- Module Name: example_1_we - conditional signal assignment statement
------------------------------------------------------------------------------------
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity example_1_we is
--    Port ( 
--           a : in STD_LOGIC_VECTOR (2 downto 0);
--           f : out STD_LOGIC
--          );
--end example_1_we;

--architecture Behavioral of example_1_we is
--begin
--           f<= '1' when (a="011") else
--               '1' when (a="101") else
--               '1' when (a="110") else
--               '1' when (a="111") else
--               '0';
              

--end Behavioral;
