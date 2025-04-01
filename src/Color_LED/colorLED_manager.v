module colorLED_manager
(
    output wire O_LED_color_COL_0,
    output wire O_LED_color_COL_1,
    output wire O_LED_color_COL_2,

    output wire O_LED_color_ROW_0,
    output wire O_LED_color_ROW_1,
    output wire O_LED_color_ROW_2,
    output wire O_LED_color_ROW_3,

    input  wire [11:00] i_Led_color_data,
    
    input  wire aclk  ,

    input  wire aresetn  
   
);

wire[2:0] w_sensor_n;
wire[3:0] w_sensor_LED;
wire[2:0] w_sensor_n_0;
wire[2:0] w_sensor_n_1;
wire[2:0] w_sensor_n_2;
wire[2:0] w_sensor_n_3;

assign O_LED_color_COL_0 = w_sensor_n[0];
assign O_LED_color_COL_1 = w_sensor_n[1];
assign O_LED_color_COL_2 = w_sensor_n[2];


assign O_LED_color_ROW_0 = w_sensor_LED[0];
assign O_LED_color_ROW_1 = w_sensor_LED[1];
assign O_LED_color_ROW_2 = w_sensor_LED[2];
assign O_LED_color_ROW_3 = w_sensor_LED[3];

assign  w_sensor_n_0[0] = i_Led_color_data[0] ;
assign  w_sensor_n_1[0] = i_Led_color_data[1] ;
assign  w_sensor_n_2[0] = i_Led_color_data[2] ;
assign  w_sensor_n_3[0] = i_Led_color_data[3] ;
assign  w_sensor_n_0[1] = i_Led_color_data[4] ;
assign  w_sensor_n_1[1] = i_Led_color_data[5] ;
assign  w_sensor_n_2[1] = i_Led_color_data[6] ;
assign  w_sensor_n_3[1] = i_Led_color_data[7] ;
assign  w_sensor_n_0[2] = i_Led_color_data[8] ;
assign  w_sensor_n_1[2] = i_Led_color_data[9] ;
assign  w_sensor_n_2[2] = i_Led_color_data[10];
assign  w_sensor_n_3[2] = i_Led_color_data[11];

Cyclic_colorLED_senser
Cyclic_colorLED_senser_inst  
(
    .clk (aclk),            
    .o_sensor_LED (w_sensor_LED)    // Выходные сигналы (пины 66-69)
);

colorLED_glow
colorLED_glow_0_inst 
(
    .i_enable_colorled (w_sensor_n_0),
    .syncing_colLED  (w_sensor_LED[0]),
    
    .o_colLed   (w_sensor_n),
    .aresetn         (aresetn)
);
colorLED_glow
colorLED_glow_1_inst 
(
    .i_enable_colorled (w_sensor_n_1),
    .syncing_colLED  (w_sensor_LED[1]),
    
    .o_colLed   (w_sensor_n),
    .aresetn         (aresetn)
);
colorLED_glow
colorLED_glow_2_inst 
(
    .i_enable_colorled (w_sensor_n_2),
    .syncing_colLED  (w_sensor_LED[2]),
    
    .o_colLed   (w_sensor_n),
    .aresetn         (aresetn)
);
colorLED_glow
colorLED_glow_3_inst 
(
    .i_enable_colorled (w_sensor_n_3),
    .syncing_colLED  (w_sensor_LED[3]),
    
    .o_colLed   (w_sensor_n),
    .aresetn         (aresetn)
);





endmodule


