----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2017 02:15:37 PM
-- Design Name: 
-- Module Name: Mux4to1 - Behavioral
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

entity Mux4to1 is
 port(A,B,C,D    :in std_logic;
           S           :in std_logic_vector(1 downto 0);
           f   :out std_logic);
end Mux4to1;

architecture Behavioral of Mux4to1 is

begin
    process(A,B,C,D,S) is
    begin
    case S is
    when "00"=>
    f<=A;
    when "01"=>
    f<=B; 
    when "10"=>
    f<=C;
    when others =>
    f<=D;
     end case; 
     
     end process;


end Behavioral;
