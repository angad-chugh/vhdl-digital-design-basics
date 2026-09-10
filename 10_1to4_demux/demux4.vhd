library ieee;
use ieee.std_logic_1164.all;

entity demux4 is 
    port(
        a : in std_logic_vector(1 downto 0);
        s0, s1, s2, s3 : out std_logic_vector(1 downto 0);
        sel : in std_logic_vector(1 downto 0)
    );
end entity;

architecture behav of demux4 is
    begin
        with sel select
            s0 <= a when "00",
                  (others => '0') when others;
        with sel select
            s1 <= a when "01",
                  (others => '0') when others;
        with sel select
            s2 <= a when "10",
                  (others => '0') when others;
        with sel select
            s3 <= a when "11",
                  (others => '0') when others;
    end architecture;