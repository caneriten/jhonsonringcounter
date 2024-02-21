----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:21:15 01/20/2023 
-- Design Name: 
-- Module Name:    top_ring - Behavioral 
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

entity top_ring is
    Port ( btn_D : in  STD_LOGIC;
           btn_clr : in  STD_LOGIC;
           mclk : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (4 downto 0));
end top_ring;

architecture Behavioral of top_ring is
signal d : std_logic_vector(4 downto 0);

component clkdiv is
    port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           o3 : out  STD_LOGIC
			 );
end component;

component dff is
    Port ( D : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           set : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           notq : out  STD_LOGIC
			  );
end component;
			  
begin
a1: clkdiv
	port map(
				clk => mclk,
				clr => btn_clr,
				o3 => d(0)
	);
	
d0: dff
	port map(
				clk => d(0),
				set => '0',
				clr => '0',
				D => d(4),
				q => d(1)
				
	);
d1: dff
	port map(
				clk => d(0),
				set => '0',
				clr => '0',
				D => d(1),
				q => d(2)
				
	);
d2: dff
	port map(
				clk => d(0),
				set => '0',
				clr => '0',
				D => d(2),
				q => d(3)
				
	);
d3: dff
	port map(
				clk => d(0),
				set => '0',
				clr => '0',
				D => d(3),
				q => led(4),
				notq => d(4)
	);
led(0) <= d(0);
led(1) <= d(1);
led(2) <= d(2);
led(3) <= d(3);

end Behavioral;

