library ieee;
use ieee.std_logic_1164.all;

entity demux2_tb is 
end entity;

architecture behav of demux2_tb is

    component demux2
        port(
            a : in std_logic_vector(7 downto 0);
            sel : in std_logic;
            s0, s1 : out std_logic_vector(7 downto 0)
        );
    end component;

    signal a_tb, s0_tb, s1_tb : std_logic_vector(7 downto 0) := "00000000";
    signal sel_tb : std_logic := '0';

    begin

        uut : demux2 port map(
            a => a_tb,
            sel => sel_tb,
            s0 => s0_tb, 
            s1 => s1_tb
        );

        stimulus : process
        begin
            -- Test case 1 
            a_tb <= "10001000";
            sel_tb <= '0';
            wait for 10 ns;
            assert s0_tb = "10001000"
                report "test case 1 failed"
                severity error;
            
            -- Test case 2 
            a_tb <= "01110111";
            sel_tb <= '1';
            wait for 10 ns;
            assert s1_tb = "01110111"
                report "test case 2 failed"
                severity error;
        end process;
    end architecture;