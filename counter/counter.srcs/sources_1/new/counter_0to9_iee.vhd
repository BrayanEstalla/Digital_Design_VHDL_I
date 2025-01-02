---------------------------------------------------------------------------------- 
-- Module Name: counter_0to9_iee - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_0to9_iee is
  Port ( 
            clk, reset     :  in std_logic;
            f              :  out std_logic_vector(3 downto 0)
  );
end counter_0to9_iee;

architecture Behavioral of counter_0to9_iee is
signal c : std_logic_vector(3 downto 0):= (others=>'0');
begin
            counter_0to9:process (clk, reset)
            begin
                    if(reset='0')then
                       c<=(others=>'0'); 
                    else
                            if(rising_edge(clk))then   
                                  if(c=10)then -- if(c="1010")then
                                        c<=(others=>'0');  
                                  else                                        
                                        c<=c + 1; --c:=c + "0001";
                                  end if;                         
                            end if;
                    end if;                   
            end process counter_0to9;
f<=c;           
end Behavioral;



------------------------------------------------------------------------------------ 
---- Module Name: counter_0to9_iee - Behavioral
------------------------------------------------------------------------------------
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

--entity counter_0to9_iee is
--  Port ( 
--            clk, reset     :  in std_logic;
--            f              :  out std_logic_vector(3 downto 0)
--  );
--end counter_0to9_iee;

--architecture Behavioral of counter_0to9_iee is

--begin
--            counter_0to9:process (clk, reset)
--            variable c : std_logic_vector(3 downto 0) :=(others=>'0');
--            begin
--                    if(reset='0')then
--                       c:=(others=>'0'); 
--                    else
--                            if(rising_edge(clk))then   
--                                  if(c=10)then -- if(c="1010")then
--                                        c:=(others=>'0');  
--                                  else                                        
--                                        c:=c + 1; --c:=c + "0001";
--                                  end if;                         
--                            end if;
--                    end if;
--                    f<=c;
--            end process counter_0to9;
--end Behavioral;
