library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fourbitadder is
port (
X,Y: in std_logic_vector(3 downto 0);
Cin: in std_logic;
Cout: out std_logic;
sum: out std_logic_vector(3 downto 0));
end fourbitadder;

architecture Behavioral of fourbitadder is
	signal carry: std_logic_vector(4 downto 0);
	
	component sabirac4bit is
	port(
		X: in std_logic;
		Y: in std_logic;
		Cin: in std_logic;
		sum: out std_logic;
		Cout: out std_logic);
		end component;
begin
carry(0) <= Cin; -- definisemo prenos na osnovu cin ulaza koji odredjuje carry,C-carry

sabirac1: sabirac4bit port map(
X => X(0),
Y => Y(0),
Cin => carry(0),
Cout => carry(1),
sum => sum(0)
);
sabirac2: sabirac4bit port map(
X => X(1),
Y => Y(1),
Cin => carry(1),
Cout => carry(2),
sum => sum(1)
);
sabirac3: sabirac4bit port map(
X => X(2),
Y => Y(2),
Cin => carry(2),
Cout => carry(3),
sum => sum(2)
);
sabirac4: sabirac4bit port map(
X => X(3),
Y => Y(3),
Cin => carry(3),
Cout => carry(4),
sum => sum(3)
);

Cout <= carry(4);--ovo predstavlja output za poslednju operaiciju
end Behavioral;

