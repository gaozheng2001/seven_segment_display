----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/04/28 20:33:10
-- Design Name: 
-- Module Name: anode_driver - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity anode_driver is
    Port ( b : in std_logic_vector(2 downto 0);
           AN0 : out STD_LOGIC;
           AN1 : out STD_LOGIC;
           AN2 : out STD_LOGIC;
           AN3 : out STD_LOGIC;
           AN4 : out STD_LOGIC;
           AN5 : out STD_LOGIC;
           AN6 : out STD_LOGIC;
           AN7 : out STD_LOGIC);
end anode_driver;

architecture Behavioral of anode_driver is

begin
process(b) is
begin
    AN0 <= '1';
    AN1 <= '1';
    AN2 <= '1';
    AN3 <= '1';
    AN4 <= '1';
    AN5 <= '1';
    AN6 <= '1';
    AN7 <= '1';
    case b is 
    when "000" => 
        AN0 <= '0';
    when "001" => 
        AN1 <= '0';
    when "010" => 
        AN2 <= '0';
    when "011" => 
        AN3 <= '0';
    when "100" => 
        AN4 <= '0';
    when "101" => 
        AN5 <= '0';
    when "110" => 
        AN6 <= '0';
    when "111" => 
        AN7 <= '0';
    when others => 
    end case;
end process;

end Behavioral;
