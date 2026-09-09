library ieee;
use ieee.std_logic_1164.all;

entity mux8_tb is
end entity;

architecture behav of mux8_tb is

    component mux8
        port(
            D : in std_logic_vector(7 downto 0);
            sel : in std_logic_vector(2 downto 0);
            y : out std_logic 
        );
    end component;

        signal D_tb : std_logic_vector(7 downto 0);
        signal sel_tb : std_logic_vector(2 downto 0);
        signal y_tb : std_logic;

    begin

        uut : mux8 port map(
            D => D_tb,
            sel => sel_tb,
            y => y_tb
        );

        stimulus : process
        begin

            D_tb <= "10101010";

            -- Test case 1
            sel_tb <= "000";
            wait for 5 ns;
            assert y_tb = '0'
                report "test case 1 failed"
                severity error;
            
            -- Test case 2 
            sel_tb <= "001";
            wait for 5 ns;
            assert y_tb = '1'
                report "test case 2 failed"
                severity error;

            -- Test case 3 
            sel_tb <= "010";
            wait for 5 ns;
            assert y_tb = '0'
                report "test case 3 failed"
                severity error;

            -- Test case 4 
            sel_tb <= "011";
            wait for 5 ns;
            assert y_tb = '1'
                report "test case 4 failed"
                severity error;

            -- Test case 5 
            sel_tb <= "100";
            wait for 5 ns;
            assert y_tb = '0'
                report "test case 5 failed"
                severity error;

            -- Test case 6 
            sel_tb <= "101";
            wait for 5 ns;
            assert y_tb = '1'
                report "test case 6 failed"
                severity error;

            -- Test case 7 
            sel_tb <= "110";
            wait for 5 ns;
            assert y_tb = '0'
                report "test csae 7 failed"
                severity error;

            -- Test case 8
            sel_tb <= "111";
            wait for 5 ns;
            assert y_tb = '1'
                report "test case 8 failed"
                severity error;

            wait;

        end process;
    end behav;
            
