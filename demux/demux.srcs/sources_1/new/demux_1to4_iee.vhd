----------------------------------------------------------------------------------
-- Module Name: demux_1to4_iee - Declaración secuencial (if-elsif-else)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux_1to4_iee is
    Port ( a : in STD_LOGIC;
           s : in STD_LOGIC_VECTOR(1 downto 0);
           f : out STD_LOGIC_VECTOR (3 downto 0));
end demux_1to4_iee;

architecture Behavioral of demux_1to4_iee is
begin
           demux: process (a,s)
           begin
                    if(s="00") then
                        f(0)<=a;
                        f(1)<='Z';
                        f(2)<='Z';
                        f(3)<='Z';
                    elsif (s="01") then
                        f(0)<='Z';
                        f(1)<=a;
                        f(2)<='Z';
                        f(3)<='Z';
                    elsif (s="10") then
                        f(0)<='Z';
                        f(1)<='Z';
                        f(2)<=a;
                        f(3)<='Z';
                    elsif (s="11") then
                        f(0)<='Z';
                        f(1)<='Z';
                        f(2)<='Z';
                        f(3)<=a;
                    else
                        f(0)<='Z';
                        f(1)<='Z';
                        f(2)<='Z';
                        f(3)<='Z';                       
                        
                    end if;
           end process demux;                    
                       
end Behavioral;
