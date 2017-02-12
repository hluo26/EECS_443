library IEEE;
 use IEEE.std_logic_1164.all;
 entity FULL_ADDER is
 port (
 A: in std_logic;
 B: in std_logic;
 Input: in std_logic;
 result: out std_logic;
 output: out std_logic
 );
 end FULL_ADDER;

 architecture lab2 of FULL_ADDER is
 begin
 result <= A xor B xor Input;
 output <= (A and B) or (A and Input) or (B and Input);
 end lab2;
