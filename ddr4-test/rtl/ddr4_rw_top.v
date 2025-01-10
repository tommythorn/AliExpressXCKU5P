module ddr4_rw_top(
    output                             c0_ddr4_act_n   ,
	output [16:0]                      c0_ddr4_adr     ,
	output [1:0]                       c0_ddr4_ba      ,
	output [0:0]                       c0_ddr4_bg      ,
	output [0:0]                       c0_ddr4_cke     ,
	output [0:0]                       c0_ddr4_odt     ,
	output [0:0]                       c0_ddr4_cs_n    ,
	output [0:0]                       c0_ddr4_ck_t    ,
	output [0:0]                       c0_ddr4_ck_c    ,
	output                             c0_ddr4_reset_n ,
	inout  [1:0]                       c0_ddr4_dm_dbi_n,
	inout  [15:0]                      c0_ddr4_dq      ,
	inout  [1:0]                       c0_ddr4_dqs_c   ,
	inout  [1:0]                       c0_ddr4_dqs_t   ,               
	input                              c0_sys_clk_p    ,            // input wire c0_sys_clk_p
    input                              c0_sys_clk_n    ,           // input wire c0_sys_clk_n
    output                              led0           ,
// user io
   output          led1,
   output          led2,
   output          led3,
   output          led4,
   output          led5,
   output          led6,
   output          led7,
   output          led8,
   output          led9,
   
   output          led10,
   output          led11,
   output          led12,
   output          led13,
   output          led14,
   output          led15,
   output          led16,
   output          led17,
   output          led18,
   output          led19,
   
   output          led20,
   output          led21,
   output          led22,
   output          led23,
   output          led24,
   output          led25,
   output          led26,
   output          led27,
   output          led28,
   output          led29,
   
   output          led30,
   output          led31,
   output          led32,
   output          led33,
   output          led34,
   output          led35,
   output          led36,
   output          led37,
   output          led38,
   output          led39,

   output          led41,
   output          led42,
   output          led43,
   output          led44,
   output          led45,
   output          led46,
   output          led47,
   output          led48,
   output          led49,

   output          led50,
   output          led51,
   output          led52,
   output          led53,
   output          led54,
   output          led55,
   output          led56,
   output          led57,
   output          led58,
   output          led59,

   output          led60,
   output          led61,
   output          led62,
   output          led63,
   output          led64,
   output          led65,
   output          led66,
   output          led67,
   output          led68,
   output          led69,

   output          led70,
   output          led71,
   output          led72,
   output          led73,
   output          led74,
   output          led75,
   output          led76,
   output          led77,
   output          led78,
   output          led79,

   output          led80,
   output          led81,
   output          led82,
   output          led83,
   output          led84,
   output          led85,
   output          led86,
   output          led87,
   output          led88,
   output          led89,

   output          led90,
   output          led91,
   output          led92,
   output          led93,
   output          led94,
   output          led95,
   output          led96,
   output          led97,
   output          led98,
   output          led99,

   output          led100,
   output          led101,
   output          led102,
   output          led103,
   output          led104,
   output          led105,
   output          led106,
   output          led107,
   output          led108,
   output          led109,

   output          led110,
   output          led111,
   output          led112,
   output          led113,
   output          led114,
   output          led115,
   output          led116,
   output          led117,
   output          led118,
   output          led119,
   
   output          led120,
   output          led121,
   output          led122,
   output          led123,
   output          led124,
   output          led125,
   output          led126,
   output          led127,
   output          led128,
   output          led129,
   
   output          led130,
   output          led131,
   output          led132,
   output          led133,
   output          led134,
   output          led135,
   output          led136,
   output          led137,
   output          led138,
   output          led139,

   output          led140,
   output          led141,
   output          led142,
   output          led143,
   output          led144,
   output          led145,
   output          led146,
   output          led147,
   output          led148,
   output          led149,
   
   output          led150,
   output          led151,
   output          led152,
   output          led153,
   output          led154,
   output          led155,
   output          led156,
   output          led157,
   output          led158,
   output          led159,
   
   output          led160,
   output          led161,
   output          led162,
   output          led163,
   output          led164,
   output          led165,
   output          led166,
   output          led167,
   output          led168,
   output          led169,

   output          led170,
   output          led171,
   output          led172,
   output          led173,
   output          led174,
   output          led175,
   output          led176,
   output          led177,
   output          led178,
   output          led179
    );                

