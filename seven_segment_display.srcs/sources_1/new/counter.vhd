----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/05/03 19:19:39
-- Design Name: 
-- Module Name: counter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           b : out STD_LOGIC_VECTOR (2 downto 0));
end counter;

architecture Behavioral of counter is
type state_type is(s0, s1);
signal state, state_next :state_type;
signal count, count_next : std_logic_vector(13 downto 0);
signal count_b, count_b_next: std_logic_vector(2 downto 0);
constant upcount :integer:=10000;
begin
clk_pro:process(CLK, RESET)is
begin
    if RESET = '1' then
        state <= s0;
        count <= (others => '0');
        count_b <= "000";
    elsif(CLK'event and CLK = '1') then
        state <= state_next;
        count <= count_next;
        count_b <= count_b_next;
    end if;
end process;

process (state, state_next, count, count_next) is
begin
    state_next <= s0;
    count_next <= count;
    case state is
        when s0 => 
            count_next <= (others => '0');
            count_b_next <= count_b + 1;
            state_next <= s1;
        when s1 => 
            if count = upcount - 2 then
                count_next <= (others => '0');
                state_next <= s0;
            else 
                count_next <= count + 1;
                state_next <= s1;
            end if;
    end case;
end process;
b <= count_b;
end Behavioral;
