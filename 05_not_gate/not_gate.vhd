library ieee;
use ieee.std_logic_1164.all;

entity not_gate is
    port(
        a : in std_logic;
        y : out std_logic
    );
end entity;

architecture behav of not_gate is
begin
    y <= not a;
end behav;