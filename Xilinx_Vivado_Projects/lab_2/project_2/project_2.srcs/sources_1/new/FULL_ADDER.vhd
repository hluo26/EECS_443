----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/01/2017 03:25:16 PM
-- Design Name: 
-- Module Name: FULL_ADDER - Behavioral
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

entity FULL_ADDER is
    Port ( A: in std_logic;
 B: in std_logic;
 Input: in std_logic;
 result: out std_logic;
 output: out std_logic);
end FULL_ADDER;

architecture Behavioral of FULL_ADDER is

begin
result <= A xor B xor Input;
 output <= (A and B) or (A and Input) or (B and Input);



end Behavioral;
