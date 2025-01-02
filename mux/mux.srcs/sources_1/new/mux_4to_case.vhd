----------------------------------------------------------------------------------
-- Module Name: mux 4to sequential statement (case) 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to_case is
  Port ( 
            a,b,c,d  :  in  std_logic;
            s        :  in  std_logic_vector(1 downto 0);
            f        :  out std_logic 
  );
end mux_4to_case;

architecture Behavioral of mux_4to_case is
begin
            mux: process (a,b,c,d,s)
            begin
                    case s is
                            when "00" =>
                            f <= a;
                             when "01" =>
                            f <= b;
                            when "10" =>
                            f <= c;
                            when others =>
                            f <= d;
                     end case;
             end process mux;                                                       

end Behavioral;

