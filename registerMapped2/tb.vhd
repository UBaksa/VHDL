--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:38:27 09/16/2024
-- Design Name:   
-- Module Name:   C:/Xilinx/registerMapped2/tb.vhd
-- Project Name:  registerMapped2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registerMapped2
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
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registerMapped2
    PORT(
         iD : IN  std_logic_vector(7 downto 0);
         output : OUT  std_logic_vector(7 downto 0);
         iCLK : IN  std_logic;
         iEN : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iD : std_logic_vector(7 downto 0) := (others => '0');
   signal iCLK : std_logic := '0';
   signal iEN : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registerMapped2 PORT MAP (
          iD => iD,
          output => output,
          iCLK => iCLK,
          iEN => iEN
        );

   -- Clock process definitions
   iCLK_process :process
   begin
		iCLK <= '0';
		wait for iCLK_period/2;
		iCLK <= '1';
		wait for iCLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
iD(7)<='1';
iD(6)<='1';
iD(5 downto 0)<="000000";
      wait for 500 ns;
		iD(7 downto 0)<="0000000";

      -- insert stimulus here 

      wait;
   end process;

END;
