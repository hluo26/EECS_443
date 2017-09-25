----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2017 02:49:50 PM
-- Design Name: 
-- Module Name: Encoder8to3 - Behavioral
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

entity priority_encoder is
     port(
         S : in STD_LOGIC_VECTOR(7 downto 0);
         en : in STD_LOGIC;
         f : out STD_LOGIC_VECTOR(2 downto 0)
         );
end priority_encoder;

architecture beh of priority_encoder is
begin
process(S,en)
begin
f<="000";
if(en='0')then

         if S(1)='1'then
                f<="001";
        elsif S(2)='1'then
                f<="010";
        elsif S(3)='1'then
                f<="011";
        elsif S(4)='1'then
                f<="100";
        elsif S(5)='1'then
                f<="101";
        elsif S(6)='1'then
                f<="110";
        elsif S(7)='1'then
                f<="111";
        elsif S(0)='1' then
                f<="000"; 
        end if;
        
        end if;
        end process;

end beh;
