library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity increment is
	port(
		INC_EN:in std_logic;
		INC_Data: in std_logic_vector(15 downto 0);
		INC_Output: out std_logic_vector(15 downto 0));
end increment;

architecture Behavioral of increment is
	signal incTemp: std_logic_vector(15 downto 0);
begin
	incTemp <= INC_Data;
	process(INC_EN)
	begin
		if(INC_EN = '1') then
			incTemp <= incTemp + 1;
			if(incTemp = "1111111111111111")then
				incTemp <= (others => '0');
			end if;
		end if;
end process;
INC_Output <= incTemp;		
end Behavioral;

