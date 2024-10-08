----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:14:40 09/18/2024 
-- Design Name: 
-- Module Name:    clock_divider - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_divider is
 Port (
        CLK_IN : in  STD_LOGIC;        -- Input clock
        CLK_OUT : out STD_LOGIC        -- Output clock (slowed down)
    );
end clock_divider;

architecture Behavioral of clock_divider is

	 constant CLOCK_FREQUENCY : natural := 5_000_000;  -- delimo clock sa 5 miliona
    constant DIVIDER : natural := CLOCK_FREQUENCY;     

    signal counter : unsigned(31 downto 0) := (others => '0');
    signal slow_clk : std_logic := '0';  -- Slowed down clock output

begin

    -- Process to divide the clock
    process(CLK_IN)
    begin
        if rising_edge(CLK_IN) then
            counter <= counter + 1;
            if counter = DIVIDER - 1 then
                slow_clk <= not slow_clk;
                counter <= (others => '0');
            end if;
        end if;
    end process;

    -- Output the slowed down clock
    CLK_OUT <= slow_clk;

end Behavioral;

