library ieee;
use ieee.std_logic_1164.all;

entity demux4_tb is
end entity;

architecture behav of demux4_tb is

    component demux4
        port(
            a : in std_logic_vector(1 downto 0);
            s0, s1, s2, s3 : out std_logic_vector(1 downto 0);
            sel : in std_logic_vector(1 downto 0)
        );
    end component;

    signal a_tb, s0_tb, s1_tb, s2_tb, s3_tb, sel_tb : std_logic_vector(1 downto 0) := "00";

    begin

        uut : demux4 port map(
            a => a_tb,
            s0 => s0_tb,
            s1 => s1_tb,
            s2 => s2_tb,
            s3 => s3_tb,
            sel => sel_tb
        );

        stimulus : process
        begin

            -- Test case 1
            a_tb <= "10";
            sel_tb <= "00";
            wait for 10 ns;
            assert (s0_tb = "10") and (s1_tb = "00") and (s2_tb = "00") and (s3_tb = "00")
                report "Test case 1 failed"
                severity error;

            -- Test case 2
            sel_tb <= "01";
            wait for 10 ns;
            assert (s0_tb = "00") and (s1_tb = "10") and (s2_tb = "00") and (s3_tb = "00")
                report "Test case 2 failed"
                severity error;

            -- Test case 3
            sel_tb <= "10";
            wait for 10 ns;
            assert (s0_tb = "00") and (s1_tb = "00") and (s2_tb = "10") and (s3_tb = "00")
                report "Test case 3 failed"
                severity error;

            -- Test case 4
            sel_tb <= "11";
            wait for 10 ns;
            assert (s0_tb = "00") and (s1_tb = "00") and (s2_tb = "00") and (s3_tb = "10")
                report "Test case 4 failed"
                severity error;
            
            wait;

        end process;
    end architecture;