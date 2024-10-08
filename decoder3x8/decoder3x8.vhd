----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:37:19 09/18/2024 
-- Design Name: 
-- Module Name:    decoder3x8 - Behavioral 
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

entity decoder3x8 is
	port(
	A: is std_logic_vector(2 downto 0);
	output: out std_logic_vector(7 downto 0));
end decoder3x8;

architecture Behavioral of decoder3x8 is

component Decoder2x4 is
port(
    decIN: in std_logic_vector(1 downto 0);
	 EN: in std_logic;
	 decOUT: out std_logic_vector(3 downto 0));
begin
dec1: Decoder2X4 port map(EN => A(2)

end Behavioral;

