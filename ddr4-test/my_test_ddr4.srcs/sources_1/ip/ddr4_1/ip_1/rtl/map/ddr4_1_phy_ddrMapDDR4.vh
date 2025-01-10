
,.phy2clb_rd_dq0 (
    { 
        mcal_DMIn_n[7:0],
        mcal_nc[0],
        mcal_nc[1],
        mcal_nc[2] 
    } 
)
,.phy2clb_rd_dq1 (
    { 
        mcal_nc[3],
        mcal_nc[4],
        mcal_nc[5],
        mcal_nc[6] 
    } 
)
,.phy2clb_rd_dq10 (
    { 
        mcal_DQIn[55:48],
        mcal_nc[33],
        mcal_nc[34],
        mcal_nc[35] 
    } 
)
,.phy2clb_rd_dq11 (
    { 
        mcal_DQIn[63:56],
        mcal_nc[36],
        mcal_nc[37],
        mcal_nc[38] 
    } 
)
,.phy2clb_rd_dq12 (
    { 
        mcal_nc[39],
        mcal_nc[40],
        mcal_nc[41],
        mcal_nc[42] 
    } 
)
,.phy2clb_rd_dq2 (
    { 
        mcal_DQIn[7:0],
        mcal_nc[7],
        mcal_nc[8],
        mcal_nc[9] 
    } 
)
,.phy2clb_rd_dq3 (
    { 
        mcal_DQIn[15:8],
        mcal_nc[10],
        mcal_nc[11],
        mcal_nc[12] 
    } 
)
,.phy2clb_rd_dq4 (
    { 
        mcal_DQIn[23:16],
        mcal_nc[13],
        mcal_nc[14],
        mcal_nc[15] 
    } 
)
,.phy2clb_rd_dq5 (
    { 
        mcal_DQIn[31:24],
        mcal_nc[16],
        mcal_nc[17],
        mcal_nc[18] 
    } 
)
,.phy2clb_rd_dq6 (
    { 
        mcal_nc[19],
        mcal_nc[20],
        mcal_nc[21],
        mcal_nc[22] 
    } 
)
,.phy2clb_rd_dq7 (
    { 
        mcal_nc[23],
        mcal_nc[24],
        mcal_nc[25],
        mcal_nc[26] 
    } 
)
,.phy2clb_rd_dq8 (
    { 
        mcal_DQIn[39:32],
        mcal_nc[27],
        mcal_nc[28],
        mcal_nc[29] 
    } 
)
,.phy2clb_rd_dq9 (
    { 
        mcal_DQIn[47:40],
        mcal_nc[30],
        mcal_nc[31],
        mcal_nc[32] 
    } 
)
,.clb2phy_wr_dq0 (
    { 
        mcal_DMOut_n[7:0],
        mcal_CS_n[7:0],
        mcal_ADR[87:80],
        mcal_ADR[7:0] 
    } 
)
,.clb2phy_wr_dq1 (
    { 
        8'bx,
        mcal_CKE[7:0],
        mcal_ADR[95:88],
        mcal_ADR[15:8] 
    } 
)
,.clb2phy_wr_dq10 (
    { 
        mcal_DQOut[55:48],
        8'bx,
        mcal_BA[15:8],
        mcal_ADR[71:64] 
    } 
)
,.clb2phy_wr_dq11 (
    { 
        mcal_DQOut[63:56],
        8'bx,
        mcal_BG[7:0],
        mcal_ADR[79:72] 
    } 
)
,.clb2phy_wr_dq12 (
    { 
        8'bx,
        8'bx,
        mcal_BG[15:8],
        8'bx 
    } 
)
,.clb2phy_wr_dq2 (
    { 
        mcal_DQOut[7:0],
        mcal_ODT[7:0],
        mcal_ADR[103:96],
        mcal_ADR[23:16] 
    } 
)
,.clb2phy_wr_dq3 (
    { 
        mcal_DQOut[15:8],
        mcal_ACT_n,
        mcal_ADR[111:104],
        mcal_ADR[31:24] 
    } 
)
,.clb2phy_wr_dq4 (
    { 
        mcal_DQOut[23:16],
        8'bx,
        mcal_ADR[119:112],
        mcal_ADR[39:32] 
    } 
)
,.clb2phy_wr_dq5 (
    { 
        mcal_DQOut[31:24],
        8'bx,
        mcal_ADR[127:120],
        mcal_ADR[47:40] 
    } 
)
,.clb2phy_wr_dq6 (
    { 
        mcal_DQSOut,
        8'bx,
        mcal_ADR[135:128],
        mcal_CK_t[7:0] 
    } 
)
,.clb2phy_wr_dq7 (
    { 
        8'bx,
        8'bx,
        mcal_BA[7:0],
        mcal_CK_c[7:0] 
    } 
)
,.clb2phy_wr_dq8 (
    { 
        mcal_DQOut[39:32],
        8'bx,
        8'bx,
        mcal_ADR[55:48] 
    } 
)
,.clb2phy_wr_dq9 (
    { 
        mcal_DQOut[47:40],
        8'bx,
        8'bx,
        mcal_ADR[63:56] 
    } 
)
,.clb2phy_fifo_rden (
    { 
        mcal_clb2phy_fifo_rden[12:0],
        13'bx,
        13'bx,
        13'bx 
    } 
)
,.clb2phy_odt_low (
    { 
        mcal_clb2phy_odt_low[6:0],
        7'bx,
        7'bx,
        7'bx 
    } 
)
,.clb2phy_odt_upp (
    { 
        mcal_clb2phy_odt_upp[6:0],
        7'bx,
        7'bx,
        7'bx 
    } 
)
,.clb2phy_rdcs0_low (
    { 
        mcal_clb2phy_rdcs0_low[3:0],
        4'b0000,
        4'b0000,
        4'b0000 
    } 
)
,.clb2phy_rdcs0_upp (
    { 
        mcal_clb2phy_rdcs0_upp[3:0],
        4'b0000,
        4'b0000,
        4'b0000 
    } 
)
,.clb2phy_rdcs1_low (
    { 
        mcal_clb2phy_rdcs1_low[3:0],
        4'b0000,
        4'b0000,
        4'b0000 
    } 
)
,.clb2phy_rdcs1_upp (
    { 
        mcal_clb2phy_rdcs1_upp[3:0],
        4'b0000,
        4'b0000,
        4'b0000 
    } 
)
,.clb2phy_rden_low (
    { 
        mcal_clb2phy_rden_low[3:0],
        4'b0000,
        4'b0000,
        4'b0000 
    } 
)
,.clb2phy_rden_upp (
    { 
        mcal_clb2phy_rden_upp[3:0],
        4'b0000,
        4'b0000,
        4'b0000 
    } 
)
,.clb2phy_t_b_low (
    { 
        mcal_clb2phy_t_b_low[3:0],
        clb2phy_t_b_addr,
        clb2phy_t_b_addr,
        clb2phy_t_b_addr 
    } 
)
,.clb2phy_t_b_upp (
    { 
        mcal_clb2phy_t_b_upp[3:0],
        clb2phy_t_b_addr,
        clb2phy_t_b_addr,
        clb2phy_t_b_addr 
    } 
)
,.clb2phy_wrcs0_low (
    { 
        mcal_clb2phy_wrcs0_low[3:0],
        4'b0000,
        4'b0000,
        4'b0000 
    } 
)
,.clb2phy_wrcs0_upp (
    { 
        mcal_clb2phy_wrcs0_upp[3:0],
        4'b0000,
        4'b0000,
        4'b0000 
    } 
)
,.clb2phy_wrcs1_low (
    { 
        mcal_clb2phy_wrcs1_low[3:0],
        4'b0000,
        4'b0000,
        4'b0000 
    } 
)
,.clb2phy_wrcs1_upp (
    { 
        mcal_clb2phy_wrcs1_upp[3:0],
        4'b0000,
        4'b0000,
        4'b0000 
    } 
)
,.phy2clb_fifo_empty (
    { 
        phy2clb_fifo_empty[12:0],
        phy2clb_fifo_empty_nc[12:0],
        phy2clb_fifo_empty_nc[25:13],
        phy2clb_fifo_empty_nc[38:26] 
    } 
)
,.pll_clk0 (
    { 
        pll_clk[0],
        pll_clk[0],
        pll_clk[0],
        pll_clk[0] 
    } 
)
,.pll_clk1 (
    { 
        pll_clk[0],
        pll_clk[0],
        pll_clk[0],
        pll_clk[0] 
    } 
)
,.clb2phy_t_txbit (
    { 
        13'b0111100111100,
        13'b0000000000000,
        13'b0000000000000,
        13'b0000000000000 
    } 
)
