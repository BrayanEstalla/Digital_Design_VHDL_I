----------------------------------------------------------------------------------
-- Module Name: mux_4to1_pkg - structural description
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mux_pkg.all;

entity mux_4to1_pkg is
  Port (
            a,b,c,d  :  in  std_logic;
            s        :  in  std_logic_vector(1 downto 0);
            f        :  out std_logic
   );
end mux_4to1_pkg;

architecture Behavioral of mux_4to1_pkg is
signal s_f1, s_f2  : std_logic;
begin
        inst_1: mux_2to1_ssas port map ( 
           a => a,
           b => b,
           s => s(0),
           f => s_f1
         );
        inst_2: mux_2to1_ssas port map ( 
           a => c,
           b => d,
           s => s(0),
           f => s_f2
         );
        inst_3: mux_2to1_ssas port map ( 
           a => s_f1,
           b => s_f2,
           s => s(1),
           f => f
         );
end Behavioral;


