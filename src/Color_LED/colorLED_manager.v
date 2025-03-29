module colorLED_manager
(
    output wire O_LED_color_COL_0,
    output wire O_LED_color_COL_1,
    output wire O_LED_color_COL_2,

    output wire O_LED_color_ROW_0,
    output wire O_LED_color_ROW_1,
    output wire O_LED_color_ROW_2,
    output wire O_LED_color_ROW_3,
`

    input  wire [11:00] i_led_data,

    input  wire aresetn  
   
);

wire[2:0] w_sensor_n;
wire[3:0] o_sensor_LED;


assign O_LED_color_COL_0 = w_sensor_n[0];
assign O_LED_color_COL_1 = w_sensor_n[1];
assign O_LED_color_COL_2 = w_sensor_n[2];


assign O_LED_color_ROW_0 = o_sensor_LED[0];
assign O_LED_color_ROW_1 = o_sensor_LED[1];
assign O_LED_color_ROW_2 = o_sensor_LED[2];
assign O_LED_color_ROW_3 = o_sensor_LED[3];


Cyclic_colorLED_senser
Cyclic_colorLED_senser_inst  
(
    .clk (aclk),            
    .o_sensor_n (o_sensor_LED)    // Выходные сигналы (пины 66-69)
);

colorLED_glow
colorLED_glow_inst 
(
    .i_enable_colorled (i_led_data),
    .syncing_colLED  (o_sensor_LED),
    
    .o_colLed   (o_sensor_LED),
    .aresetn         (aresetn)
);

endmodule


