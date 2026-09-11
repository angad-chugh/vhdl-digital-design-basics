library ieee;
use ieee.std_logic_1164.all;

entity decoder_2to4 is
    port(
        a : in std_logic_vector(1 downto 0);
        y : out std_logic_vector(3 downto 0)
    );
end entity;

architecture behav of decoder_2to4 is
    begin
        with a select
            y <= "0001" when "00",
                 "0010" when "01",
                 "0100" when "10",
                 "1000" when "11",
                 "0000" when others;
    end architecture;
         
