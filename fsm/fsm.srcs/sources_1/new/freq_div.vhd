----------------------------------------------------------------------------------
-- Module Name: freq_div - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity freq_div is
  Port ( 
            clk_in, reset     :   in  std_logic;
            clk_out           :   out std_logic 
  );
end freq_div;

architecture Behavioral of freq_div is
signal s_counter    :   std_logic_vector(23 downto 0):=(others=>'0');
signal s_clk_out    :   std_logic;
begin
            freq_div:process(clk_in, reset)
            begin
                if reset='0' then
                    s_clk_out<='0';
                elsif(rising_edge(clk_in))then
                    if s_counter=X"17d7840" then
                        s_counter<=(others=>'0');
                        s_clk_out<=not s_clk_out;
                    else
                        s_counter <= s_counter + 1;
                    end if;
                 
                end if;
            end process freq_div;

clk_out<=s_clk_out;

end Behavioral;
