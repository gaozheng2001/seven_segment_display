----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/04/28 19:26:29
-- Design Name: 
-- Module Name: tb_hex7seg - Behavioral
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

entity tb_hex7seg is
--  Port ( );
end tb_hex7seg;

architecture Behavioral of tb_hex7seg is
    component hex7seg 
    port(
        x : in std_logic_vector (3 downto 0);
        LED : out std_logic_vector (7 downto 0)
        );
    end component;
    
    signal x : std_logic_vector(3 downto 0):="0000";
    
    signal LED : std_logic_vector(7 downto 0):="00000000";
    
    constant per : time:= 100 ns;
    
begin
uut: hex7seg
port map(
    x => x,
    LED => LED
);

x_pro:process
begin
    x <= x + 1;
    wait for per;
end process;

end Behavioral;
