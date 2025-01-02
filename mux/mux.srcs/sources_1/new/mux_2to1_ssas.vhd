----------------------------------------------------------------------------------
-- Module Name: mux 2to1 - simple signal assignment statement 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2to1_ssas is
  Port ( 
           a : in  std_logic;
           b : in  std_logic;
           s : in  std_logic;
           f : out std_logic
  );
end mux_2to1_ssas;

architecture Behavioral of mux_2to1_ssas is
begin
           f <= ((not s) and a) or (s and b);
end Behavioral;
