library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity temperature_subtractor is
    Port ( aclk : in STD_LOGIC;
           aresetn : in STD_LOGIC;
           t1_tvalid : in STD_LOGIC;
           t1_tready : out STD_LOGIC;
           t1_tdata : in STD_LOGIC_VECTOR (31 downto 0);
           t2_tvalid : in STD_LOGIC;
           t2_tready : out STD_LOGIC;
           t2_tdata : in STD_LOGIC_VECTOR (31 downto 0);
           tout_tvalid : out STD_LOGIC;
           tout_tready : in STD_LOGIC;
           tout_tdata : out STD_LOGIC_VECTOR (31 downto 0));
end temperature_subtractor;

architecture Structural of temperature_subtractor is

COMPONENT fp_subtractor
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_a_tvalid : IN STD_LOGIC;
    s_axis_a_tready : OUT STD_LOGIC;
    s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_b_tvalid : IN STD_LOGIC;
    s_axis_b_tready : OUT STD_LOGIC;
    s_axis_b_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_result_tvalid : OUT STD_LOGIC;
    m_axis_result_tready : IN STD_LOGIC;
    m_axis_result_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

COMPONENT fp_abs is
  Port ( 
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

END COMPONENT;

COMPONENT fp_sqrt is
  Port ( 
    aclk : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

END COMPONENT;

COMPONENT fifo32x64
  PORT (
    s_axis_aresetn : IN STD_LOGIC;
    s_axis_aclk : IN STD_LOGIC;
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

signal temp1_tdata, temp2_tdata, temp3_tdata, temp4_tdata, dif_tdata, abs_tdata, sqrt_tdata : STD_LOGIC_VECTOR (31 downto 0);
signal temp1_tready, temp2_tready, temp3_tready, temp4_tready, dif_tready, abs_tready, sqrt_tready : STD_LOGIC;
signal temp1_tvalid, temp2_tvalid, temp3_tvalid, temp4_tvalid, dif_tvalid, abs_tvalid, sqrt_tvalid: STD_LOGIC;

signal temp1_data_count, temp2_data_count, dif_data_count : STD_LOGIC_VECTOR (31 downto 0);
signal temp1_wr_data_count, temp2_wr_data_count, dif_wr_data_count : STD_LOGIC_VECTOR (31 downto 0);
signal temp1_rd_data_count, temp2_rd_data_count, dif_rd_data_count : STD_LOGIC_VECTOR (31 downto 0);

begin

    fifo_in_t1 : fifo32x64 port map (
        s_axis_aresetn => aresetn,
        s_axis_aclk => aclk,
        s_axis_tvalid => t1_tvalid,
        s_axis_tready => t1_tready,
        s_axis_tdata => t1_tdata,
        m_axis_tvalid => temp1_tvalid,
        m_axis_tready => temp1_tready,
        m_axis_tdata => temp1_tdata
    );
    
    fifo_in_t2 : fifo32x64 port map (
        s_axis_aresetn => aresetn,
        s_axis_aclk => aclk,
        s_axis_tvalid => t2_tvalid,
        s_axis_tready => t2_tready,
        s_axis_tdata => t2_tdata,
        m_axis_tvalid => temp2_tvalid,
        m_axis_tready => temp2_tready,
        m_axis_tdata => temp2_tdata
    );
    
    sub : fp_subtractor port map (
        aclk => aclk,
        s_axis_a_tvalid => temp1_tvalid,
        s_axis_a_tready => temp1_tready,
        s_axis_a_tdata => temp1_tdata,
        s_axis_b_tvalid => temp2_tvalid,
        s_axis_b_tready => temp2_tready,
        s_axis_b_tdata => temp2_tdata,
        m_axis_result_tvalid => dif_tvalid,
        m_axis_result_tready => dif_tready,
        m_axis_result_tdata => dif_tdata
    );
    
    fifo_in_t3 : fifo32x64 port map (
        s_axis_aresetn => aresetn,
        s_axis_aclk => aclk,
        s_axis_tvalid => dif_tvalid,
        s_axis_tready => dif_tready,
        s_axis_tdata => dif_tdata,
        m_axis_tvalid => temp3_tvalid,
        m_axis_tready => temp3_tready,
        m_axis_tdata => temp3_tdata
    );
    
    modul: fp_abs port map (
        s_axis_a_tvalid => temp3_tvalid,
        s_axis_a_tready => temp3_tready,
        s_axis_a_tdata => temp3_tdata,
        m_axis_result_tvalid => abs_tvalid,
        m_axis_result_tready => abs_tready,
        m_axis_result_tdata => abs_tdata
    );
    
    fifo_in_t4 : fifo32x64 port map (
        s_axis_aresetn => aresetn,
        s_axis_aclk => aclk,
        s_axis_tvalid => abs_tvalid,
        s_axis_tready => abs_tready,
        s_axis_tdata => abs_tdata,
        m_axis_tvalid => temp4_tvalid,
        m_axis_tready => temp4_tready,
        m_axis_tdata => temp4_tdata
    );
    
     radical: fp_sqrt port map (
        aclk => aclk,
        s_axis_a_tvalid => temp4_tvalid,
        s_axis_a_tready => temp4_tready,
        s_axis_a_tdata => temp4_tdata,
        m_axis_result_tvalid => sqrt_tvalid,
        m_axis_result_tready => sqrt_tready,
        m_axis_result_tdata => sqrt_tdata
    );

    fifo_out : fifo32x64 port map (
        s_axis_aresetn => aresetn,
        s_axis_aclk => aclk,
        s_axis_tvalid => sqrt_tvalid,
        s_axis_tready => sqrt_tready,
        s_axis_tdata => sqrt_tdata,
        m_axis_tvalid => tout_tvalid,
        m_axis_tready => tout_tready,
        m_axis_tdata => tout_tdata
    );

end Structural;
