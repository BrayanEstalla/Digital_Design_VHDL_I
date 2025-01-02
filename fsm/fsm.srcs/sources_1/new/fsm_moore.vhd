----------------------------------------------------------------------------------
-- Module Name: fsm_moore - with sequence detector
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm_moore is
  Port ( 
            clk, reset   :  in   std_logic;
            input        :  in   std_logic;
            output       :  out  std_logic
  );
end fsm_moore;

architecture Behavioral of fsm_moore is
type state_type is (s0, s1, s2, s3);
signal state    : state_type;
signal s_output : std_logic;
begin
            fsm_state: process(clk, reset)
            begin
                if(reset='0')then
                    state<=s0;
                elsif (rising_edge(clk)) then
                    case(state) is
                        when s0 =>
                            if input='1' then
                               state<=s1;
                            else
                                state<=s0;
                            end if;
                        when s1 =>
                            if input='1' then
                               state<=s1;
                            else
                                state<=s2;
                            end if;
                        when s2 =>
                            if input='1' then
                               state<=s3;
                            else
                                state<=s2;
                            end if;
                        when s3 =>
                            if input='1' then
                               state<=s1;
                            else
                                state<=s2;
                            end if;
                    end case; 
                end if;
            end process fsm_state;     
            
            
            
            
            fsm_output:process(state)
            begin
                case (state) is               
                        when s0 => s_output <= '0'; 
                        when s1 => s_output <= '0'; 
                        when s2 => s_output <= '0'; 
                        when s3 => s_output <= '1'; 
                end case;
            end process fsm_output;
         
output <= s_output;

end Behavioral;































------------------------------------------------------------------------------------
---- Module Name: fsm_moore - without sequence detector
------------------------------------------------------------------------------------
--Library ieee;
--use ieee.std_logic_1164.all;

--entity fsm_moore is
--port(
--        clk, reset   :  in  std_logic;
--        input        :  in  std_logic;
--        output       :  out std_logic
--);
--end entity;

--architecture behavioral of fsm_moore is
--type state_type  is  (s0, s1, s2, s3);
--signal state    : state_type;
--signal s_output : std_logic;
--begin
--            fsm_state:process(clk, reset)
--            begin
--                    if reset='0' then
--                        state<=s0;
--                    elsif rising_edge(clk)then
--                        case(state)is
--                            when s0 =>
--                                if input='1' then
--                                    state<=s1;
--                                else
--                                    state<=s0;
--                                end if;
--                            when s1 =>
--                                if input='1' then
--                                    state<=s0;
--                                else
--                                    state<=s2;
--                                end if;
--                            when s2 =>
--                                if input='1' then
--                                    state<=s3;
--                                else
--                                    state<=s0;
--                                end if;
--                            when s3 =>
--                                if input='1' then
--                                    state<=s0;
--                                else
--                                    state<=s0;
--                                end if;
--                        end case;
--                    end if;
--            end process fsm_state;
            
           
           
--            fsm_output:process(state)
--            begin
--                case (state) is
--                    when s0 => s_output<='0';                  
--                    when s1 => s_output<='0';
--                    when s2 => s_output<='0';
--                    when s3 => s_output<='1';
--                end case;
--            end process fsm_output;
            
--output<= s_output;

--end architecture;
