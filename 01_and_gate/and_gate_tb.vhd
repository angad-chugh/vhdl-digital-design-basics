library ieee;
use ieee.std_logic_1164.all;

entity and_gate_tb is
end entity;

architecture sim of and_gate_tb is

    component and_gate is
        port (
            a : in std_logic;
            b : in std_logic;
            y : out std_logic
        );
    end component;
    
    signal tb_a : std_logic := '0';
    signal tb_b : std_logic := '0';
    signal tb_y : std_logic;
    signal tb_end : std_logic := '0';

begin

    uut : and_gate 
        port map(
            a => tb_a,
            b => tb_b,
            y => tb_y
        );

    tb_a <= '0', '1' after 20 ns;
    tb_b <= '0', '1' after 10 ns,
                 '0' after 20 ns,
                 '1' after 30 ns;
    tb_end <= '1' after 40 ns;
end sim;
