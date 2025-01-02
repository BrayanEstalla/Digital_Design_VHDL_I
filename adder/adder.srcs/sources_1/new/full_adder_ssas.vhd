----------------------------------------------------------------------------------
-- Module Name: full_adder_ssas - simple signal assignment statement
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_ssas is
    Port ( x   : in  STD_LOGIC;
           y   : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           co  : out STD_LOGIC;
           s   : out STD_LOGIC);
end full_adder_ssas;

architecture Behavioral of full_adder_ssas is
begin
            co <= (cin and (x xor y)) or (x and y);
            s  <=  cin xor (x xor y);
end Behavioral;



