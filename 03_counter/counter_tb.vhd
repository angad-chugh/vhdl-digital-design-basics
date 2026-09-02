library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_tb is
end entity;

architecture behav of counter_tb is

    component counter is 
        generic (
        N : integer := 4
    );
    port (
        clk   : in  std_logic;
        reset : in  std_logic;
        q     : out std_logic_vector(N-1 downto 0)
    );
    end component;

    constant N_tb : integer := 4;

    signal tb_clk : std_logic := '0';
    signal tb_reset : std_logic := '1';
    signal tb_q : std_logic_vector(N_tb-1 downto 0);

begin

    uut : counter
        generic map(
            N => N_tb
        )
        port map(
            clk => tb_clk,
            reset => tb_reset,
            q => tb_q
        );
    
    tb_clk <= not tb_clk after 5 ns;
    tb_reset <= '1',
                '0' after 12 ns;
end behav;

    

