----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/06/2017 03:18:32 PM
-- Design Name: 
-- Module Name: adder_tb - Behavioral
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

entity adder_tb is
--  Port ( );
end adder_tb;

architecture Behavioral of adder_tb is

    COMPONENT FULL_ADDER
        PORT (A,B,Input : in std_logic;
        result,output : out std_logic);
        END COMPONENT;
        
        signal A,B,Input,result,output : std_logic;       

begin
        mapping : FULL_ADDER PORT MAP(A,B,Input,result,output);
        process
        begin
        
        --test 1--
        A<='0';
        B<='0';
        Input<='0';
        wait for 200ns;
        
        --test 2--
        A<='0';
        B<='0';
        Input<='1';
        wait for 200ns;
        
        --test 3--
        A<='0';
        B<='1';
        Input<='0';
        wait for 200ns;
        
        --test 4--
        A<='0';
        B<='1';
        Input<='1';
        wait for 200ns;
        
        --test 5--
        A<='1';
        B<='0';
        Input<='0';
        wait for 200ns;
        
        --test 6--
        A<='1';
        B<='0';
        Input<='1';
        wait for 200ns;
        
        --test 7--
        A<='1';
        B<='1';
        Input<='0';
        wait for 200ns;
        
        --test 8--
        A<='1';
        B<='1';
        Input<='1';
        wait;
   end process;
        


end Behavioral;
