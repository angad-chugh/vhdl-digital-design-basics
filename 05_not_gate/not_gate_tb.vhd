library ieee;
use ieee.std_logic_1164.all;

entity not_gate_tb is
end entity;

architecture behav of not_gate_tb is 

component not_gate 
    port(
        a : in std_logic;
        y : out std_logic
    );
    end component;

    signal a_tb, y_tb : std_logic;

begin
    uut : not_gate
    port map(
        a => a_tb,
        y => y_tb
    );
    stimulus : process
    begin
        -- test case 1
        a_tb <= '1';
        wait for 10 ns;
        assert y_tb = '0'
            report "Test case 1 failed"
            severity error;
        
        -- test case 2
        a_tb <= '0';
        wait for 10 ns;
        assert y_tb = '1'
            report "Test case 2 failed"
            severity error;
        wait;
    end process;
end architecture;
