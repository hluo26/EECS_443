----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2017 01:34:16 PM
-- Design Name: 
-- Module Name: Mux_tb - Behavioral
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

entity Mux_tb is
--  Port ( );
end Mux_tb;

architecture Behavioral of Mux_tb is

    component Mux8to1 is
       port( W	:in std_logic_vector(7 downto 0);
            S    :in std_logic_vector(2 downto 0);
            f    :out std_logic);
        end component;

        signal W	:std_logic_vector(7 downto 0):= "01010101";
        signal S    : std_logic_vector(2 downto 0);
        signal f : std_logic;

begin

        
        result : Mux8to1 port map(W,S,f);
        
        process
        begin
        
        --test 000--
        S<="000";
        wait for 50 ns;
        
        --test 001--
        S<="001";
        wait for 50 ns;
        
        --test 010--
        S<="010";
        wait for 50 ns;
        
        --test 011--
        S<="011";
        wait for 50 ns;
        
        --test 100--
        S<="100";
        wait for 50 ns;
        
        --test 101--
        S<="101";
        wait for 50 ns;
        
        --test 110--
        S<="110";
        wait for 50 ns;
        
        --test 111--
        S<="111";
        wait;
        
        end process;

   
        


end Behavioral;
