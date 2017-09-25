----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/08/2017 02:03:21 PM
-- Design Name: 
-- Module Name: Comparator_tb - Behavioral
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

entity Comparator_tb is
--  Port ( );
end Comparator_tb;

architecture Behavioral of Comparator_tb is

        COMPONENT four_BIT_COMPARATOR
        PORT (A : in STD_LOGIC_VECTOR(3 DOWNTO 0);
                   B : in STD_LOGIC_VECTOR(3 DOWNTO 0);
                   Red : out STD_LOGIC;
                   Blue : out STD_LOGIC;
                   Green : out STD_LOGIC);
        END COMPONENT;
        
        signal A,B : std_logic_vector(3 downto 0);
        signal Red,Blue,Green : std_logic ;
        
begin
        mapping : four_BIT_COMPARATOR PORT MAP(A,B,Red,Blue,Green);
        
        
        process
        begin
        
        --test 1--
        A<="1000";
        B<="0001";
        wait for 50ns;
        
        --test 2--
        A<="1100";
        B<="0011";
        wait for 50ns;
        
        --test 3--
        A<="1010";
        B<="0101";
        wait for 50ns;
        
        --test 4--
        A<="0101";
        B<="1010";
        wait for 50ns;
        
        --test 5--
        A<="1001";
        B<="1010";
        wait for 50ns;
        
        --test 6--
        A<="1101";
        B<="1101";
        wait for 50ns;
        
        --test 7--
        A<="1011";
        B<="1101";
        wait for 50ns;
        
        --test 8--
        A<="0001";
        B<="1001";
        wait;
        
        end process;


end Behavioral;
