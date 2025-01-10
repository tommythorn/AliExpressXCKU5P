 module ddr4_rw (          
     input                    ui_clk,                //用户时钟
     input                    ui_clk_sync_rst,       //复位,高有效
     input                    init_calib_complete,   //DDR3初始化完成
     input                    app_rdy,               //MIG 命令接收准备好标致
     input                    app_wdf_rdy,           //MIG数据接收准备好
     input                    app_rd_data_valid,     //读数据有效
     input          [127:0]   app_rd_data,           //用户读数据
     output reg     [27:0]    app_addr,              //DDR3地址                      
     output                   app_en,                //MIG IP发送命令使能
     output                   app_wdf_wren,          //用户写数据使能
     output                   app_wdf_end,           //突发写当前时钟最后一个数据 
     output         [2:0]     app_cmd,               //MIG IP核操作命令，读或者写
     output reg     [127:0]   app_wdf_data,          //用户写数据
     output reg     [1 :0]    state,                 //读写状态
     output reg     [23:0]    rd_addr_cnt,           //用户读地址计数
     output reg     [23:0]    wr_addr_cnt,           //用户写地址计数
     output reg     [20:0]    rd_cnt,                //实际读地址标记
     output reg               error_flag,            //读写错误标志
     output reg               led0,                  //读写测试结果指示灯
     
   output  reg       led1,
   output  reg       led2,
   output  reg       led3,
   output  reg       led4,
   output  reg       led5,
   output  reg       led6,
   output  reg       led7,
   output  reg       led8,
   output  reg       led9,
   
   output  reg       led10,
   output  reg       led11,
   output  reg       led12,
   output  reg       led13,
   output  reg       led14,
   output  reg       led15,
   output  reg       led16,
   output  reg       led17,
   output  reg       led18,
   output  reg       led19,
   
   output  reg       led20,
   output  reg       led21,
   output  reg       led22,
   output  reg       led23,
   output  reg       led24,
   output  reg       led25,
   output  reg       led26,
   output  reg       led27,
   output  reg       led28,
   output  reg       led29,
   
   output  reg       led30,
   output  reg       led31,
   output  reg       led32,
   output  reg       led33,
   output  reg       led34,
   output  reg       led35,
   output  reg       led36,
   output  reg       led37,
   output  reg       led38,
   output  reg       led39,

   output  reg       led41,
   output  reg       led42,
   output  reg       led43,
   output  reg       led44,
   output  reg       led45,
   output  reg       led46,
   output  reg       led47,
   output  reg       led48,
   output  reg       led49,

   output  reg       led50,
   output  reg       led51,
   output  reg       led52,
   output  reg       led53,
   output  reg       led54,
   output  reg       led55,
   output  reg       led56,
   output  reg       led57,
   output  reg       led58,
   output  reg       led59,

   output  reg       led60,
   output  reg       led61,
   output  reg       led62,
   output  reg       led63,
   output  reg       led64,
   output  reg       led65,
   output  reg       led66,
   output  reg       led67,
   output  reg       led68,
   output  reg       led69,

   output  reg       led70,
   output  reg       led71,
   output  reg       led72,
   output  reg       led73,
   output  reg       led74,
   output  reg       led75,
   output  reg       led76,
   output  reg       led77,
   output  reg       led78,
   output  reg       led79,

   output  reg       led80,
   output  reg       led81,
   output  reg       led82,
   output  reg       led83,
   output  reg       led84,
   output  reg       led85,
   output  reg       led86,
   output  reg       led87,
   output  reg       led88,
   output  reg       led89,

   output  reg       led90,
   output  reg       led91,
   output  reg       led92,
   output  reg       led93,
   output  reg       led94,
   output  reg       led95,
   output  reg       led96,
   output  reg       led97,
   output  reg       led98,
   output  reg       led99,

   output  reg       led100,
   output  reg       led101,
   output  reg       led102,
   output  reg       led103,
   output  reg       led104,
   output  reg       led105,
   output  reg       led106,
   output  reg       led107,
   output  reg       led108,
   output  reg       led109,

   output  reg       led110,
   output  reg       led111,
   output  reg       led112,
   output  reg       led113,
   output  reg       led114,
   output  reg       led115,
   output  reg       led116,
   output  reg       led117,
   output  reg       led118,
   output  reg       led119,
   
   output  reg       led120,
   output  reg       led121,
   output  reg       led122,
   output  reg       led123,
   output  reg       led124,
   output  reg       led125,
   output  reg       led126,
   output  reg       led127,
   output  reg       led128,
   output  reg       led129,
   
   output  reg       led130,
   output  reg       led131,
   output  reg       led132,
   output  reg       led133,
   output  reg       led134,
   output  reg       led135,
   output  reg       led136,
   output  reg       led137,
   output  reg       led138,
   output  reg       led139,

   output  reg       led140,
   output  reg       led141,
   output  reg       led142,
   output  reg       led143,
   output  reg       led144,
   output  reg       led145,
   output  reg       led146,
   output  reg       led147,
   output  reg       led148,
   output  reg       led149,
   
   output  reg       led150,
   output  reg       led151,
   output  reg       led152,
   output  reg       led153,
   output  reg       led154,
   output  reg       led155,
   output  reg       led156,
   output  reg       led157,
   output  reg       led158,
   output  reg       led159,
   
   output  reg       led160,
   output  reg       led161,
   output  reg       led162,
   output  reg       led163,
   output  reg       led164,
   output  reg       led165,
   output  reg       led166,
   output  reg       led167,
   output  reg       led168,
   output  reg       led169,

   output  reg       led170,
   output  reg       led171,
   output  reg       led172,
   output  reg       led173,
   output  reg       led174,
   output  reg       led175,
   output  reg       led176,
   output  reg       led177,
   output  reg       led178,
   output  reg       led179
     );
 
 //parameter define
 parameter  TEST_LENGTH = 1000;
 parameter  L_TIME = 26'd50_000_000;
 parameter  IDLE        = 2'd0;            //空闲状态
 parameter  WRITE       = 2'd1;            //写状态
 parameter  WAIT        = 2'd2;            //读到写过度等待
 parameter  READ        = 2'd3;            //读状态
 
 //reg define
 reg  [25:0]  led_cnt;    //led计数
 
 //wire define
 wire         error;     //读写错误标记
 wire         rst_n;     //复位，低有效
  
 assign rst_n = ~ui_clk_sync_rst;
 //读信号有效，且读出的数不是写入的数时，将错误标志位拉高
