----------------------------------------------------------------------------------
-- Module Name: mux 4to1 conditional signal assignment statement
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1_we is
  Port ( 
           a,b,c,d  :  in  std_logic;
           s        :  in  std_logic_vector(1 downto 0);
           f        :  out std_logic 
  );
end mux_4to1_we;

architecture Behavioral of mux_4to1_we is
begin
           F <= a when s="00" else
                b when s="01"else
                c when s="10" else
                d; -- others 

end Behavioral;