wire error_flag                    ;
wire c0_ddr4_ui_clk                ;
wire c0_ddr4_ui_clk_sync_rst       ;
wire c0_ddr4_app_en                ;
wire c0_ddr4_app_hi_pri            ;
wire c0_ddr4_app_wdf_end           ;
wire c0_ddr4_app_wdf_wren          ;
wire c0_ddr4_app_rd_data_end       ; 
wire c0_ddr4_app_rd_data_valid     ; 
wire c0_ddr4_app_rdy               ; 
wire c0_ddr4_app_wdf_rdy           ; 
wire [27 : 0] c0_ddr4_app_addr     ;
wire [2 : 0] c0_ddr4_app_cmd       ;
wire [127 : 0] c0_ddr4_app_wdf_data;
wire [15 : 0] c0_ddr4_app_wdf_mask ;
wire [127 : 0] c0_ddr4_app_rd_data ;

wire                  locked;              //锁相环频率稳定标志
wire                  clk_ref_i;           //DDR3参考时钟
wire                  clk_200;             //200M时钟
wire                  ui_clk_sync_rst;     //用户复位信号
wire                  init_calib_complete; //校准完成信号
wire [20:0]           rd_cnt;              //实际读地址计数
wire [1 :0]           state;                //状态计数器
wire [23:0]           rd_addr_cnt;         //用户读地址计数器
wire [23:0]           wr_addr_cnt;         //用户写地址计数器

