----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:41:29 09/20/2024 
-- Design Name: 
-- Module Name:    TFF - Behavioral 
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

entity TFF is
port(
T1,T_R,T_CLK,T_EN,T_UP : in std_logic;
Q: out std_logic);
end TFF;

architecture Behavioral of TFF is
signal tmp,tmp1,tmp2 : std_logic := '0';
begin
	process(T_CLK,T_EN,T_R)
	begin
	if(T_EN = '0') then
		tmp1 <= tmp1;
		tmp2 <= tmp2;
	else 
	   if(T_R = '1') then
		tmp1 <= '0';
		tmp2 <= '0';
		elsif(T_UP = '1') then
		     if(falling_edge(T_CLK)) then
			     if(T1 = tmp1) then
				  tmp1 <= '0';
				  else
				  tmp1 <= '1';
				  end if;
				end if;
		elsif(T_UP = '0') then
          if(rising_edge(T_CLK)) then
            if(T1 = tmp2) then
                  tmp2 <= '0';
            else
                  tmp2 <= '1';
            end if;
          end if;
   end if;
end if;
     if(T_UP = '1') then
      tmp <= tmp1;	  
		else
      tmp <= tmp2;
      end if;
end process;
Q <= tmp;		

end Behavioral;

