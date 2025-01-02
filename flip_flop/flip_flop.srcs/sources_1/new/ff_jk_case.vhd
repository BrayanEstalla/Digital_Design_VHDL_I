---------------------------------------------------------------------------------- 
-- Module Name: ff_jk_case - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ff_jk_case is
  Port ( 
            clk, enable, reset         :  in  std_logic;
            jk                         :  in  std_logic_vector(1 downto 0);
            q, nq                      :  out std_logic  
  );
end ff_jk_case;

architecture Behavioral of ff_jk_case is
signal sq : std_logic;
begin
            flip_flop_jk:process (clk, reset, enable)
            begin
                    if (reset = '0') then
                        sq<='0';
                    else
                         if (rising_edge(clk))then
                                    if enable='0' then
                                       sq<='0';
                                    else
                                            case(jk) is
                                                when "00" =>
                                                sq<=sq;
                                                when "01" =>
                                                sq<='0';
                                                when "10" =>
                                                sq<='1';
                                                when others =>
                                                sq<=not sq;                                                
                                             end case;           
                                    end if;
                           end if;
                    end if;
            end process flip_flop_jk;
q<=sq;
nq<=not sq;
end Behavioral;
