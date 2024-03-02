library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CacheRam_TB is
end CacheRam_TB;

architecture tb_arch of CacheRam_TB is
    signal clk: std_logic := '0';
    signal reset_n: std_logic := '0';
    signal read_op, write_op: std_logic;
    signal addr: std_logic_vector(9 downto 0) := (others => '0');
    signal wrdata, rddata: std_logic_vector(31 downto 0) := (others => '0');
    signal hit: std_logic;

    constant CLOCK_PERIOD: time := 10 ns; -- Adjust this based on your design

    component CacheRamTL is
        port (
            reset_n, clk, read, write: in STD_LOGIC;
            addr: in STD_LOGIC_VECTOR(9 downto 0);
            wrdata: in STD_LOGIC_VECTOR(31 downto 0);
            rddata: out STD_LOGIC_VECTOR(31 downto 0);
            hit: out STD_LOGIC
        );
    end component;

begin
    -- Instantiate the DUT (Device Under Test)
    DUT: CacheRamTL port map (reset_n, clk, read_op, write_op, addr, wrdata, rddata, hit);

    -- Clock process
    process
    begin
        while now < 1000 ns loop
            clk <= not clk;
            wait for CLOCK_PERIOD / 2;
        end loop;
        wait;
    end process;

    -- Stimulus process
    process
    begin
        reset_n <= '0';
        wait for 10 ns;
        reset_n <= '1';

        -- Test Case 1: Read operation
        wait for CLOCK_PERIOD;
        read_op <= '1';
        addr <= "0000000000";
        wait for CLOCK_PERIOD;
        read_op <= '0';

        -- Test Case 2: Write operation
        wait for CLOCK_PERIOD;
        write_op <= '1';
        wrdata <= "11110000111100001111000011110000";
        addr <= "0000000001";
        wait for CLOCK_PERIOD;
        write_op <= '0';

        -- Test Case 3: Read after Write
        wait for CLOCK_PERIOD;
        read_op <= '1';
        addr <= "0000000001";
        wait for CLOCK_PERIOD;
        read_op <= '0';

        -- Add more test cases as needed

        wait;
    end process;

end tb_arch;
