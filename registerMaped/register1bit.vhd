----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:16:30 09/17/2024 
-- Design Name: 
-- Module Name:    register1bit - Behavioral 
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register1bit is 
port (
    iData  : in std_logic;  -- Promenjen naziv porta
    iEN    : in std_logic;
    iCLK   : in std_logic;
    oData  : out std_logic  -- Promenjen naziv porta
);
end register1bit;

architecture Behavioral of register1bit is
begin
    process(iCLK)
    begin
        if rising_edge(iCLK) then
            if iEN = '1' then
                oData <= iData;
            end if;
        end if;
    end process;
end Behavioral;

