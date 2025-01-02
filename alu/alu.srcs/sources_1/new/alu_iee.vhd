----------------------------------------------------------------------------------
-- Module Name: alu_iee - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu_iee is
  Port ( 
            clk, sclr, aclr, parallel_load     :  in  std_logic;
            incrementer, shift, rotation       :  in  std_logic;
            din_serial                         :  in  std_logic;
            din_parallel                       :  in  std_logic_vector(3 downto 0);
            func                               :  in  std_logic_vector(1 downto 0);
            dout                               :  out std_logic_vector(3 downto 0) 
  );
end alu_iee;

architecture Behavioral of alu_iee is
signal s_dout : std_logic_vector(3 downto 0):=(others=>'0');
begin
            alu:process(clk, sclr, aclr)
            begin
                    if(aclr='0')then
                        s_dout<=(others=>'0');
                    elsif(rising_edge(clk))then
                         if (sclr='0') then
                            s_dout<=(others=>'0');
                         else
                              if(parallel_load='1') then
                                 s_dout<=din_parallel;
                              else
                              -----------------------------------------repose---------------------------
                                  if func="00" then   
                                        s_dout<=s_dout;
                              ---------------------------------------incrementer------------------------                                      
                                  elsif func="01" then
                                        if incrementer ='0' then   
                                            s_dout<=s_dout + 1;
                                        else
                                            s_dout<=s_dout - 1;
                                        end if;
                              ------------------------------------shift register------------------------                                       
                                  elsif func="10" then  
                                        if shift='0' then 
                                            ----------------------------right---------------------------
                                            --            d3         d2        d1         d0          --                                            
                                            --  => sin   s_dout(3)  s_dout(2)  s_dout(1)  s_dout(0)   --                                           
                                            --            sin       s_dout(3)  s_dout(2)  s_dout(1)   --
                                            ------------------------------------------------------------
                                            s_dout(2 downto 0) <= s_dout(3 downto 1);
                                            s_dout(3) <= din_serial;
                                            --s_dout <= sin & s_dout(3 downto 1);
                                        else
                                            -----------------------------left---------------------------
                                            --       d3         d2        d1         d0               --                                            
                                            --   s_dout(3)  s_dout(2)  s_dout(1)  s_dout(0)   sin <=  --                                           
                                            --   s_dout(2)  s_dout(1)  s_dout(0)     sin              --
                                            ------------------------------------------------------------
                                            s_dout(3 downto 1) <= s_dout(2 downto 0);
                                            s_dout(0) <= din_serial;
                                            --s_dout <= s_dout(2 downto 0) & sin;
                                        end if;
                               ---------------------------------------rotation--------------------------                                     
                                  else
                                        if rotation='0' then
                                            ----------------------------right---------------------------
                                            --           d3         d2        d1         d0           --                                            
                                            --        s_dout(3)  s_dout(2)  s_dout(1)  s_dout(0)      --                                           
                                            --        s_dout(0)  s_dout(3)  s_dout(2)  s_dout(1)      --
                                            ------------------------------------------------------------                                        
                                            s_dout(2 downto 0) <= s_dout(3 downto 1);
                                            s_dout(3) <= s_dout(0);
                                            --s_dout <= s_dout(0) & s_dout(3 downto 1);
                                        else
                                            -----------------------------left---------------------------
                                            --           d3         d2        d1         d0           --                                            
                                            --        s_dout(3)  s_dout(2)  s_dout(1)  s_dout(0)      --                                           
                                            --        s_dout(2)  s_dout(1)  s_dout(0)  s_dout(3)      --
                                            ------------------------------------------------------------                                          
                                            s_dout(3 downto 1) <= s_dout(2 downto 0);
                                            s_dout(0) <= s_dout(3);
                                            --s_dout <= s_dout(2 downto 0) & s_dout(3);
                                       end if;
                                  end if;
                               -------------------------------------------------------------------------                                 
                              end if;             
                         end if;
                    end if;
            
            end process alu;
dout<=s_dout;
end Behavioral;
