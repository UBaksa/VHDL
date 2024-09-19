--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:25:22 09/19/2024
-- Design Name:   
-- Module Name:   C:/Users/korisnik/Desktop/VHDL/decoder/tbdecoder.vhd
-- Project Name:  decoder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder
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
 
ENTITY tbdecoder IS
END tbdecoder;
 
ARCHITECTURE behavior OF tbdecoder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder
    PORT(
         X1 : IN  std_logic;
         X2 : IN  std_logic;
         Y1 : OUT  std_logic;
         Y2 : OUT  std_logic;
         Y3 : OUT  std_logic;
         Y4 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X1 : std_logic := '0';
   signal X2 : std_logic := '0';

 	--Outputs
   signal Y1 : std_logic;
   signal Y2 : std_logic;
   signal Y3 : std_logic;
   signal Y4 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder PORT MAP (
          X1 => X1,
          X2 => X2,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3,
          Y4 => Y4
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

X1 <= '1';
X2 <= '0';
 wait for 100 ns;
 X1 <= '0';
 X2 <= '0';
 wait for 100 ns;
 X1 <= '0';
 X2 <= '1';
 wait for 100 ns;
 X1 <= '1';
 X2 <= '1';
      
      -- insert stimulus here 

      wait;
   end process;

END;
