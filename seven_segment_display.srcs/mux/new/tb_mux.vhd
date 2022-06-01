----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/05/03 21:27:12
-- Design Name: 
-- Module Name: tb_mux - Behavioral
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

entity tb_mux is
--  Port ( );
end tb_mux;

architecture Behavioral of tb_mux is
    component mux is
    Port ( 
        char1 : in STD_LOGIC_VECTOR (3 downto 0);
        char2 : in STD_LOGIC_VECTOR (3 downto 0);
        char3 : in STD_LOGIC_VECTOR (3 downto 0);
        char4 : in STD_LOGIC_VECTOR (3 downto 0);
        b : in STD_LOGIC_VECTOR (2 downto 0);
        x : out STD_LOGIC_VECTOR (3 downto 0)
    );
    end component;
    
    signal char1: std_logic_vector(3 downto 0):="0001";
    signal char2: std_logic_vector(3 downto 0):="0010";
    signal char3: std_logic_vector(3 downto 0):="0011";
    signal char4: std_logic_vector(3 downto 0):="0100";
    signal b: std_logic_vector(2 downto 0):="000";
    
    signal x: std_logic_vector(3 downto 0):="0000";
    
    constant per : time:= 100 ns;
    
begin
uut:mux
port map(
    char1 => char1,
    char2 => char2,
    char3 => char3,
    char4 => char4,
    b => b,
    x => x
);

b_pro : process
begin
    b <= b + 1;
    wait for per;
end process;

end Behavioral;
