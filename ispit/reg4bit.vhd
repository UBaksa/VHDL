library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity reg4bit is
	port (
			regData: in std_logic_vector(3 downto 0);
			regEN: in std_logic;--da radi registar
			regCLK: in std_logic;--takt registra,uzlazni
			regRESET: in std_logic;--da se resetuje vrednost unutar registra na 0000
			regOutput: out std_logic_vector(3 downto 0));
			
end reg4bit;

architecture Behavioral of reg4bit is
signal tempreg: std_logic_vector(3 downto 0) := "0000";
begin
	process(regEN,regCLK) 
	begin
	if(rising_edge(regCLK))then
		if(regEN = '1')then
			if(regRESET = '1') then
			tempreg <= "0000";
         else 
				tempreg <= regData;
			end if;	
		end if;
	tempreg <= tempreg;	
	end if;
end process;	
regOutput <= tempreg;
end Behavioral;

