----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:07:38 01/20/2023 
-- Design Name: 
-- Module Name:    dff - Behavioral 
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

entity dff is
    Port ( D : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           set : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           notq : out  STD_LOGIC);
end dff;

architecture Behavioral of dff is
signal t : std_logic;

begin

process(clk, clr, set) 
	begin
		if(clr = '1') then
			t <= '0';
		elsif(set = '1') then
			t <= '1';
		elsif(clk'event and clk = '1') then
			t <= D;
		
		end if;
end process;
q <= t;
notq <= not t;


end Behavioral;

