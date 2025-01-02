----------------------------------------------------------------------------------
-- Module Name: demux_1a4_case - Declaración secuencial (case)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux_1a4_case is
    Port ( a : in STD_LOGIC;
           s : in STD_LOGIC_VECTOR (1 downto 0);
           f : out STD_LOGIC_VECTOR (3 downto 0));
end demux_1a4_case;

architecture Behavioral of demux_1a4_case is
begin
            demux:process(a,s)
            begin
                  case(s)is
                  when "00"=>
                       f(0)<=a;
                       f(1)<='Z';
                       f(2)<='Z';
                       f(3)<='Z';  
                  when "01"=>
                       f(0)<='Z';
                       f(1)<=a;
                       f(2)<='Z';
                       f(3)<='Z'; 
                  when "10"=>
                       f(0)<='Z';
                       f(1)<='Z';
                       f(2)<=a;
                       f(3)<='Z';      
                  when "11"=>
                       f(0)<='Z';
                       f(1)<='Z';
                       f(2)<='Z';
                       f(3)<=a;       
                  when others =>
                       f(0)<='Z';
                       f(1)<='Z';
                       f(2)<='Z';
                       f(3)<='Z'; 
                   end case;            
            end process demux;

end Behavioral;
