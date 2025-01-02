----------------------------------------------------------------------------------
-- Module Name: mux_pkg - structural description
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package mux_pkg is

    component mux_2to1_ssas is
      Port ( 
               a : in  std_logic;
               b : in  std_logic;
               s : in  std_logic;
               f : out std_logic
      );
    end component;

end package;

