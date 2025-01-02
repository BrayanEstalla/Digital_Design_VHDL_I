------------------------------------------------------------------------------------
---- Module Name: frequency_divider_iee - Behavioral
------------------------------------------------------------------------------------
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.numeric_STD.ALL;

--entity frequency_divider_iee is
--  Port ( 
--           clk, reset   : in  std_logic;
--           f            : out std_logic              
--  );
--end frequency_divider_iee;

--architecture Behavioral of frequency_divider_iee is
--signal s_counter : integer range 0 to 24999999 := 0;
--signal s_f       : std_logic:='0';
--begin

--            frequency_divider_iee:process (clk, reset)
--            begin
--                        if(rising_edge(clk)) then
--                                if reset='0' then
--                                        s_counter<=0;
--                                        s_f<='0';
--                                else
--                                        if (s_counter=24999999) then
--                                            s_counter<=0;
--                                            s_f<= not s_f;
--                                        else
--                                            s_counter<= s_counter + 1;
--                                        end if;
--                                 end if;
--                        end if;
            
--            end process frequency_divider_iee;
--f<=s_f;
--end Behavioral;











------------------------------------------------------------------------------------
---- Module Name: frequency_divider_iee - Behavioral
------------------------------------------------------------------------------------
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

--entity frequency_divider_iee is
--  Port ( 
--           clk, reset   : in  std_logic;
--           f            : out std_logic              
--  );
--end frequency_divider_iee;

--architecture Behavioral of frequency_divider_iee is
----signal s_counter : std_logic_vector(23 downto 0) := X"000000";
--signal s_counter : std_logic_vector(23 downto 0):=(others=>'0');
--signal s_f       : std_logic:='0';
--begin

--            frequency_divider_iee:process (clk, reset)
--            begin
--                        if(rising_edge(clk)) then
--                                if reset='0' then
--                                        --s_counter<=X"000000";
--                                        s_counter<=(others=>'0');
--                                        s_f<='0';
--                                else
--                                        if (s_counter=X"17d783f") then 
--                                            --s_counter<=X"000000";
--                                            s_counter<=(others=>'0');
--                                            s_f<= not s_f;
--                                        else
--                                            s_counter<= s_counter + X"000001";                                          
--                                        end if;
--                                 end if;
--                        end if;
            
--            end process frequency_divider_iee;
--f<=s_f;      

--end Behavioral;








----------------------------------------------------------------------------------
-- Module Name: frequency_divider_iee - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity frequency_divider_iee is
  Port ( 
           clk, reset   : in  std_logic;
           f            : out std_logic              
  );
end frequency_divider_iee;

architecture Behavioral of frequency_divider_iee is
--signal s_counter : std_logic_vector(23 downto 0) := X"000000";
signal s_counter : std_logic_vector(23 downto 0):=(others=>'0');
signal s_f       : std_logic:='0';
begin

            frequency_divider_iee:process (clk, reset)
            begin
                        if(rising_edge(clk)) then
                                if reset='0' then
                                        --s_counter<=X"000000";
                                        s_counter<=(others=>'0');
                                        s_f<='0';
                                else
                                        if (s_counter=24999999) then 
                                            --s_counter<=X"000000";
                                            s_counter<=(others=>'0');
                                            s_f<= not s_f;
                                        else
                                            --s_counter<= s_counter + X"000001";
                                            s_counter<= s_counter + 1;
                                        end if;
                                 end if;
                        end if;
            
            end process frequency_divider_iee;
f<=s_f;      

end Behavioral;





