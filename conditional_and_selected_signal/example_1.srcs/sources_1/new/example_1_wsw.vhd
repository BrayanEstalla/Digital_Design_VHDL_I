----------------------------------------------------------------------------------
-- Module Name: example_1_wsw - selected signal assignment statement
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity example_1_wsw is
    Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
           f : out STD_LOGIC);
end example_1_wsw;

architecture Behavioral of example_1_wsw is
begin
            example_1: with a select
            f<= '0' when "000",
                '0' when "001",
                '0' when "010",
                '1' when "011",
                '0' when "100",
                '1' when "101",
                '1' when "110",
                '1' when others;

end Behavioral;




------------------------------------------------------------------------------------
---- Module Name: example_1_wsw - selected signal assignment statement
------------------------------------------------------------------------------------
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity example_1_wsw is
--    Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
--           f : out STD_LOGIC);
--end example_1_wsw;

--architecture Behavioral of example_1_wsw is
--begin
--            example_1: with a select
--            f<= '1' when "011",
--                '1' when "101",
--                '1' when "110",
--                '1' when "111",
--                '0' when others;

--end Behavioral;