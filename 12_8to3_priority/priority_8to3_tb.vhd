library ieee;
use ieee.std_logic_1164.all;

entity priority_8to3_tb is
end entity;

architecture behav of priority_8to3_tb is

    component priority_8to3
        port(
            a : in std_logic_vector(7 downto 0);
            y : out std_logic_vector(2 downto 0)
        );
    end component;

    signal a_tb : std_logic_vector(7 downto 0) := (others => '0');
    signal y_tb : std_logic_vector(2 downto 0) := ("000");

    begin

        uut : priority_8to3 port map(
            a => a_tb,
            y => y_tb
        );
    
        stimulus : process
        begin

            -- Test case 1
            a_tb <= "00000001";
            wait for 10 ns;
            assert y_tb = "000"
                report ("Test case 1 failed")
                severity error;
            
            -- Test case 2
            a_tb <= "00000011";
            wait for 10 ns;
            assert y_tb = "001"
                report ("Test case 2 failed")
                severity error;

            -- Test case 3
            a_tb <= "00000111";
            wait for 10 ns;
            assert y_tb = "010"
                report ("Test case 3 failed")
                severity error;

            -- Test case 4
            a_tb <= "00001111";
            wait for 10 ns;
            assert y_tb = "011"
                report ("Test case 4 failed")
                severity error;
            
            -- Test case 5
            a_tb <= "00011111";
            wait for 10 ns;
            assert y_tb = "100"
                report ("Test case 5 failed")
                severity error;

            -- Test case 6
            a_tb <= "00111111";
            wait for 10 ns;
            assert y_tb = "101"
                report ("Test case 6 failed")
                severity error;
 
            -- Test case 7
            a_tb <= "01111111";
            wait for 10 ns;
            assert y_tb = "110"
                report ("Test case 7 failed")
                severity error;

            -- Test case 8
            a_tb <= "11111111";
            wait for 10 ns;
            assert y_tb = "111"
                report ("Test case 8 failed")
                severity error;
        end process;
    end architecture;