----------------------------------------------------------------------------------
-- Module Name: adder_pkg - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package adder_pkg is 
            component full_adder_ssas is 
            port( 
                   x   : in  STD_LOGIC;
                   y   : in  STD_LOGIC;
                   cin : in  STD_LOGIC;
                   co  : out STD_LOGIC;
                   s   : out STD_LOGIC
            );
            end component;

end adder_pkg;
