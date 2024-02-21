----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:15:42 01/20/2023 
-- Design Name: 
-- Module Name:    clkdiv - Behavioral 
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
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clkdiv is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           o3 : out  STD_LOGIC);
end clkdiv;

architecture Behavioral of clkdiv is
signal q: std_logic_vector(27 downto 0);
begin
process(clk, clr)
	begin
		if clr= '1' then
			q <= X"0000000";
		elsif clk'event and clk = '1' then
			q <= q + 1;
		end if;
end process;
o3 <= q(27);
end Behavioral;

