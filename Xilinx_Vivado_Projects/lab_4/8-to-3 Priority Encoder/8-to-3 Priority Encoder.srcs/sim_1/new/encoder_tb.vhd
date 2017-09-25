----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/19/2017 01:45:34 PM
-- Design Name: 
-- Module Name: encoder_tb - Behavioral
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

entity encoder_tb is
--  Port ( );
end encoder_tb;

architecture Behavioral of encoder_tb is

component encoder
        port( S	:in std_logic_vector(7 downto 0);
                         en    :in std_logic;
                         f        :out std_logic_vector(2 downto 0));
        end component;
        
        signal S: std_logic_vector(7 downto 0):= (others => '0');
        signal en :std_logic;
        signal f : std_logic_vector(2 downto 0);

begin

        mapping : encoder port map(S,en,f);
        
        process
            begin
         
            en <= '0';
            S<="10000000";
            wait for 50 ns;
            
            en <= '1';
            S<="10000000";
            wait for 50 ns;
                
            en<= '1';
            S<="01000000";
            wait for 50 ns;
            
            en<='1';
            S<="00100000";
            wait for 50 ns;
            
            en<='1';
            S<="00010000";
            wait for 50 ns;
            
            en<='1';
            S<="00001000";
            wait for 50 ns;
            
            en<='1';
            S<="00000100";
            wait for 50 ns;
            
            en<='1';
            S<="00000010";
            wait for 50 ns;
            
            en<='1';
            S<="00000001";
            wait;
            
            end process;


end Behavioral;
