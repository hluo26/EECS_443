----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2017 01:22:30 PM
-- Design Name: 
-- Module Name: Mux - Behavioral
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

ENTITY Mux8to1 is
	port( W	:in std_logic_vector(7 downto 0);
		S	:in std_logic_vector(2 downto 0);
		f	:out std_logic);
	END Mux8to1;

ARCHITECTURE beh OF Mux8to1 is
    component Mux2to1 is 
        port(A,B,S  :in std_logic;
            f   :out std_logic);
        end component;
        
    component Mux4to1 is
        port(A,B,C,D    :in std_logic;
            S           :in std_logic_vector(1 downto 0);
            f   :out std_logic);
        end component;
        
        signal f1,f2 :std_logic;
        
   begin
        M1:   Mux4to1 port map(W(0),W(1),W(2),W(3),S(1 downto 0),f1);
        M2:   Mux4to1 port map(W(4),W(5),W(6),W(7),S(1 downto 0),f2);
        M3:   Mux2to1 port map(f1,f2,S(2),f);
        
END beh;
