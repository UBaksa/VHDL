----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:26:23 09/19/2024 
-- Design Name: 
-- Module Name:    dec2x4 - Behavioral 
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

entity dec2x4 is
port(
A: in std_logic_vector(1 downto 0 );
EN: in std_logic;
F: out std_logic_vector(3 downto 0)); 
end dec2x4;

architecture Behavioral of dec2x4 is

begin

process(A,EN)
	begin
	
	if(EN = '1') THEN
		case A IS 
			WHEN "00" => F <= "0001";
			WHEN "01" => F <= "0010";
			WHEN "10" => F <= "0100";
			WHEN "11" => F <= "1000";
			WHEN OTHERS => F <="0000";
		END CASE;
		
	ELSE
		F <="0000";	
END IF;
END PROCESS;		
	

end Behavioral;

