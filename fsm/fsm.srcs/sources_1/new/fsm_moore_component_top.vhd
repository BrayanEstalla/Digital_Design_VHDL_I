----------------------------------------------------------------------------------
-- Module Name: fsm_moore_component_top - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity fsm_moore_component_top is
  Port (    clk_in   :   in   std_logic;
            reset    :   in   std_logic;
            input    :   in   std_logic;
            output   :   out  std_logic );
end fsm_moore_component_top;

architecture Behavioral of fsm_moore_component_top is
component freq_div is
  Port (    clk_in, reset     :   in  std_logic;
            clk_out           :   out std_logic );
end component;

component fsm_moore is
  Port (    clk, reset   :  in   std_logic;
            input        :  in   std_logic;
            output       :  out  std_logic );
end component;

signal  c  : std_logic:='0';
begin
    c1:freq_div port map (clk_in, reset, c);
    c2:fsm_moore port map (c, reset, input, output);
end Behavioral;
