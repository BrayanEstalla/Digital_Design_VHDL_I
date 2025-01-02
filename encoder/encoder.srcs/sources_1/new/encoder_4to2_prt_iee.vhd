----------------------------------------------------------------------------------
-- Module Name: encoder_4to2_prt_iee - sequential statement (if-elsif-else)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder_4to2_prt_iee is
  Port ( 
            a  :  in   std_logic_vector(3 downto 0);
            f  :  out  std_logic_vector(1 downto 0)
   );
end encoder_4to2_prt_iee;

architecture Behavioral of encoder_4to2_prt_iee is
begin

        encoder: process(a)
        begin
                if a(3) = '1' then
                    f <= "11";
                elsif a(2) = '1' then
                    f <= "10";
                elsif a(1) = '1' then
                    f <= "01";
                elsif a(0) = '1' then
                    f <= "00";    
                else 
                    f <="ZZ";
                end if;
        end process encoder;

end Behavioral;
