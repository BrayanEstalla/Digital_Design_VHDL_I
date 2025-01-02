----------------------------------------------------------------------------------
-- Module Name: mux_4to1_component - structural description
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1_component is
  Port (
            a,b,c,d  :  in  std_logic;
            s        :  in  std_logic_vector(1 downto 0);
            f        :  out std_logic
   );
end mux_4to1_component;

architecture Behavioral of mux_4to1_component is
signal s_f1, s_f2  : std_logic;
component mux_2to1_ssas is
  Port ( 
           a : in  std_logic;
           b : in  std_logic;
           s : in  std_logic;
           f : out std_logic
  );
end component;

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


