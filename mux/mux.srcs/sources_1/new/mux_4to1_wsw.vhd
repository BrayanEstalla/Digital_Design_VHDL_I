----------------------------------------------------------------------------------
-- Module Name: mux 4to1 selected signal assignment statement (with-select-when) 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1_wsw is
  Port ( 
         a :  in  std_logic;
         b :  in  std_logic;
         c :  in  std_logic;
         d :  in  std_logic;
         s :  in  std_logic_vector(1 downto 0);
         f :  out std_logic        
  );
end mux_4to1_wsw;

architecture Behavioral of mux_4to1_wsw is
begin
        mux_4to1 : with s select
              f <= a when "00",
                   b when "01",
                   c when "10",
                   d when others; 
end Behavioral;






