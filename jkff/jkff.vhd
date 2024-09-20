----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:55:41 09/19/2024 
-- Design Name: 
-- Module Name:    jkff - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity jkff is
port(
J,K,CLK,RESET: in std_logic;
Q,Qn : out std_logic);
end jkff;

architecture Behavioral of jkff is
signal Qtemp: std_logic;

begin
process(CLK,RESET)
begin
	if(RESET = '1') then
	Qtemp <= '0';
	elsif(rising_edge(CLK))then
		if(J = '1' and K = '1') then
		Qtemp <= not Qtemp;
		elsif(J = '1' and K = '0')then
		Qtemp <= '1';
		elsif(J = '0' and K = '1')then
		Qtemp <= '0';
		end if;
	end if;
end process;

Q <= Qtemp;
Qn <= not Qtemp;
end Behavioral;

