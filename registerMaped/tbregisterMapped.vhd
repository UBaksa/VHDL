--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:04:05 09/17/2024
-- Design Name:   
-- Module Name:   C:/Xilinx/registerMaped/tbregisterMapped.vhd
-- Project Name:  registerMaped
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registerMapped
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

 
entity registerMapped is 
port (
    iD     : in std_logic_vector(7 downto 0);
    iCLK   : in std_logic;
    iEN    : in std_logic;
    output : out std_logic_vector(7 downto 0)
);
end registerMapped;
 
ARCHITECTURE behavior OF tbregisterMapped IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registerMapped
    PORT(
         iD : IN  std_logic_vector(7 downto 0);
         iCLK : IN  std_logic;
         iEN : IN  std_logic;
         output : OUT  std_logic_vector(7 downto 0)
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
   uut: registerMapped PORT MAP (
          iD => iD,
          iCLK => iCLK,
          iEN => iEN,
          output => output
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

      wait for iCLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
