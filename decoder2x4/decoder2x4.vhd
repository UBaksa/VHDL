----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:22:10 09/18/2024 
-- Design Name: 
-- Module Name:    decoder2x4 - Behavioral 
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

entity decoder2x4 is
	port(
	A: IN STD_LOGIC;
	B: IN STD_LOGIC;
	EN: IN STD_LOGIC;
	F: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
end decoder2x4;

architecture Behavioral of decoder2x4 is

begin
     process(EN,A,B)
	  BEGIN
				IF(EN = '1') then
				case (A & B) is
				when "00" => F <= "0001";
				when "01" => F <= "0010";
				when "10" => F <= "0100";
				when "11" => F <= "1000";
				when others => F <= "0000";
				END CASE;
				
				ELSE
					F <= "0000";
					
			END IF;
		END PROCESS;	
end Behavioral;

