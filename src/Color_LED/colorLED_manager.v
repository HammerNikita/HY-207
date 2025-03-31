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


assign O_LED_color_COL_0 = w_sensor_n[0];
assign O_LED_color_COL_1 = w_sensor_n[1];
assign O_LED_color_COL_2 = w_sensor_n[2];


assign O_LED_color_ROW_0 = w_sensor_LED[0];
assign O_LED_color_ROW_1 = w_sensor_LED[1];
assign O_LED_color_ROW_2 = w_sensor_LED[2];
assign O_LED_color_ROW_3 = w_sensor_LED[3];


Cyclic_colorLED_senser
Cyclic_colorLED_senser_inst  
(
    .clk (aclk),            
    .o_sensor_LED (w_sensor_LED)    // Выходные сигналы (пины 66-69)
);

colorLED_glow
colorLED_glow_0_inst 
(
    .i_enable_colorled (i_Led_color_data),
    .syncing_colLED  (w_sensor_LED[0]),
    
    .o_colLed   (w_sensor_n),
    .aresetn         (aresetn)
);
colorLED_glow
colorLED_glow_1_inst 
(
    .i_enable_colorled (i_Led_color_data),
    .syncing_colLED  (w_sensor_LED[1]),
    
    .o_colLed   (w_sensor_n),
    .aresetn         (aresetn)
);
colorLED_glow
colorLED_glow_2_inst 
(
    .i_enable_colorled (i_Led_color_data),
    .syncing_colLED  (w_sensor_LED[2]),
    
    .o_colLed   (w_sensor_n),
    .aresetn         (aresetn)
);
colorLED_glow
colorLED_glow_3_inst 
(
    .i_enable_colorled (i_Led_color_data),
    .syncing_colLED  (w_sensor_LED[3]),
    
    .o_colLed   (w_sensor_n),
    .aresetn         (aresetn)
);

// assign i_Led_color_data[0]  = w_sensor_n_0[0];
// assign i_Led_color_data[1]  = w_sensor_n_1[0];
// assign i_Led_color_data[2]  = w_sensor_n_2[0];
// assign i_Led_color_data[3]  = w_sensor_n_0[1];
// assign i_Led_color_data[4]  = w_sensor_n_1[1];
// assign i_Led_color_data[5]  = w_sensor_n_2[1];
// assign i_Led_color_data[6]  = w_sensor_n_0[2];
// assign i_Led_color_data[7]  = w_sensor_n_1[2];
// assign i_Led_color_data[8]  = w_sensor_n_2[2];
// assign i_Led_color_data[9]  = w_sensor_n_0[3];
// assign i_Led_color_data[10] = w_sensor_n_1[3];
// assign i_Led_color_data[11] = w_sensor_n_2[3];



endmodule


