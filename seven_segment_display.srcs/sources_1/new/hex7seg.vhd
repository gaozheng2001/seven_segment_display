----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/04/28 19:04:32
-- Design Name: 
-- Module Name: hex7seg - Behavioral
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hex7seg is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           LED : out STD_LOGIC_VECTOR (7 downto 0));
end hex7seg;

architecture Behavioral of hex7seg is
begin
process(x) is
begin
    LED <= "00000000";
    case x is 
    when "0000" => 
        LED <= "00000011";
    when "0001" => 
        LED <= "10011111";
    when "0010" => 
        LED <= "00100101";
    when "0011" => 
        LED <= "00001101";
    when "0100" => 
        LED <= "10011001";
    when "0101" => 
        LED <= "01001001";
    when "0110" => 
        LED <= "01000001";
    when "0111" => 
        LED <= "00011111";
    when "1000" => 
        LED <= "00000001";
    when "1001" => 
        LED <= "00001001";
    when "1010" => 
        LED <= "00010001";
    when "1011" =>
        LED <= "11000001";
    when "1100" => 
        LED <= "01100011";
    when "1101" => 
        LED <= "10000101";
    when "1110" => 
        LED <= "01100001";
    when "1111" =>
        LED <= "01110001";
    when others => 
    end case;
end process;

end Behavioral;
