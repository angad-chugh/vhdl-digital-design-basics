library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is 
    generic (
        N : integer := 4
    );
    port (
        clk : in std_logic;
        reset : in std_logic;
        q : out std_logic_vector(N-1 downto 0)
    );
end counter;

architecture Behav of counter is 

    signal count : unsigned(N-1 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then 
                count <= (others => '0');
            else
                count <= count + 1;
            end if;
        end if;
    end process;

    q <= std_logic_vector(count);

end Behav;