assign error = (app_rd_data_valid && (rd_cnt!=app_rd_data));
 //在写状态MIG IP 命令接收和数据接收都准备好,或者在读状态命令接收准备好，此时拉高使能信号，
 assign app_en = ((state == WRITE && (app_rdy && app_wdf_rdy))
                 ||(state == READ && app_rdy)) ? 1'b1:1'b0;             
 //在写状态,命令接收和数据接收都准备好，此时拉高写使能
 assign app_wdf_wren = (state == WRITE && (app_rdy && app_wdf_rdy)) ? 1'b1:1'b0;
 
 //由于DDR3芯片时钟和用户时钟的分频选择4:1，突发长度为8，故两个信号相同
 assign app_wdf_end = app_wdf_wren; 
 //处于读的时候命令值为1，其他时候命令值为0
 assign app_cmd = (state == READ) ? 3'd1 :3'd0;  
 
 reg [63:0]   cnt_led   ;
 
 always @(posedge ui_clk) begin
    if(cnt_led>L_TIME)
    begin
        cnt_led<= 64'd0 ;
                         led1 <= ~led1; led2 <= ~led2; led3 <= ~led3; led4 <= ~led4; led5 <= ~led5; led6 <= ~led6; led7 <= ~led7; led8 <= ~led8; led9 <= ~led9;
        led10 <= ~led10; led11 <= ~led11; led12 <= ~led12; led13 <= ~led13; led14 <= ~led14; led15 <= ~led15; led16 <= ~led16; led17 <= ~led17; led18 <= ~led18; led19 <= ~led19;
        led20 <= ~led20; led21 <= ~led21; led22 <= ~led22; led23 <= ~led23; led24 <= ~led24; led25 <= ~led25; led26 <= ~led26; led27 <= ~led27; led28 <= ~led28; led29 <= ~led29;
        led30 <= ~led30; led31 <= ~led31; led32 <= ~led32; led33 <= ~led33; led34 <= ~led34; led35 <= ~led35; led36 <= ~led36; led37 <= ~led37; led38 <= ~led38; led39 <= ~led39;
                         led41 <= ~led41; led42 <= ~led42; led43 <= ~led43; led44 <= ~led44; led45 <= ~led45; led46 <= ~led46; led47 <= ~led47; led48 <= ~led48; led49 <= ~led49;
        led50 <= ~led50; led51 <= ~led51; led52 <= ~led52; led53 <= ~led53; led54 <= ~led54; led55 <= ~led55; led56 <= ~led56; led57 <= ~led57; led58 <= ~led58; led59 <= ~led59;
        led60 <= ~led60; led61 <= ~led61; led62 <= ~led62; led63 <= ~led63; led64 <= ~led64; led65 <= ~led65; led66 <= ~led66; led67 <= ~led67; led68 <= ~led68; led69 <= ~led69;
        led70 <= ~led70; led71 <= ~led71; led72 <= ~led72; led73 <= ~led73; led74 <= ~led74; led75 <= ~led75; led76 <= ~led76; led77 <= ~led77; led78 <= ~led78; led79 <= ~led79;
        led80 <= ~led80; led81 <= ~led81; led82 <= ~led82; led83 <= ~led83; led84 <= ~led84; led85 <= ~led85; led86 <= ~led86; led87 <= ~led87; led88 <= ~led88; led89 <= ~led89;
        led90 <= ~led90; led91 <= ~led91; led92 <= ~led92; led93 <= ~led93; led94 <= ~led94; led95 <= ~led95; led96 <= ~led96; led97 <= ~led97; led98 <= ~led98; led99 <= ~led99;
        led100 <= ~led100; led101 <= ~led101; led102 <= ~led102; led103 <= ~led103; led104 <= ~led104; led105 <= ~led105; led106 <= ~led106; led107 <= ~led107; led108 <= ~led108; led109 <= ~led109;
        led110 <= ~led110; led111 <= ~led111; led112 <= ~led112; led113 <= ~led113; led114 <= ~led114; led115 <= ~led115; led116 <= ~led116; led117 <= ~led117; led118 <= ~led118; led119 <= ~led119;
        led120 <= ~led120; led121 <= ~led121; led122 <= ~led122; led123 <= ~led123; led124 <= ~led124; led125 <= ~led125; led126 <= ~led126; led127 <= ~led127; led128 <= ~led128; led129 <= ~led129;
        led130 <= ~led130; led131 <= ~led131; led132 <= ~led132; led133 <= ~led133; led134 <= ~led134; led135 <= ~led135; led136 <= ~led136; led137 <= ~led137; led138 <= ~led138; led139 <= ~led139;
        led140 <= ~led140; led141 <= ~led141; led142 <= ~led142; led143 <= ~led143; led144 <= ~led144; led145 <= ~led145; led146 <= ~led146; led147 <= ~led147; led148 <= ~led148; led149 <= ~led149;
        led150 <= ~led150; led151 <= ~led151; led152 <= ~led152; led153 <= ~led153; led154 <= ~led154; led155 <= ~led155; led156 <= ~led156; led157 <= ~led157; led158 <= ~led158; led159 <= ~led159;
        led160 <= ~led160; led161 <= ~led161; led162 <= ~led162; led163 <= ~led163; led164 <= ~led164; led165 <= ~led165; led166 <= ~led166; led167 <= ~led167; led168 <= ~led168; led169 <= ~led169;
        led170 <= ~led170; led171 <= ~led171; led172 <= ~led172; led173 <= ~led173; led174 <= ~led174; led175 <= ~led175; led176 <= ~led176; led177 <= ~led177; led178 <= ~led178; led179 <= ~led179;
    end
    else 
        cnt_led <= cnt_led + 64'd1 ; 
 end
 
 //DDR3读写逻辑实现
 always @(posedge ui_clk or negedge rst_n) begin
     if((~rst_n)||(error_flag)) begin 
         state    <= IDLE;          
         app_wdf_data <= 128'd0;     
         wr_addr_cnt  <= 24'd0;      
         rd_addr_cnt  <= 24'd0;       
         app_addr     <= 28'd0;          
     end
     else if(init_calib_complete)begin               //MIG IP核初始化完成
         case(state)
             IDLE:begin
                 state    <= WRITE;
                 app_wdf_data <= 128'd0;   
                 wr_addr_cnt  <= 24'd0;     
                 rd_addr_cnt  <= 24'd0;       
                 app_addr     <= 28'd0;        
              end
             WRITE:begin
                 if(wr_addr_cnt == TEST_LENGTH - 1 &&(app_rdy && app_wdf_rdy))
                     state    <= WAIT;                  //写到设定的长度跳到等待状态
                 else if(app_rdy && app_wdf_rdy)begin   //写条件满足
                     app_wdf_data <= app_wdf_data + 1;  //写数据自加
                     wr_addr_cnt  <= wr_addr_cnt + 1;   //写地址自加
                     app_addr     <= app_addr + 8;      //DDR3 地址加8
                 end
                 else begin                             //写条件不满足，保持当前值
                     app_wdf_data <= app_wdf_data;      
                     wr_addr_cnt  <= wr_addr_cnt;
                     app_addr     <= app_addr; 
                 end
               end
             WAIT:begin                                                  
                 state   <= READ;                     //下一个时钟，跳到读状态
                 rd_addr_cnt <= 24'd0;                //读地址复位
                 app_addr    <= 28'd0;                //DDR3读从地址0开始
               end
             READ:begin                               //读到设定的地址长度    
                 if(rd_addr_cnt == TEST_LENGTH - 1 && app_rdy)
                     state   <= IDLE;                   //则跳到空闲状态 
                 else if(app_rdy)begin                  //若MIG已经准备好,则开始读
                     rd_addr_cnt <= rd_addr_cnt + 1'd1; //用户地址每次加一
                     app_addr    <= app_addr + 8;       //DDR3地址加8
                 end
                 else begin                             //若MIG没准备好,则保持原值
                     rd_addr_cnt <= rd_addr_cnt;
                     app_addr    <= app_addr; 
                 end
               end
             default:begin
                 state    <= IDLE;
                 app_wdf_data <= 128'd0;
                 wr_addr_cnt  <= 24'd0;
                 rd_addr_cnt  <= 24'd0;
                 app_addr     <= 28'd0;
             end
         endcase
     end
 end   
                         
 //对DDR3实际读数据个数编号计数
 always @(posedge ui_clk or negedge rst_n) begin
     if(~rst_n) 
         rd_cnt  <= 0;              //若计数到读写长度，且读有效，地址计数器则置0                                    
     else if(app_rd_data_valid && rd_cnt == TEST_LENGTH - 1)
          rd_cnt <= 0;              //其他条件只要读有效，每个时钟自增1
     else if (app_rd_data_valid )
         rd_cnt <= rd_cnt + 1;
 end
 
 //寄存状态标志位
 always @(posedge ui_clk or negedge rst_n) begin
     if(~rst_n) 
         error_flag <= 0;
     else if(error)
         error_flag <= 1;
  end
  
 //led指示效果控制
 always @(posedge ui_clk or negedge rst_n) begin
      if((~rst_n) || (~init_calib_complete )) begin
         led_cnt <= 26'd0;
         led0 <= 1'b0;
     end
     else begin
         if(error_flag)                        //读写测试错误         
             led0 <= 1'b0;                       //led灯常亮
          else begin                            //读写测试
             led_cnt <= led_cnt + 26'd1;
             if(led_cnt == L_TIME - 1'b1) begin
             led_cnt <= 26'd0;
             led0 <= ~led0;                      //led灯闪烁
             end                    
          end
       end
 end
 endmodule
