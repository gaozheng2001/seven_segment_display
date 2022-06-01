----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/05/03 20:37:50
-- Design Name: 
-- Module Name: seven_segment_display - Behavioral
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

entity seven_segment_display is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           char1 ,char2 ,char3 ,char4 : in STD_LOGIC_VECTOR (3 downto 0);
           LED : out STD_LOGIC_VECTOR (7 downto 0);
           AN0 ,AN1 ,AN2 ,AN3 ,AN4 ,AN5 ,AN6 ,AN7 : out STD_LOGIC);
end seven_segment_display;

architecture Behavioral of seven_segment_display is
    component  mux is
    Port ( 
        char1 ,char2 ,char3 ,char4 : in STD_LOGIC_VECTOR (3 downto 0);
        b : in STD_LOGIC_VECTOR (2 downto 0);
        x : out STD_LOGIC_VECTOR (3 downto 0)
    );
    end component;

    component hex7seg
    port(
        x : in STD_LOGIC_VECTOR (3 downto 0);
        LED : out STD_LOGIC_VECTOR (7 downto 0)
    );
    end component;
    
    component counter is
    Port ( 
        CLK : in STD_LOGIC;
        RESET : in STD_LOGIC;
        b : out STD_LOGIC_VECTOR (2 downto 0)
    );
    end component;
    
    component anode_driver is
    Port ( 
        b : in std_logic_vector(2 downto 0);
        AN0 ,AN1 ,AN2 ,AN3 ,AN4 ,AN5 ,AN6 ,AN7 : out STD_LOGIC
    );
    end component;
    
    signal b:std_logic_vector(2 downto 0);
    signal x:std_logic_vector(3 downto 0);
    
begin
mux_pro:mux
port map(
    char1 => char1,
    char2 => char2,
    char3 => char3,
    char4 => char4,
    b => b,
    x => x
);

hex7seg_pro:hex7seg
port map(
    x => x,
    LED => LED
);

counter_pro: counter
port map(
    CLK => CLK,
    RESET => RESET,
    b => b
);

anode_driver_pro: anode_driver
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

end Behavioral;
