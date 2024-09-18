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
	A: IN STD_LOGIC;
	B: IN STD_LOGIC;
	C: IN STD_LOGIC;
	EN: IN STD_LOGIC;
	F: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	
end decoder3x8;

architecture Behavioral of decoder3x8 is

begin
	process(A,B,C)
	BEGIN
		
		IF(EN = '1') IS
			CASE (A & B & C) THEN
			
			WHEN "000" => F <= "00000001";
			WHEN "001" => F <= "00000010";
		

end Behavioral;

