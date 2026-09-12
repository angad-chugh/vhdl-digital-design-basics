library ieee;
use ieee.std_logic_1164.all;

entity seven_seg_tb is
end entity;

architecture behav of seven_seg_tb is

    component seven_seg
        port(
            digit : in std_logic_vector(3 downto 0);
            seg : out std_logic_vector(6 downto 0)
        );
    end component;

    signal digit_tb : std_logic_vector(3 downto 0) := (others => '0');
    signal seg_tb : std_logic_vector(6 downto 0) := (others => '0');

    begin

        uut : seven_seg port map(
            digit => digit_tb,
            seg => seg_tb
        );

        stimulus : process
        begin
            
            -- Test case 1 
            digit_tb <= "0000";
            wait for 10 ns;
            assert seg_tb = "1111110"
                report ("test case 1 failed")
                severity error;
            
            -- Test case 2
            digit_tb <= "0001";
            wait for 10 ns;
            assert seg_tb = "0110000"
                report ("test case 2 failed")
                severity error;

            -- Test case 3
            digit_tb <= "0010";
            wait for 10 ns;
            assert seg_tb = "1101101"
                report ("test case 3 failed")
                severity error;
            
            -- Test case 4
            digit_tb <= "0011";
            wait for 10 ns;
            assert seg_tb = "1111001"
                report ("test case 4 failed")
                severity error;

            -- Test case 5
            digit_tb <= "0100";
            wait for 10 ns;
            assert seg_tb = "0110011"
                report ("test case 5 failed")
                severity error;

            -- Test case 6
            digit_tb <= "0101";
            wait for 10 ns;
            assert seg_tb = "1011011"
                report ("test case 6 failed")
                severity error;

            -- Test case 7
            digit_tb <= "0110";
            wait for 10 ns;
            assert seg_tb = "1011111"
                report ("test case 7 failed")
                severity error;

            -- Test case 8
            digit_tb <= "0111";
            wait for 10 ns;
            assert seg_tb = "1110000"
                report ("test case 8 failed")
                severity error;

            -- Test case 9
            digit_tb <= "1000";
            wait for 10 ns;
            assert seg_tb = "1111111"
                report ("test case 9 failed")
                severity error;

            -- Test case 10
            digit_tb <= "1001";
            wait for 10 ns;
            assert seg_tb = "1110011"
                report ("test case 10 failed")
                severity error;

            -- Test case 11
            digit_tb <= "1010";
            wait for 10 ns;
            assert seg_tb = "0000000"
                report ("test case 11 failed")
                severity error;

            wait;

        end process;
    end architecture;    