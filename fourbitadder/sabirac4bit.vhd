----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:13:50 09/21/2024 
-- Design Name: 
-- Module Name:    sabirac4bit - Behavioral 
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

entity sabirac4bit is
port(
      X: in std_logic;
		Y: in std_logic; -- sa ova 3 bita radimo
		Cin: in std_logic;
		sum: out std_logic;
		Cout: out std_logic);--ova dva poslednja odredjuju carry i odredjuju rezultat sabiranja 2 bita.
end sabirac4bit;

architecture Behavioral of sabirac4bit is

begin 

sum <= (X xor Y) xor Cin; -- ovo odrejuje rezultat 
Cout <= 	(X and (Y or Cin)) or (Cin and Y);--a ovo odredjuje ima li prenosa ili ne.Prvo se proverava da li je x ili jedan od y ili cin 1,a ako nije onda cin i y moraju da su 1 da bi prenos bio 1.ako nije nista od ovoga
--prenos je onda 0;

end Behavioral;

