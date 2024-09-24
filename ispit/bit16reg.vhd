library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity bit16reg is
port(
xData: in std_logic_vector(15 downto 0);--ulazi u glavni 16bit registar,tjst jedan ulaz = jedan registar
xEN: in std_logic;--enable da radi upisivanje u njega;
xCLK: in std_logic;--identifikator za uzlaznu ivicu takta;
xRESET: in std_logic;--da se restartuju vrednosti 16bit registra na 0;
xINC: in std_logic;--za inkrement;
xDEC: in std_logic;--za dekrement
xOutput: out std_logic_vector(15 downto 0)
);--za izlaz 16bit registra
end bit16reg;
								
architecture Behavioral of bit16reg is

signal slow_clk: std_logic := '0';
signal tempDec,tempInc: std_logic_vector(15 downto 0) := (others => '0');--da se cuvaju vrednosti prilikom inkrementa;


component clock_divider is 
	port(
		CLK_IN: in std_logic;
		CLK_OUT: out std_logic);
end component;

component reg4bit is 
			port(
				regData: in std_logic_vector(3 downto 0);
				regEN: in std_logic;
				regCLK: in std_logic;
				regRESET: in std_logic;
				regOutput: out std_logic_vector(3 downto 0));
end component;
component increment is 
					port(
						INC_EN: in std_logic;
						INC_Data: in std_logic_vector(15 downto 0);
						INC_Output : out std_logic_vector(15 downto 0));
end component;

component decrement is
							port(
								DEC_EN: in std_logic;
								DEC_Data: in std_logic_vector(15 downto 0);
								DEC_Output: out std_logic_vector(15 downto 0));
end component;		
begin


clk_divider: clock_divider port map(CLK_IN <= xCLK,CLK_OUT <= slow_clk);
reg1: reg4bit port map(regData <= xData(3 downto 0),regEN <= xEN,regCLK <= slow_clk,regRESET <= xRESET,regOutput <= xOutput(3 downto 0));
reg2: reg4bit port map(regData <= xData(7 downto 4),regEN <= xEN,regCLK <= slow_clk,regRESET <= xRESET,regOutput <= xOutput(7 downto 4));
reg3: reg4bit port map(regData <= xData(11 downto 8),regEN <= xEN,regCLK <= slow_clk,regRESET <= xRESET,regOutput <= xOutput(11 downto 8));
reg1: reg4bit port map(regData <= xData(15 downto 12),regEN <= xEN,regCLK <= slow_clk,regRESET <= xRESET,regOutput <= xOutput(15 downto 12));
inc: increment port map(INC_EN <= xEN, INC_Data <= xData, INC_Output <= tempInc);
dec: decrement port map(DEC_EN <= xEN, DEC_Data <= xData, DEC_Output <= tempDec);

xOutput <= (reg1(3 downto 0) & reg2(3 downto 0) & reg3(3 downto 0) & reg4(3 downto 0));--outputi registara cini output glavnog registra
end Behavioral;

