----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:18:53 09/17/2024 
-- Design Name: 
-- Module Name:    mux4-1 - Behavioral 
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

entity mux41 is
port (
X1: in std_logic;
X2: in std_logic;
X3: in std_logic;
X4: in std_logic;
S1: in std_logic;
S2: in std_logic;
F: out std_logic);

end mux41;

architecture Behavioral of mux41 is

begin

F <= (((not S1) and (not S2) and X4) or ((not S1) and S2 and X3) or (S1 and (not S2) and X2) or (S1 and S2 and X1));

end Behavioral;

