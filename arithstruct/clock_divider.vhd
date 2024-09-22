----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:36 09/22/2024 
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
	port(
		CLK_IN: in std_logic;
		CLK_OUT: out std_logic);
end clock_divider;


architecture Behavioral of clock_divider is
	constant CLOCK_FREQUENCY : natural := 5_000_000;
	constant DIVIDER: natural CLOCK_FREQUENCY;
	
	signal counter : unsigned(31 downto 0) := (others => '0');
	signal slow_clk : std_logic := '0';


begin
	process(CLK_IN)
	begin
		if(rising_edge(CLK_IN)) then
			counter <= counter + 1;
			if(counter = DIVIDER - 1) then
				slow_clk <= not slow_clk;
				counter <= (others => '0');
			end if;
		end if;
end process;		

CLK_OUT <= slow_clk;
end Behavioral;

