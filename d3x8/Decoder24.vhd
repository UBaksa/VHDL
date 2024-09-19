----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:29:42 09/19/2024 
-- Design Name: 
-- Module Name:    Decoder24 - Behavioral 
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

entity Decoder24 is
port ( 
decin: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
en: IN STD_LOGIC;
decout: out STD_LOGIC_VECTOR(3 DOWNTO 0));
end Decoder24;

architecture Behavioral of Decoder24 is

begin

process(decin,en)
BEGIN
	IF(en	 = '1') THEN
		CASE decin IS
		when "00" => decout <= "0001";
		when "01" => decout <= "0010";
		when "10" => decout <= "0100";
		when "11" => decout <= "1000";
		when OTHERS => decout <= "0000";
		END CASE;
	ELSE 	
		decout <= "0000";
		END IF;
		
		END PROCESS;



end Behavioral;

