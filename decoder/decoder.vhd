----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:24:48 09/17/2024 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
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

entity decoder is
port (
X1: in std_logic;
X2: in std_logic;
Y1: out std_logic;
Y2: out std_logic;
Y3: out std_logic;
Y4: out std_logic);
end decoder;

architecture Behavioral of decoder is

begin
Y1 <= (not X1) and (not X2);
Y2 <= (not X1) and X2;
Y3 <= X1 and (not X2);
Y4 <= X1 and X2;

end Behavioral;

