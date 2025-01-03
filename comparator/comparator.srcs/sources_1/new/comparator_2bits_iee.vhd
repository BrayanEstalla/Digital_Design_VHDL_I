---------------------------------------------------------------------------------- 
-- Module Name: comparator_2bits_iee - Declaración secuencial (if-elsif-else)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator_2bits_iee is
    Port ( a         : in STD_LOGIC;
           b         : in STD_LOGIC;
           a_major_b : out STD_LOGIC;
           b_major_a : out STD_LOGIC;
           a_equal_b : out STD_LOGIC);
end comparator_2bits_iee;

architecture Behavioral of comparator_2bits_iee is
begin
                comparator:process(a,b)
                begin
                    if (a>b) then
                        a_major_b <='1';
                        b_major_a <='Z';
                        a_equal_b <='Z';
                    elsif (b>a) then
                        a_major_b <='Z';
                        b_major_a <='1';
                        a_equal_b <='Z';
                    elsif (b=a) then
                        a_major_b <='Z';
                        b_major_a <='Z';
                        a_equal_b <='1';                    
                    else 
                        a_major_b <='Z';
                        b_major_a <='Z';
                        a_equal_b <='Z'; 
                    end if;
                 end process comparator;

end Behavioral;
