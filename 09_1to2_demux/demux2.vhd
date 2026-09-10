library ieee;
use ieee.std_logic_1164.all;

entity demux2 is
    port(
        a : in std_logic_vector(7 downto 0);
        sel : in std_logic;
        s0, s1 : out std_logic_vector(7 downto 0)
    );
end entity;

architecture behav of demux2 is
    begin
        with sel select
        s0 <= a when '0',
              (others => '0') when others;
        with sel select
        s1 <= a when '1',
              (others => '0') when others;
    end behav;
