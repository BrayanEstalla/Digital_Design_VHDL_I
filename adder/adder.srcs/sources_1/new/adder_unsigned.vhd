----------------------------------------------------------------------------------
-- Module Name: adder_unsigned 
----------------------------------------------------------------------------------
library ieee;
use  ieee.std_logic_1164.all;              --logical operations (and -or - xor -etc.)
use  ieee.std_logic_arith.all;    
   
entity adder_unsigned is
  Port ( 
            a   :  in  unsigned(3 downto 0);
            b   :  in  unsigned(3 downto 0);
            add :  out unsigned(3 downto 0)

  );
end adder_unsigned;

architecture Behavioral of adder_unsigned is

begin
            add <= a + b;
end Behavioral;













------------------------------------------------------------------------------------
---- Module Name: adder_unsigned 
------------------------------------------------------------------------------------
--library ieee;
--use  ieee.std_logic_1164.all;              --logical operations (and, or, xor, etc.)
--use ieee.std_logic_unsigned.all;           --arithmetic operations (+, -, *, etc.)
            
--entity adder_unsigned is
--  Port ( 
--            a   :  in  std_logic_vector(3 downto 0);
--            b   :  in  std_logic_vector(3 downto 0);
--            add :  out std_logic_vector(3 downto 0)
--  );
--end adder_unsigned;

--architecture Behavioral of adder_unsigned is

--begin
--            add <= a +b;
--end Behavioral;











----------------------------------------------------------------------------------
-- Module Name: adder_unsigned 
----------------------------------------------------------------------------------
--library ieee;
--use  ieee.std_logic_1164.all;              --operaciones lógicas (and -or - xor -etc.)
--use  ieee.std_logic_arith.all;    
--use  ieee.numeric_std.all;    
--use ieee.std_logic_unsigned.all;           --operaciones aritméticas (+, -, /, *, etc.)
--use ieee.std_logic_signed.all;             
