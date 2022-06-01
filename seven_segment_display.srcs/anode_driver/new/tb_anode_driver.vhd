----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/05/03 20:25:16
-- Design Name: 
-- Module Name: tb_anode_driver - Behavioral
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

entity tb_anode_driver is
--  Port ( );
end tb_anode_driver;

architecture Behavioral of tb_anode_driver is
    component anode_driver is
    Port ( b : in std_logic_vector(2 downto 0);
           AN0 : out STD_LOGIC;
           AN1 : out STD_LOGIC;
           AN2 : out STD_LOGIC;
           AN3 : out STD_LOGIC;
           AN4 : out STD_LOGIC;
           AN5 : out STD_LOGIC;
           AN6 : out STD_LOGIC;
           AN7 : out STD_LOGIC);
    end component;
    
    signal b : std_logic_vector(2 downto 0):="000";
    
    signal AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7: std_logic:='1';
    
    constant per : time:= 100 ns;
    
begin
uut: anode_driver
port map(
    b => b,
    AN0 => AN0,
    AN1 => AN1,
    AN2 => AN2,
    AN3 => AN3,
    AN4 => AN4,
    AN5 => AN5,
    AN6 => AN6,
    AN7 => AN7
);

b_pro : process
begin
    b <= b + 1;
    wait for per;
end process;
end Behavioral;
