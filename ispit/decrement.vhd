library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity decrement is
	port(
		DEC_EN: in std_logic;
		DEC_Data: in std_logic_vector(15 downto 0);
		DEC_Output: out std_logic_vector(15 downto 0));
end decrement;

architecture Behavioral of decrement is
	signal decTemp : std_logic_vector(15 downto 0);
begin
	decTemp <= DEC_Data;
		process(DEC_EN)
		begin
			if(DEC_EN = '1')then
				if(decTemp = "0000000000000000")then
				decTemp <= (others => '1');
				end if;
			else
				decTemp <= decTemp - 1;
			end if;
end process;
DEC_Output <= decTemp;
end Behavioral;

