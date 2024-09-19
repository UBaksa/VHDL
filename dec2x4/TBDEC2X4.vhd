--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:53:30 09/19/2024
-- Design Name:   
-- Module Name:   C:/Users/korisnik/Desktop/VHDL/dec2x4/TBDEC2X4.vhd
-- Project Name:  dec2x4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dec2x4
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TBDEC2X4 IS
END TBDEC2X4;
 
ARCHITECTURE behavior OF TBDEC2X4 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dec2x4
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         EN : IN  std_logic;
         F : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal EN : std_logic := '0';

 	--Outputs
   signal F : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dec2x4 PORT MAP (
          A => A,
          EN => EN,
          F => F
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		A <="00";
		EN <='1';
		wait for 100 ns;	
		A <="01";
		EN <='1';		
		wait for 100 ns;	
		A <="10";
		EN <='1';
		wait for 100 ns;	
		A <="11";
		EN <='1';
		wait for 100 ns;	
		A <="00";
		EN <='0';
		

      -- insert stimulus here 

      wait;
   end process;

END;
