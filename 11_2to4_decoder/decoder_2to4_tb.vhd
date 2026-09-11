library ieee;
use ieee.std_logic_1164.all;

entity decoder_2to4_tb is
end entity;

architecture behav of decoder_2to4_tb is

    component decoder_2to4
        port(
            a : in std_logic_vector(1 downto 0);
            y : out std_logic_vector(3 downto 0)
        );
    end component;

        signal a_tb : std_logic_vector(1 downto 0) := "00";
        signal y_tb : std_logic_vector(3 downto 0) := "0000";

    begin

        uut: decoder_2to4 port map (
            a => a_tb,
            y => y_tb
        );

        stimulus : process
        begin

            -- Test case 1
            a_tb <= "00";
            wait for 10 ns;
            assert y_tb = "0001"
                report("Test case 1 failed")
                severity error;

            -- Test case 2
            a_tb <= "01";
            wait for 10 ns;
            assert y_tb = "0010"
                report("Test case 2 failed")
                severity error;

            -- Test case 3
            a_tb <= "10";
            wait for 10 ns;
            assert y_tb = "0100"
                report("Test case 3 failed")
                severity error;
                
            -- Test case 4
            a_tb <= "11";
            wait for 10 ns;
            assert y_tb = "1000"
                report("Test case 4 failed")
                severity error;    
        end process;
    end architecture;


