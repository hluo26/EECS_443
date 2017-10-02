----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/27/2017 01:45:13 PM
-- Design Name: 
-- Module Name: generator - Behavioral
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

entity generator is
  Port (Clk,Rst : in std_logic;
        q : out std_logic_vector(7 downto 0) );
end generator;

architecture Behavioral of generator is

        
        constant seed : std_logic_vector(7 downto 0) := "00000001";
        signal num : std_logic_vector(7 downto 0):=seed;

begin
        process(Clk,Rst)
        
        begin
                if Rst = '1' then
                    num <= seed;
                elsif Rising_edge(Clk) then                   
                    num <= (num(4) xor num(3) xor num(2) xor num(0)) & num(7 downto 1);
                end if;
                    
        
        
        end process;
        q<=num;


end Behavioral;
