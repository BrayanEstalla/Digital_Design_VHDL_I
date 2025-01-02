----------------------------------------------------------------------------------
-- Module Name: encoder_4to2_iee - sequential statement (if-elsif-else)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder_4to2_iee is
  Port ( 
            a  :  in   std_logic_vector(3 downto 0);
            f  :  out  std_logic_vector(1 downto 0)
  );
end encoder_4to2_iee;

architecture Behavioral of encoder_4to2_iee is
begin

            encoder:process (a)
            begin
                    if(a ="0001") then
                        f <= "00";
                    elsif (a = "0010") then
                        f <= "01";
                    elsif (a = "0100") then
                        f <= "10";
                    elsif (a = "1000") then
                        f <= "11";
                    else
                        f <="ZZ";
                    end if;
             end process encoder;
                     

end Behavioral;
