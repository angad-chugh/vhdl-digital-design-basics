library ieee;
use ieee.std_logic_1164.all;

entity priority_8to3 is
    port(
        a : in std_logic_vector(7 downto 0);
        y : out std_logic_vector(2 downto 0)
    );
end entity;

architecture behav of priority_8to3 is
    begin
        process(a)
        begin
            if a(7) = '1' then
                y <= "111";
            elsif a(6) = '1' then
                y <= "110";
            elsif a(5) = '1' then
                y <= "101";
            elsif a(4) = '1' then 
                y <= "100";
            elsif a(3) = '1' then 
                y <= "011";
            elsif a(2) = '1' then 
                y <= "010";
            elsif a(1) = '1' then 
                y <= "001";
            else
                y <= "000";
            end if;

          
        end process;
end architecture;
