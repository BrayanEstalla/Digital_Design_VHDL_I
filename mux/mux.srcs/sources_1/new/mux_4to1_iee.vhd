----------------------------------------------------------------------------------
-- Module Name: mux 4to1 sequential statement (if-elsif-else)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1_iee is
  Port (
            a,b,c,d  :  in  std_logic;
            s        :  in  std_logic_vector(1 downto 0);
            f        :  out std_logic     
  );
end mux_4to1_iee;

architecture Behavioral of mux_4to1_iee is
begin
            mux: process(a,b,c,d,s) 
            begin
                    if (s="00") then
                        f <= a;
                    elsif (s="01") then
                        f <= b;
                    elsif (s="10") then
                        f <= c;
                    else 
                        f <= d;   
                    end if;
            end process mux;                                                 
end Behavioral;

