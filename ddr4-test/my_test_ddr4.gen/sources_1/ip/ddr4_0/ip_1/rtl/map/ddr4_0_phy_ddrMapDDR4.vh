
,.phy2clb_rd_dq0 (
    { 
        mcal_nc[0],
        mcal_nc[1],
        mcal_DMIn_n[15:8],
        mcal_DMIn_n[7:0] 
    } 
)
,.phy2clb_rd_dq1 (
    { 
        mcal_nc[2],
        mcal_nc[3],
        mcal_nc[4],
        mcal_nc[5] 
    } 
)
,.phy2clb_rd_dq10 (
    { 
        mcal_nc[26],
        mcal_nc[27],
        mcal_DQIn[119:112],
        mcal_DQIn[55:48] 
    } 
)
,.phy2clb_rd_dq11 (
    { 
        mcal_nc[28],
        mcal_nc[29],
        mcal_DQIn[127:120],
        mcal_DQIn[63:56] 
    } 
)
,.phy2clb_rd_dq12 (
    { 
        mcal_nc[30],
        mcal_nc[31],
        mcal_nc[32],
        mcal_nc[33] 
    } 
)
,.phy2clb_rd_dq2 (
    { 
        mcal_nc[6],
        mcal_nc[7],
        mcal_DQIn[71:64],
        mcal_DQIn[7:0] 
    } 
)
,.phy2clb_rd_dq3 (
    { 
        mcal_nc[8],
        mcal_nc[9],
        mcal_DQIn[79:72],
        mcal_DQIn[15:8] 
    } 
)
,.phy2clb_rd_dq4 (
    { 
        mcal_nc[10],
        mcal_nc[11],
        mcal_DQIn[87:80],
        mcal_DQIn[23:16] 
    } 
)
,.phy2clb_rd_dq5 (
    { 
        mcal_nc[12],
        mcal_nc[13],
        mcal_DQIn[95:88],
        mcal_DQIn[31:24] 
    } 
)
,.phy2clb_rd_dq6 (
    { 
        mcal_nc[14],
        mcal_nc[15],
        mcal_nc[16],
        mcal_nc[17] 
    } 
)
,.phy2clb_rd_dq7 (
    { 
        mcal_nc[18],
        mcal_nc[19],
        mcal_nc[20],
        mcal_nc[21] 
    } 
)
,.phy2clb_rd_dq8 (
    { 
        mcal_nc[22],
        mcal_nc[23],
        mcal_DQIn[103:96],
        mcal_DQIn[39:32] 
    } 
)
,.phy2clb_rd_dq9 (
    { 
        mcal_nc[24],
        mcal_nc[25],
        mcal_DQIn[111:104],
        mcal_DQIn[47:40] 
    } 
)
,.clb2phy_wr_dq0 (
    { 
        mcal_ADR[79:72],
        8'bx,
        mcal_DMOut_n[15:8],
        mcal_DMOut_n[7:0] 
    } 
)
,.clb2phy_wr_dq1 (
    { 
        mcal_ADR[87:80],
        8'bx,
        mcal_ACT_n,
        mcal_ODT[7:0] 
    } 
)
,.clb2phy_wr_dq10 (
    { 
        mcal_BG[7:0],
        mcal_ADR[55:48],
        mcal_DQOut[119:112],
        mcal_DQOut[55:48] 
    } 
)
,.clb2phy_wr_dq11 (
    { 
        mcal_CS_n[7:0],
        mcal_ADR[63:56],
        mcal_DQOut[127:120],
        mcal_DQOut[63:56] 
    } 
)
,.clb2phy_wr_dq12 (
    { 
        mcal_CKE[7:0],
        mcal_ADR[71:64],
        8'bx,
        8'bx 
    } 
)
,.clb2phy_wr_dq2 (
    { 
        mcal_ADR[95:88],
        mcal_ADR[7:0],
        mcal_DQOut[71:64],
        mcal_DQOut[7:0] 
    } 
)
,.clb2phy_wr_dq3 (
    { 
        mcal_ADR[103:96],
        mcal_ADR[15:8],
        mcal_DQOut[79:72],
        mcal_DQOut[15:8] 
    } 
)
,.clb2phy_wr_dq4 (
    { 
        mcal_ADR[111:104],
        mcal_ADR[23:16],
        mcal_DQOut[87:80],
        mcal_DQOut[23:16] 
    } 
)
,.clb2phy_wr_dq5 (
    { 
        mcal_ADR[119:112],
        mcal_ADR[31:24],
        mcal_DQOut[95:88],
        mcal_DQOut[31:24] 
    } 
)
,.clb2phy_wr_dq6 (
    { 
        mcal_ADR[127:120],
        mcal_CK_t[7:0],
        mcal_DQSOut,
        mcal_DQSOut 
    } 
)
,.clb2phy_wr_dq7 (
    { 
        mcal_ADR[135:128],
        mcal_CK_c[7:0],
        8'bx,
        8'bx 
    } 
)
,.clb2phy_wr_dq8 (
    { 
        mcal_BA[7:0],
        mcal_ADR[39:32],
        mcal_DQOut[103:96],
        mcal_DQOut[39:32] 
    } 
)
,.clb2phy_wr_dq9 (
    { 
        mcal_BA[15:8],
        mcal_ADR[47:40],
        mcal_DQOut[111:104],
        mcal_DQOut[47:40] 
    } 
)
,.clb2phy_fifo_rden (
    { 
        13'bx,
        13'bx,
        mcal_clb2phy_fifo_rden[25:13],
        mcal_clb2phy_fifo_rden[12:0] 
    } 
)
,.clb2phy_odt_low (
    { 
        7'bx,
        7'bx,
        mcal_clb2phy_odt_low[13:7],
        mcal_clb2phy_odt_low[6:0] 
    } 
)
,.clb2phy_odt_upp (
    { 
        7'bx,
        7'bx,
        mcal_clb2phy_odt_upp[13:7],
        mcal_clb2phy_odt_upp[6:0] 
    } 
)
,.clb2phy_rdcs0_low (
    { 
        4'b0000,
        4'b0000,
        mcal_clb2phy_rdcs0_low[7:4],
        mcal_clb2phy_rdcs0_low[3:0] 
    } 
)
,.clb2phy_rdcs0_upp (
    { 
        4'b0000,
        4'b0000,
        mcal_clb2phy_rdcs0_upp[7:4],
        mcal_clb2phy_rdcs0_upp[3:0] 
    } 
)
,.clb2phy_rdcs1_low (
    { 
        4'b0000,
        4'b0000,
        mcal_clb2phy_rdcs1_low[7:4],
        mcal_clb2phy_rdcs1_low[3:0] 
    } 
)
,.clb2phy_rdcs1_upp (
    { 
        4'b0000,
        4'b0000,
        mcal_clb2phy_rdcs1_upp[7:4],
        mcal_clb2phy_rdcs1_upp[3:0] 
    } 
)
,.clb2phy_rden_low (
    { 
        4'b0000,
        4'b0000,
        mcal_clb2phy_rden_low[7:4],
        mcal_clb2phy_rden_low[3:0] 
    } 
)
,.clb2phy_rden_upp (
    { 
        4'b0000,
        4'b0000,
        mcal_clb2phy_rden_upp[7:4],
        mcal_clb2phy_rden_upp[3:0] 
    } 
)
,.clb2phy_t_b_low (
    { 
        clb2phy_t_b_addr,
        clb2phy_t_b_addr,
        mcal_clb2phy_t_b_low[7:4],
        mcal_clb2phy_t_b_low[3:0] 
    } 
)
,.clb2phy_t_b_upp (
    { 
        clb2phy_t_b_addr,
        clb2phy_t_b_addr,
        mcal_clb2phy_t_b_upp[7:4],
        mcal_clb2phy_t_b_upp[3:0] 
    } 
)
,.clb2phy_wrcs0_low (
    { 
        4'b0000,
        4'b0000,
        mcal_clb2phy_wrcs0_low[7:4],
        mcal_clb2phy_wrcs0_low[3:0] 
    } 
)
,.clb2phy_wrcs0_upp (
    { 
        4'b0000,
        4'b0000,
        mcal_clb2phy_wrcs0_upp[7:4],
        mcal_clb2phy_wrcs0_upp[3:0] 
    } 
)
,.clb2phy_wrcs1_low (
    { 
        4'b0000,
        4'b0000,
        mcal_clb2phy_wrcs1_low[7:4],
        mcal_clb2phy_wrcs1_low[3:0] 
    } 
)
,.clb2phy_wrcs1_upp (
    { 
        4'b0000,
        4'b0000,
        mcal_clb2phy_wrcs1_upp[7:4],
        mcal_clb2phy_wrcs1_upp[3:0] 
    } 
)
,.phy2clb_fifo_empty (
    { 
        phy2clb_fifo_empty_nc[12:0],
        phy2clb_fifo_empty_nc[25:13],
        phy2clb_fifo_empty[25:13],
        phy2clb_fifo_empty[12:0] 
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
        13'b0000000000000,
        13'b0000000000000,
        13'b0111100111100,
        13'b0111100111100 
    } 
)
