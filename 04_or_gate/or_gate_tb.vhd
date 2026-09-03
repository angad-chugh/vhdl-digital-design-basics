library ieee;
use ieee.std_logic_1164.all;

entity or_gate_tb is
end entity;

architecture behav of or_gate_tb is

    component or_gate 
    port(
        a,b : in std_logic;
        y : out std_logic
    );
    end component;

    signal a_tb,b_tb : std_logic := '0';
    signal y_tb : std_logic;

    begin
        uut : or_gate
        port map(
            a => a_tb,
            b => b_tb,
            y => y_tb 
        );

        stimulus : process
        begin

            -- test case 1
            a_tb <= '0';
            b_tb <= '0';
            wait for 10 ns;
            assert y_tb = '0'
                report "Test case 1 failed"
                severity error;
            
            -- test case 2
            a_tb <= '0';
            b_tb <= '1';
            wait for 10 ns;
            assert y_tb = '1'
                report "Test case 2 failed"
                severity error;
            
            -- test case 3
            a_tb <= '1';
            b_tb <= '0';
            wait for 10 ns;
            assert y_tb = '1'
                report "Test case 3 failed"
                severity error;
            
            -- test case 4
            a_tb <= '1';
            b_tb <= '1';
            wait for 10 ns;
            assert y_tb = '1'
                report "Test case 4 failed"
                severity error;
            
            wait;
        end process;
end architecture;


