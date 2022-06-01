----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/05/03 20:50:27
-- Design Name: 
-- Module Name: tb_seven_segment_display - Behavioral
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

entity tb_seven_segment_display is
--  Port ( );
end tb_seven_segment_display;

architecture Behavioral of tb_seven_segment_display is
    component seven_segment_display is
    Port ( 
        CLK : in STD_LOGIC;
        RESET : in STD_LOGIC;
        char1 ,char2 ,char3 ,char4 : in STD_LOGIC_VECTOR (3 downto 0);
        LED : out STD_LOGIC_VECTOR (7 downto 0);
        AN0 ,AN1 ,AN2 ,AN3 ,AN4 ,AN5 ,AN6 ,AN7 : out STD_LOGIC
    );
    end component;
    
    signal CLK, RESET: std_logic:='0';
    signal char1: std_logic_vector(3 downto 0):="0001";
    signal char2: std_logic_vector(3 downto 0):="0010";
    signal char3: std_logic_vector(3 downto 0):="0011";
    signal char4: std_logic_vector(3 downto 0):="0100";
    
    signal LED: std_logic_vector(7 downto 0):="00000000";
    signal AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7: std_logic:='1';
    
    constant per : time:= 100 ns;
    
begin
uut: seven_segment_display
port map(
    CLK => CLK,
    RESET => RESET,
    char1 => char1,
    char2 => char2,
    char3 => char3,
    char4 => char4,
    LED => LED,
    AN0 => AN0,
    AN1 => AN1,
    AN2 => AN2,
    AN3 => AN3,
    AN4 => AN4,
    AN5 => AN5,
    AN6 => AN6,
    AN7 => AN7
);

clk_pro:process
begin
    CLK <= '0';
    wait for per/2;
    CLK <= '1';
    wait for per/2;
end process;

reset_pro:process
begin
    RESET <= '1';
    for i in 1 to 2 loop
        wait until CLK = '1';
    end loop;
    RESET <= '0';
    wait;
end process;

end Behavioral;
