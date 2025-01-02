------------------------------------------------------------------------------------
---- Module Name: fsm_moore_counter - Behavioral
------------------------------------------------------------------------------------
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity fsm_moore_counter is
--  Port (
--            clk, reset   :   in   std_logic;
--            output       :   out  std_logic_vector(3 downto 0)          
--  );
--end fsm_moore_counter;

--architecture Behavioral of fsm_moore_counter is
--type state_type is (s0, s1, s2, s3, s4);
--signal state    : state_type;
--signal s_output : std_logic_vector(3 downto 0):=(others=>'0');
--begin
--            fsm_state:process(clk, reset)
--            begin
--                    if rising_edge(clk) then
--                        if reset='0' then
--                            s_output<=(others=>'0');
--                            state <= s0;
--                        else
--                            case (state) is
--                            when s0 => state <= s1;
--                            when s1 => state <= s2;
--                            when s2 => state <= s3;
--                            when s3 => state <= s4;
--                            when s4 => state <= s0;
--                            end  case;
                        
--                        end if;
--                    end if;
--            end process fsm_state;
            
--            fsm_output:process(state)
--            begin
--                case (state) is
--                     when s0 => s_output <= "0000";
--                     when s1 => s_output <= "0010";
--                     when s2 => s_output <= "0100";
--                     when s3 => s_output <= "0110";
--                     when s4 => s_output <= "1000";
--                end  case;
--            end process fsm_output;
 
--output <= s_output;

--end Behavioral;


















----------------------------------------------------------------------------------
-- Module Name: fsm_moore_counter - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity fsm_moore_counter is
  Port (
            clk, reset    :   in  std_logic;
            output        :   out std_logic_vector(3 downto 0)         
  );
end fsm_moore_counter;

architecture Behavioral of fsm_moore_counter is
type state_type is (s0, s1);
signal state     :  state_type;
signal s_output  :  std_logic_vector(3 downto 0):=(others=>'0');
begin
            fsm_state:process(clk, reset)
            begin
                if rising_edge(clk)then
                    if reset='0' then
                        state<=s0;
                        s_output<=(others=>'0');
                    else
                        case (state)is
                            when s0 => state <= s1;
                            when s1 => 
                                if s_output="1010" then
                                    state <= s0;
                                else 
                                    state <= s1;
                                end if;
                        end case;                        
                    end if;
                end if;
            end process fsm_state;
            
            
            
            fsm_output:process(state)
            begin
                case (state) is
                    when s0 => s_output<="0000";
                    when s1 => s_output<= s_output + 2;
                end  case;
            end process fsm_output;
            
 output <= s_output;
            
end Behavioral;
