library ieee;
use ieee.std_logic_1164.all;

entity mux4_tb is
end entity;

architecture sim of mux4_tb is 

    component mux4 is
        port (
            d0 : in std_logic;
            d1 : in std_logic;
            d2 : in std_logic;
            d3 : in std_logic;
            sel : in std_logic_vector(1 downto 0);
            y : out std_logic
        );
    end component;

    signal tb_d0 : std_logic := '0';
    signal tb_d1 : std_logic := '0';
    signal tb_d2 : std_logic := '0';
    signal tb_d3 : std_logic := '0';
    signal tb_sel : std_logic_vector(1 downto 0) := "00";
    signal tb_y :std_logic;
    signal tb_end : std_logic := '0';

    begin

        dut : mux4
        port map(
            d0 => tb_d0,
            d1 => tb_d1,
            d2 => tb_d2,
            d3 => tb_d3,
            sel => tb_sel,
            y => tb_y);
            
        tb_d0 <= '0', '1' after 9 ns;
        tb_d1 <= '0';
        tb_d2 <= '0', '1' after 29 ns;
        tb_d3 <= '0';
        tb_sel <= "00", "01" after 10 ns, "10" after 20 ns, "11" after 30 ns;
        tb_end <= '1' after 40 ns;
end sim;

        
