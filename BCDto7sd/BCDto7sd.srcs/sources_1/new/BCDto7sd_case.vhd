----------------------------------------------------------------------------------
-- Module Name: BCDto7sd_case - sequential statement (case)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCDto7sd_case is
  Port ( 
            BCD  : in  std_logic_vector(3 downto 0);
            F    : out std_logic_vector(7 downto 0)
  );
end BCDto7sd_case;

architecture Behavioral of BCDto7sd_case is
begin
            BCDto7sd:process(BCD) 
            begin
                
                case BCD is    
                    
                        when "0000" => 
                                f <= X"40";
                        when "0001" => 
                                f <= X"79";
                        when "0010" => 
                                f <= X"24";        
                        when "0011" => 
                                f <= X"30";        
                        when "0100" => 
                                f <= X"19";
                        when "0101" => 
                                f <= X"12";
                        when "0110" => 
                                f <= X"02";
                        when "0111" => 
                                f <= X"78";        
                        when "1000" => 
                                f <= X"00"; 
                        when "1001" => 
                                f <= X"18";        
                        when others => 
                                f <= X"FF";        
                                                                    
                 end  case;
                 
            end process BCDto7sd;    
        
end Behavioral;

