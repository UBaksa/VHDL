library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity clock_divider is
	port(
	CLK_IN: in std_logic;
	CLK_OUT: out std_logic);
end clock_divider;

architecture Behavioral of clock_divider is
	constant clock_frequency: natural := 5_000_000;
	constant divider : natural := clock_frequency;
	
	signal counter: unsigned(31 downto 0) := (others => '0');
	signal slow_clk: std_logic := '0';

begin
	process(CLK_IN) 
	begin
		if(rising_edge(CLK_IN)) then
			counter <= counter + 1;
			if(counter = divider - 1) then
				slow_clk <= not slow_clk;
				counter <= (others => '0');
         end if;
		end if;
	end process;
CLK_OUT <= slow_clk;	
end Behavioral;

