----------------------------------------------------------------------------------
-- Module Name: mux 4to1 simple signal assignment statement 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1_ssas is
  Port (
            a,b,c,d  : in  std_logic;
            s        : in  std_logic_vector(1 downto 0);
            f        : out std_logic
  );
end mux_4to1_ssas;

architecture Behavioral of mux_4to1_ssas is
begin
           f <= (a and (not(s(1))) and (not(s(0)))) or
                (b and (not(s(1))) and s(0)) or
                (c and s(1) and (not(s(0)))) or
                (d and s(1) and s(0));
end Behavioral;



 


