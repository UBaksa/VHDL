----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:43 09/16/2024 
-- Design Name: 
-- Module Name:    registerbit - Behavioral 
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

entity registerbit is port (
input : in std_logic_vector(1 downto 0);
iEN : in std_logic;
iCLK : in std_logic;
outp: out std_logic_vector(1 downto 0));
end registerbit;

architecture Behavioral of registerbit is
begin
     process(iCLK)
	  begin
	  if(rising_edge(iCLK)) then
	  if(iEN = '1') then
	  outp <= input;
	  end if;
	  end if;

end Behavioral;

