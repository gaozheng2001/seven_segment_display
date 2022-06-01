----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/05/03 19:31:22
-- Design Name: 
-- Module Name: tb_count - Behavioral
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

entity tb_count is
--  Port ( );
end tb_count;

architecture Behavioral of tb_count is
    component counter 
    port(
        CLK : in STD_LOGIC;
        RESET : in STD_LOGIC;
        b : out STD_LOGIC_VECTOR (2 downto 0)
    );
    end component;
    
    signal CLK : std_logic:='0';
    signal RESET : std_logic:='0';
    
    signal b : std_logic_vector(2 downto 0):="000";
    
    constant per : time:= 100 ns;
begin
uut:counter
port map(
    CLK => CLK,
    RESET => RESET,
    b => b
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
