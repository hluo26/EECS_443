----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/27/2017 03:43:23 PM
-- Design Name: 
-- Module Name: gen_tb - Behavioral
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

entity gen_tb is
--  Port ( );
end gen_tb;

architecture Behavioral of gen_tb is

    component generator is
        port ( Clk,Rst : in std_logic;
            q : out std_logic_vector(7 downto 0) );
            end component;
            
          signal Clk :std_logic;
          signal Rst :std_logic;
          --signal Load :std_logic;
          signal q : std_logic_vector(7 downto 0);
          CONSTANT clk_period : time := 10 ns;

begin
        mapping : generator port map(Clk=>Clk, Rst=>Rst, q=>q);
        
        stim_proc: process
                         begin
                              Clk <= '1';            
                              Rst <= '0';
                              --Load <= '1';
                              wait for clk_period*5;
                              
                              Clk <= '0';
                              --Load <= '0';
                              wait for clk_period*5;                                         
                              
                              Clk <= '1';
                              wait for clk_period*5;
                              
                              Clk <= '0';
                              wait for clk_period*5;
                              
                              Clk <= '1';
                              wait for clk_period*5;
                              
                              Clk <= '0';
                              wait for clk_period*5;
                              
                              Clk <= '1';
                              wait for clk_period*5;                                                                       
                              
                              Clk <= '0';
                              wait for clk_period*5;
                              
                              Clk <= '1';
                              wait for clk_period*5;
                              
                              Clk <= '0';
                              wait for clk_period*5;
                              
                              Clk <= '1';
                              wait for clk_period*5;
                              
                              Clk <= '0';
                              wait for clk_period*5;
                  
                              Clk <= '1';
                              wait for clk_period*5;
                      
                            wait for clk_period*5;
                         end process;
        
           


end Behavioral;
