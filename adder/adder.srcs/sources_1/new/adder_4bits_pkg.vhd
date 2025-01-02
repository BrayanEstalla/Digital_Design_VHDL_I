----------------------------------------------------------------------------------
-- Module Name: adder_4bits_pkg - structural description
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.adder_pkg.all;

entity adder_4bits_pkg is
    Port ( x   : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           y   : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           cin : in  STD_LOGIC;
           co  : out STD_LOGIC;
           s   : out STD_LOGIC_VECTOR(3 DOWNTO 0));
end adder_4bits_pkg;

architecture Behavioral of adder_4bits_pkg is
signal  c1, c2, c3 : std_logic;
begin

adder1: full_adder_ssas port map (
           x    => x(0),
           y    => y(0),
           cin  => cin,
           co   => c1,
           s    => s(0)
);

adder2: full_adder_ssas port map (
           x    => x(1),
           y    => y(1),
           cin  => c1,
           co   => c2,
           s    => s(1)
);

adder3: full_adder_ssas port map (
           x    => x(2),
           y    => y(2),
           cin  => c2,
           co   => c3,
           s    => s(3)
);

adder4: full_adder_ssas port map (
           x    => x(3),
           y    => y(3),
           cin  => c3,
           co   => co,
           s    => s(3)
);
end Behavioral;


