----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/01/2017 03:21:21 PM
-- Design Name: 
-- Module Name: four_BIT_COMPARATOR - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_BIT_COMPARATOR is
    Port ( A : in STD_LOGIC_VECTOR(3 DOWNTO 0);
           B : in STD_LOGIC_VECTOR(3 DOWNTO 0);
           Red : out STD_LOGIC;
           Blue : out STD_LOGIC;
           Green : out STD_LOGIC);
end four_BIT_COMPARATOR;

architecture Behavioral of four_BIT_COMPARATOR is

begin

process(A,B)
begin
Red<='0';
Blue<='0';
Green<='0';
if (A > B ) then
--Red <= '0';
--Blue <= '0';
Green <= '1';
elsif (A < B) then
Red <= '1';
--Blue <= '0';
--Green <= '0';
else
--Red <= '0';
Blue <= '1';
--Green <= '0';
end if;
end process;


end Behavioral;
