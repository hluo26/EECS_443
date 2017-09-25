
library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity lab1_1_tb is
end;

architecture bench of lab1_1_tb is

  component lab1_1
      Port ( A : in STD_LOGIC;
             B : in STD_LOGIC;
             S : out STD_LOGIC;
             C : out STD_LOGIC);
  end component;

  signal A: STD_LOGIC;
  signal B: STD_LOGIC;
  signal S: STD_LOGIC;
  signal C: STD_LOGIC;

begin

  mapping : lab1_1 port map ( A => A,  
                         B => B,
                         S => S,
                         C => C );


  process
  begin
 
    -- Put initialisation code here
          A <= '0'; B <='0'; wait for 10 ns;
          A <= '0'; B <='1'; wait for 10 ns;
          A <= '1'; B <='0'; wait for 10 ns;
          A <= '1'; B <='1'; wait for 10 ns;
          A <= '0'; B <='0'; wait for 10 ns;

    -- Put test bench stimulus code here

 
  end process;


end;