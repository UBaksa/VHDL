--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:19:25 09/21/2024
-- Design Name:   
-- Module Name:   C:/Users/korisnik/Desktop/VHDL/fourbitadder/tbfourbitadder.vhd
-- Project Name:  fourbitadder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fourbitadder
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
 
ENTITY tbfourbitadder IS
END tbfourbitadder;
 
ARCHITECTURE behavior OF tbfourbitadder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fourbitadder
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         Cout : OUT  std_logic;
         sum : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');
   signal Y : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Cout : std_logic;
   signal sum : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fourbitadder PORT MAP (
          X => X,
          Y => Y,
          Cin => Cin,
          Cout => Cout,
          sum => sum
        );

   -- Clock process definitions
   
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      X <= "1001";
		Y <= "0111";
		Cin <= '0';
		
		wait for 100 ns;	

      X <= "1000";
		Y <= "0111";
		Cin <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