//读写模块
 ddr4_rw u_ddr4_rw(
    .ui_clk               (c0_ddr4_ui_clk),                
    .ui_clk_sync_rst      (c0_ddr4_ui_clk_sync_rst),       
    .init_calib_complete  (c0_init_calib_complete),
    .app_rdy              (c0_ddr4_app_rdy),
    .app_wdf_rdy          (c0_ddr4_app_wdf_rdy),
    .app_rd_data_valid    (c0_ddr4_app_rd_data_valid),
    .app_rd_data          (c0_ddr4_app_rd_data),
    
    .app_addr             (c0_ddr4_app_addr),
    .app_en               (c0_ddr4_app_en),
    .app_wdf_wren         (c0_ddr4_app_wdf_wren),
    .app_wdf_end          (c0_ddr4_app_wdf_end),
    .app_cmd              (c0_ddr4_app_cmd),
    .app_wdf_data         (c0_ddr4_app_wdf_data),
    .state                (state),
    .rd_addr_cnt          (rd_addr_cnt),
    .wr_addr_cnt          (wr_addr_cnt),
    .rd_cnt               (rd_cnt),
    
    .error_flag           (error_flag),
    .led0                  (led0),
    
    .led1                  (led1),
    .led2                  (led2),
    .led3                  (led3),
    .led4                  (led4),
    .led5                  (led5),
    .led6                  (led6),
    .led7                  (led7),
    .led8                  (led8),
    .led9                  (led9),
    
    .led10                 (led10),
    .led11                 (led11),
    .led12                 (led12),
    .led13                 (led13),
    .led14                 (led14),
    .led15                 (led15),
    .led16                 (led16),
    .led17                 (led17),
    .led18                 (led18),
    .led19                 (led19),
    
    .led20                 (led20),
    .led21                 (led21),
    .led22                 (led22),
    .led23                 (led23),
    .led24                 (led24),
    .led25                 (led25),
    .led26                 (led26),
    .led27                 (led27),
    .led28                 (led28),
    .led29                 (led29),
    
    .led30                 (led30), 
    .led31                 (led31),
    .led32                 (led32),
    .led33                 (led33),
    .led34                 (led34),
    .led35                 (led35),
    .led36                 (led36),
    .led37                 (led37),
    .led38                 (led38),
    .led39                 (led39),
    
    .led41                 (led41),
    .led42                 (led42),
    .led43                 (led43),
    .led44                 (led44),
    .led45                 (led45),
    .led46                 (led46),
    .led47                 (led47),
    .led48                 (led48),
    .led49                 (led49),
    
    .led50                 (led50),
    .led51                 (led51),
    .led52                 (led52),
    .led53                 (led53),
    .led54                 (led54),
    .led55                 (led55),
    .led56                 (led56),
    .led57                 (led57),
    .led58                 (led58),
    .led59                 (led59),
    
    .led60                 (led60),
    .led61                 (led61),
    .led62                 (led62),
    .led63                 (led63),
    .led64                 (led64),
    .led65                 (led65),
    .led66                 (led66),
    .led67                 (led67),
    .led68                 (led68),
    .led69                 (led69),
    
    .led70                 (led70),
    .led71                 (led71),
    .led72                 (led72),
    .led73                 (led73),
    .led74                 (led74),
    .led75                 (led75),
    .led76                 (led76),
    .led77                 (led77),
    .led78                 (led78),
    .led79                 (led79),
    
    .led80                 (led80),
    .led81                 (led81),
    .led82                 (led82),
    .led83                 (led83),
    .led84                 (led84),
    .led85                 (led85),
    .led86                 (led86),
    .led87                 (led87),
    .led88                 (led88),
    .led89                 (led89),
    
    .led90                 (led90),
    .led91                 (led91),
    .led92                 (led92),
    .led93                 (led93),
    .led94                 (led94),
    .led95                 (led95),
    .led96                 (led96),
    .led97                 (led97),
    .led98                 (led98),
    .led99                 (led99),
    
    .led100                (led100),
    .led101                (led101),
    .led102                (led102),
    .led103                (led103),
    .led104                (led104),
    .led105                (led105),
    .led106                (led106),
    .led107                (led107),
    .led108                (led108),
    .led109                (led109),
    
    .led110                (led110),
    .led111                (led111),
    .led112                (led112),
    .led113                (led113),
    .led114                (led114),
    .led115                (led115),
    .led116                (led116),
    .led117                (led117),
    .led118                (led118),
    .led119                (led119),
    
    .led120                (led120),
    .led121                (led121),
    .led122                (led122),
    .led123                (led123),
    .led124                (led124),
    .led125                (led125),
    .led126                (led126),
    .led127                (led127),
    .led128                (led128),
    .led129                (led129),
    
    .led130                (led130),
    .led131                (led131),
    .led132                (led132),
    .led133                (led133),
    .led134                (led134),
    .led135                (led135),
    .led136                (led136),
    .led137                (led137),
    .led138                (led138),
    .led139                (led139),
    
    .led140                (led140),
    .led141                (led141),
    .led142                (led142),
    .led143                (led143),
    .led144                (led144),
    .led145                (led145),
    .led146                (led146),
    .led147                (led147),
    .led148                (led148),
    .led149                (led149),
    
    .led150                (led150),
    .led151                (led151),
    .led152                (led152),
    .led153                (led153),
    .led154                (led154),
    .led155                (led155),
    .led156                (led156),
    .led157                (led157),
    .led158                (led158),
    .led159                (led159),
    
    .led160                (led160),
    .led161                (led161),
    .led162                (led162),
    .led163                (led163),
    .led164                (led164),
    .led165                (led165),
    .led166                (led166),
    .led167                (led167),
    .led168                (led168),
    .led169                (led169),
    
    .led170                (led170),
    .led171                (led171),
    .led172                (led172),
    .led173                (led173),
    .led174                (led174),
    .led175                (led175),
    .led176                (led176),
    .led177                (led177),
    .led178                (led178),
    .led179                (led179)
    );
