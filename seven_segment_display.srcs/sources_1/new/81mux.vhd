----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/05/03 21:20:15
-- Design Name: 
-- Module Name: 81mux - Behavioral
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
use IEEE.std_logic_signed.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux is
    Port ( char1 : in STD_LOGIC_VECTOR (3 downto 0);
           char2 : in STD_LOGIC_VECTOR (3 downto 0);
           char3 : in STD_LOGIC_VECTOR (3 downto 0);
           char4 : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (2 downto 0);
           x : out STD_LOGIC_VECTOR (3 downto 0));
end mux;

architecture Behavioral of mux is
begin
mux_pro:process(char1, char2, char3, char4, b)is
begin
    x <= "0000";
    case b is 
    when "000" => 
        x <= char1;
    when "001" => 
        x <= char2;
    when "010" => 
        x <= char3;
    when "011" => 
        x <= char4;
    when "100" => 
        x <= char1 + char2;
    when "101" => 
        x <= char1 - char2;
    when "110" => 
        x<= char3 + char4;
    when "111" => 
        x <= char3 - char4;
    when others => 
    end case;
end process;
end Behavioral;
