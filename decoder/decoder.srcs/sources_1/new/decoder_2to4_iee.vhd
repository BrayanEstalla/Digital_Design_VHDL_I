----------------------------------------------------------------------------------
-- Module Name: decoder_2to4_iee -  Declaración secuencial (if-elsif-else)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_2to4_iee is
  Port ( 
            a  :  in  std_logic_vector(1 downto 0);
            f  :  out std_logic_vector(3 downto 0)
  );
end decoder_2to4_iee;

architecture Behavioral of decoder_2to4_iee is
begin
            decoder: process (a) 
            begin
                    if(a="00")then
                        f<="0001";
                    elsif (a="01") then
                        f<="0010";
                    elsif (a="10") then
                        f<="0100";
                    elsif (a="11") then
                        f<="1000";
                    else
                        f<="ZZZZ";
                    end if;
            end process decoder;                        
end Behavioral;