ddr4_0 u_ddr4_0 (
  .c0_init_calib_complete(c0_init_calib_complete),        // 初始化完成信号
  .dbg_clk(),                                             
  .c0_sys_clk_p(c0_sys_clk_p),                            // input wire c0_sys_clk_p
  .c0_sys_clk_n(c0_sys_clk_n),                            // input wire c0_sys_clk_n
  .dbg_bus(),                                           
  .c0_ddr4_adr(c0_ddr4_adr),                              // 行列地址
  .c0_ddr4_ba(c0_ddr4_ba),                                // bank地址
  .c0_ddr4_cke(c0_ddr4_cke),                              // 时钟使能
  .c0_ddr4_cs_n(c0_ddr4_cs_n),                            // 片选信号
  .c0_ddr4_dm_dbi_n(c0_ddr4_dm_dbi_n),                    // 数据掩码
  .c0_ddr4_dq(c0_ddr4_dq),                                // 数据线
  .c0_ddr4_dqs_c(c0_ddr4_dqs_c),                          // inout wire [1 : 0] c0_ddr4_dqs_c
  .c0_ddr4_dqs_t(c0_ddr4_dqs_t),                          // inout wire [1 : 0] c0_ddr4_dqs_t
  .c0_ddr4_odt(c0_ddr4_odt),                              // output wire [0 : 0] c0_ddr4_odt
  .c0_ddr4_bg(c0_ddr4_bg),                                // output wire [0 : 0] c0_ddr4_bg
  .c0_ddr4_reset_n(c0_ddr4_reset_n),                      // output wire c0_ddr4_reset_n
  .c0_ddr4_act_n(c0_ddr4_act_n),                          // output wire c0_ddr4_act_n
  .c0_ddr4_ck_c(c0_ddr4_ck_c),                            // output wire [0 : 0] c0_ddr4_ck_c
  .c0_ddr4_ck_t(c0_ddr4_ck_t),                            // output wire [0 : 0] c0_ddr4_ck_t
  //user interface
  .c0_ddr4_ui_clk(c0_ddr4_ui_clk),                        // output wire c0_ddr4_ui_clk            用户时钟
  .c0_ddr4_ui_clk_sync_rst(c0_ddr4_ui_clk_sync_rst),      // output wire c0_ddr4_ui_clk_sync_rst   用户复位
  .c0_ddr4_app_en(c0_ddr4_app_en),                        // input wire c0_ddr4_app_en
  .c0_ddr4_app_hi_pri(1'b0),                              // input wire c0_ddr4_app_hi_pri
  .c0_ddr4_app_wdf_end(c0_ddr4_app_wdf_end),              // input wire c0_ddr4_app_wdf_end
  .c0_ddr4_app_wdf_wren(c0_ddr4_app_wdf_wren),            // input wire c0_ddr4_app_wdf_wren
  .c0_ddr4_app_rd_data_end(c0_ddr4_app_rd_data_end),      // output wire c0_ddr4_app_rd_data_end
  .c0_ddr4_app_rd_data_valid(c0_ddr4_app_rd_data_valid),  // output wire c0_ddr4_app_rd_data_valid
  .c0_ddr4_app_rdy(c0_ddr4_app_rdy),                      // output wire c0_ddr4_app_rdy
  .c0_ddr4_app_wdf_rdy(c0_ddr4_app_wdf_rdy),              // output wire c0_ddr4_app_wdf_rdy
  .c0_ddr4_app_addr(c0_ddr4_app_addr),                    // input wire [27 : 0] c0_ddr4_app_addr
  .c0_ddr4_app_cmd(c0_ddr4_app_cmd),                      // input wire [2 : 0] c0_ddr4_app_cmd
  .c0_ddr4_app_wdf_data(c0_ddr4_app_wdf_data),            // input wire [127 : 0] c0_ddr4_app_wdf_data
  .c0_ddr4_app_wdf_mask(16'b0),                           // input wire [15 : 0] c0_ddr4_app_wdf_mask
  .c0_ddr4_app_rd_data(c0_ddr4_app_rd_data),              // output wire [127 : 0] c0_ddr4_app_rd_data
  .sys_rst(1'b0)                                       // input wire sys_rst
);    
endmodule
