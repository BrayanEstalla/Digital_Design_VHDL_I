----------------------------------------------------------------------------------
-- Module Name: freq_div_procedure - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity freq_div_procedure is
  Port (    clk        :  in  std_logic;
            clk_1mhz   :  out std_logic;
            clk_5mhz   :  out std_logic;
            clk_25mhz  :  out std_logic                        
  );
end freq_div_procedure;

architecture Behavioral of freq_div_procedure is

            procedure divider(
            signal sclk             :   in    std_logic;
            constant counter_max    :   in    integer;
            signal counter          :   inout integer;
            signal sclk_out         :   inout std_logic
            
            ) is
            begin
                    if(rising_edge(sclk)) then
                        if counter = counter_max then
                                counter<=0;
                                sclk_out<=not sclk_out;
                         else
                                counter<= counter + 1;
                         end if;     
                    end if;
            end procedure divider;                 
 
signal counter_1mhz, counter_5mhz, counter_25mhz : integer;
signal sclk_1mhz, sclk_5mhz, sclk_25mhz  : std_logic :='0';          
begin

            
            divider(clk, 25, counter_25mhz, sclk_25mhz);
            divider(clk, 5, counter_5mhz, sclk_5mhz);
            divider(clk, 1, counter_1mhz, sclk_1mhz);
            clk_25mhz<=sclk_25mhz;
            clk_5mhz<=sclk_5mhz; 
            clk_1mhz<=sclk_1mhz;         
     
end Behavioral;













------------------------------------------------------------------------------------
---- Module Name: freq_div_pkg - Behavioral
------------------------------------------------------------------------------------
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use ieee.std_logic_unsigned.all;

--package freq_div_pkg is
--            procedure divider(
--            signal sclk             :   in    std_logic;
--            constant counter_max    :   in    integer;
--            signal counter          :   inout integer;
--            signal sclk_out         :   inout std_logic
            
--            );
--end package freq_div_pkg;

--package body freq_div_pkg is

--            procedure divider(
--            signal sclk             :   in    std_logic;
--            constant counter_max    :   in    integer;
--            signal counter          :   inout integer;
--            signal sclk_out         :   inout std_logic
            
--            ) is
--            begin
--                    if(rising_edge(sclk)) then
--                        if counter = counter_max then
--                                counter<=0;
--                                sclk_out<=not sclk_out;
--                         else
--                                counter<= counter + 1;
--                         end if;     
--                    end if;
--            end procedure divider;                 
       
--end package body;







------------------------------------------------------------------------------------
---- Module Name: freq_div_pkg_top - Behavioral
------------------------------------------------------------------------------------
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use ieee.std_logic_unsigned.all;
--use work.freq_div_pkg.all;

--entity freq_div_pkg_top is
--  Port (    clk        :  in  std_logic;
--            clk_1mhz   :  out std_logic;
--            clk_5mhz   :  out std_logic;
--            clk_25mhz  :  out std_logic                        
--  );
--end freq_div_pkg_top;

--architecture Behavioral of freq_div_pkg_top is               
 
--signal counter_1mhz, counter_5mhz, counter_25mhz : integer;
--signal sclk_1mhz, sclk_5mhz, sclk_25mhz  : std_logic :='0';   
       
--begin

            
--            divider(clk, 25, counter_25mhz, sclk_25mhz);
--            divider(clk, 5, counter_5mhz, sclk_5mhz);
--            divider(clk, 1, counter_1mhz, sclk_1mhz);
--            clk_25mhz<=sclk_25mhz;
--            clk_5mhz<=sclk_5mhz; 
--            clk_1mhz<=sclk_1mhz;         
     
--end Behavioral;
