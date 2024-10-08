--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:47:56 09/22/2024
-- Design Name:   
-- Module Name:   C:/Users/korisnik/Desktop/VHDL/register8bit/tbt.vhd
-- Project Name:  register8bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register8bit
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
 
ENTITY tbt IS
END tbt;
 
ARCHITECTURE behavior OF tbt IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register8bit
    PORT(
         iCLK : IN  std_logic;
         iLOAD : IN  std_logic;
         aData : IN  std_logic_vector(3 downto 0);
         shiftleft : IN  std_logic;
         shiftright : IN  std_logic;
         shift : IN  std_logic;
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal iLOAD : std_logic := '0';
   signal aData : std_logic_vector(3 downto 0) := (others => '0');
   signal shiftleft : std_logic := '0';
   signal shiftright : std_logic := '0';
   signal shift : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register8bit PORT MAP (
          iCLK => iCLK,
          iLOAD => iLOAD,
          aData => aData,
          shiftleft => shiftleft,
          shiftright => shiftright,
          shift => shift,
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
