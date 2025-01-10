 module ddr4_rw (          
     input                    ui_clk,                //�û�ʱ��
     input                    ui_clk_sync_rst,       //��λ,����Ч
     input                    init_calib_complete,   //DDR3��ʼ�����
     input                    app_rdy,               //MIG �������׼���ñ���
     input                    app_wdf_rdy,           //MIG���ݽ���׼����
     input                    app_rd_data_valid,     //��������Ч
     input          [127:0]   app_rd_data,           //�û�������
     output reg     [27:0]    app_addr,              //DDR3��ַ                      
     output                   app_en,                //MIG IP��������ʹ��
     output                   app_wdf_wren,          //�û�д����ʹ��
     output                   app_wdf_end,           //ͻ��д��ǰʱ�����һ������ 
     output         [2:0]     app_cmd,               //MIG IP�˲������������д
     output reg     [127:0]   app_wdf_data,          //�û�д����
     output reg     [1 :0]    state,                 //��д״̬
     output reg     [23:0]    rd_addr_cnt,           //�û�����ַ����
     output reg     [23:0]    wr_addr_cnt,           //�û�д��ַ����
     output reg     [20:0]    rd_cnt,                //ʵ�ʶ���ַ���
     output reg               error_flag,            //��д�����־
     output reg               led0,                  //��д���Խ��ָʾ��
     
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
 parameter  IDLE        = 2'd0;            //����״̬
 parameter  WRITE       = 2'd1;            //д״̬
 parameter  WAIT        = 2'd2;            //����д���ȵȴ�
 parameter  READ        = 2'd3;            //��״̬
 
 //reg define
 reg  [25:0]  led_cnt;    //led����
 
 //wire define
 wire         error;     //��д������
 wire         rst_n;     //��λ������Ч
  
 assign rst_n = ~ui_clk_sync_rst;
 //���ź���Ч���Ҷ�����������д�����ʱ���������־λ����
assign error = (app_rd_data_valid && (rd_cnt!=app_rd_data));
 //��д״̬MIG IP ������պ����ݽ��ն�׼����,�����ڶ�״̬�������׼���ã���ʱ����ʹ���źţ�
 assign app_en = ((state == WRITE && (app_rdy && app_wdf_rdy))
                 ||(state == READ && app_rdy)) ? 1'b1:1'b0;             
 //��д״̬,������պ����ݽ��ն�׼���ã���ʱ����дʹ��
 assign app_wdf_wren = (state == WRITE && (app_rdy && app_wdf_rdy)) ? 1'b1:1'b0;
 
 //����DDR3оƬʱ�Ӻ��û�ʱ�ӵķ�Ƶѡ��4:1��ͻ������Ϊ8���������ź���ͬ
 assign app_wdf_end = app_wdf_wren; 
 //���ڶ���ʱ������ֵΪ1������ʱ������ֵΪ0
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
 
 //DDR3��д�߼�ʵ��
 always @(posedge ui_clk or negedge rst_n) begin
     if((~rst_n)||(error_flag)) begin 
         state    <= IDLE;          
         app_wdf_data <= 128'd0;     
         wr_addr_cnt  <= 24'd0;      
         rd_addr_cnt  <= 24'd0;       
         app_addr     <= 28'd0;          
     end
     else if(init_calib_complete)begin               //MIG IP�˳�ʼ�����
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
                     state    <= WAIT;                  //д���趨�ĳ��������ȴ�״̬
                 else if(app_rdy && app_wdf_rdy)begin   //д��������
                     app_wdf_data <= app_wdf_data + 1;  //д�����Լ�
                     wr_addr_cnt  <= wr_addr_cnt + 1;   //д��ַ�Լ�
                     app_addr     <= app_addr + 8;      //DDR3 ��ַ��8
                 end
                 else begin                             //д���������㣬���ֵ�ǰֵ
                     app_wdf_data <= app_wdf_data;      
                     wr_addr_cnt  <= wr_addr_cnt;
                     app_addr     <= app_addr; 
                 end
               end
             WAIT:begin                                                  
                 state   <= READ;                     //��һ��ʱ�ӣ�������״̬
                 rd_addr_cnt <= 24'd0;                //����ַ��λ
                 app_addr    <= 28'd0;                //DDR3���ӵ�ַ0��ʼ
               end
             READ:begin                               //�����趨�ĵ�ַ����    
                 if(rd_addr_cnt == TEST_LENGTH - 1 && app_rdy)
                     state   <= IDLE;                   //����������״̬ 
                 else if(app_rdy)begin                  //��MIG�Ѿ�׼����,��ʼ��
                     rd_addr_cnt <= rd_addr_cnt + 1'd1; //�û���ַÿ�μ�һ
                     app_addr    <= app_addr + 8;       //DDR3��ַ��8
                 end
                 else begin                             //��MIGû׼����,�򱣳�ԭֵ
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
                         
 //��DDR3ʵ�ʶ����ݸ�����ż���
 always @(posedge ui_clk or negedge rst_n) begin
     if(~rst_n) 
         rd_cnt  <= 0;              //����������д���ȣ��Ҷ���Ч����ַ����������0                                    
     else if(app_rd_data_valid && rd_cnt == TEST_LENGTH - 1)
          rd_cnt <= 0;              //��������ֻҪ����Ч��ÿ��ʱ������1
     else if (app_rd_data_valid )
         rd_cnt <= rd_cnt + 1;
 end
 
 //�Ĵ�״̬��־λ
 always @(posedge ui_clk or negedge rst_n) begin
     if(~rst_n) 
         error_flag <= 0;
     else if(error)
         error_flag <= 1;
  end
  
 //ledָʾЧ������
 always @(posedge ui_clk or negedge rst_n) begin
      if((~rst_n) || (~init_calib_complete )) begin
         led_cnt <= 26'd0;
         led0 <= 1'b0;
     end
     else begin
         if(error_flag)                        //��д���Դ���         
             led0 <= 1'b0;                       //led�Ƴ���
          else begin                            //��д����
             led_cnt <= led_cnt + 26'd1;
             if(led_cnt == L_TIME - 1'b1) begin
             led_cnt <= 26'd0;
             led0 <= ~led0;                      //led����˸
             end                    
          end
       end
 end
 endmodule
