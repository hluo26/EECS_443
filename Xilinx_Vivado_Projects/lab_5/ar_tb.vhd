----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/03/04 13:23:51
-- Design Name: 
-- Module Name: ar_tb - Behavioral
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

entity ar_tb is
--  Port ( );
end ar_tb;

architecture Behavioral of ar_tb is

    component ar_flipflop is
        --generic( n : integer := 4);
        Port (M   :in std_logic_vector(3 downto 0);
            Clk,Rst :in std_logic;
            Q   :in std_logic_vector(3 downto 0) );
        end component;
        
        signal M :std_logic_vector(3 downto 0);
        signal Clk :std_logic:='0';
        signal Rst  :std_logic:='1';
        signal Q :std_logic_vector(3 downto 0);
        
        -- Clock period definitions
           constant clk_period : time := 10 ns;

begin

    mapping : ar_flipflop port map (M=>M,Clk=>Clk,Rst=>Rst,Q=>Q);
    clk_process :process
       begin
            Clk <= '0';
            wait for Clk_period/2;
            Clk <= '1';
            wait for Clk_period/2;
       end process;
            
       -- Stimulus process
         stim_proc: process
         begin        
            --insert stimulus here
              Rst <= '1';
              M <= "0010";
              wait for clk_period*10;
      
              Rst <= '0';
              M <= "1100";
              wait for clk_period*100;            
      
            wait;
         end process;

end Behavioral;
