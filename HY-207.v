module HY_207 (
(* CHIP_PIN = "2" *)output wire pin2, //7сегментник
(* CHIP_PIN = "3" *)output wire pin3,
(* CHIP_PIN = "4" *)output wire pin4,

(* CHIP_PIN = "5" *) inout wire pin5, // ПРОСТО ПИН

(* CHIP_PIN = "6" *) inout wire pin6, // PS/2
(* CHIP_PIN = "7" *) inout wire pin7, 

(* CHIP_PIN = "8" *) inout wire pin8, // ПРОСТО ПИН

(* CHIP_PIN = "12" *)input wire clk,

(* CHIP_PIN = "14" *) output wire pin14, //лампы
(* CHIP_PIN = "15" *) output wire pin15,
(* CHIP_PIN = "16" *) output wire pin16,
(* CHIP_PIN = "17" *) output wire pin17,
(* CHIP_PIN = "18" *) output wire pin18,
(* CHIP_PIN = "19" *) output wire pin19,
(* CHIP_PIN = "20" *) output wire pin20,
(* CHIP_PIN = "21" *) output wire pin21,

(* CHIP_PIN = "26"*) input wire pin26, //реле Sw(красное)
(* CHIP_PIN = "27"*) input wire pin27,
(* CHIP_PIN = "28"*) input wire pin28,
(* CHIP_PIN = "29"*) input wire pin29,
(* CHIP_PIN = "30"*) input wire pin30,
(* CHIP_PIN = "33"*) input wire pin33,
(* CHIP_PIN = "34"*) input wire pin34,
(* CHIP_PIN = "35"*) input wire pin35,

(* CHIP_PIN = "36" *)output wire pin36, //пищалка(Buzzer)

(* CHIP_PIN = "37" *)inout wire pin37,  // ПРОСТО ПИН

(* CHIP_PIN = "38" *) output wire pin38, // обещанный монитор
(* CHIP_PIN = "39" *) output wire pin39,
(* CHIP_PIN = "40" *) output wire pin40,
(* CHIP_PIN = "41" *) output wire pin41,
(* CHIP_PIN = "42" *) output wire pin42,
(* CHIP_PIN = "43" *) output wire pin43,
(* CHIP_PIN = "44" *) output wire pin44,
(* CHIP_PIN = "47" *) output wire pin47,
(* CHIP_PIN = "48" *) output wire pin48,
(* CHIP_PIN = "49" *) output wire pin49,
(* CHIP_PIN = "50" *) output wire pin50,

(* CHIP_PIN = "51" *) output wire pin51,  //кнопки выхода
(* CHIP_PIN = "52" *) output wire pin52,
(* CHIP_PIN = "53" *) output wire pin53,

(* CHIP_PIN = "54"*) input wire pin54,  //кнопки входа-выхода
(* CHIP_PIN = "55"*) input wire pin55,
(* CHIP_PIN = "56"*) input wire pin56,
(* CHIP_PIN = "57"*) input wire pin57,

(* CHIP_PIN = "58" *) output wire pin58,  // RS232
(* CHIP_PIN = "61" *) input wire pin61,

(* CHIP_PIN = "62" *) input wire pin62, //кнопка S

(* CHIP_PIN = "64" *) inout wire pin64,  // ПРОСТО ПИН

(* CHIP_PIN = "66" *) output wire pin66, //лампы компаса 
(* CHIP_PIN = "67" *) output wire pin67,
(* CHIP_PIN = "68" *) output wire pin68,
(* CHIP_PIN = "69" *) output wire pin69,

(* CHIP_PIN = "70" *) input wire pin70, //лампы компаса входы
(* CHIP_PIN = "71" *) input wire pin71,
(* CHIP_PIN = "72" *) input wire pin72,

(* CHIP_PIN = "73" *) output wire pin73, //LED 8x8
(* CHIP_PIN = "74" *) output wire pin74,
(* CHIP_PIN = "75" *) output wire pin75,
(* CHIP_PIN = "76" *) output wire pin76,
(* CHIP_PIN = "77" *) output wire pin77,
(* CHIP_PIN = "78" *) output wire pin78,
(* CHIP_PIN = "81" *) output wire pin81,
(* CHIP_PIN = "82" *) output wire pin82,

(* CHIP_PIN = "83" *) output wire pin83, // резюки к LED 8x8
(* CHIP_PIN = "84" *) output wire pin84,
(* CHIP_PIN = "85" *) output wire pin85,
(* CHIP_PIN = "86" *) output wire pin86,
(* CHIP_PIN = "87" *) output wire pin87,
(* CHIP_PIN = "88" *) output wire pin88,
(* CHIP_PIN = "89" *) output wire pin89,
(* CHIP_PIN = "90" *) output wire pin90,

(* CHIP_PIN = "91" *) output wire pin91 , //7сегментник
(* CHIP_PIN = "92" *) output wire pin92 ,
(* CHIP_PIN = "95" *) output wire pin95 ,
(* CHIP_PIN = "96" *) output wire pin96 ,
(* CHIP_PIN = "97" *) output wire pin97 ,
(* CHIP_PIN = "98" *) output wire pin98 ,
(* CHIP_PIN = "99" *) output wire pin99 ,
(* CHIP_PIN = "100" *) output wire pin100,
(* CHIP_PIN = "1" *) output wire pin1   
);

assign pin1 = 1'b1;
assign pin2 = 1'b1;  //output
assign pin3 = 1'b1;
assign pin3 = 1'b1;
// assign pin14 = 1'b1;
// assign pin15 = 1'b1;
// assign pin16 = 1'b1;
// assign pin17 = 1'b1;
//assign pin18 = 1'b1;
//assign pin19 = 1'b1;
//assign pin20 = 1'b1; 
//assign pin21 = 1'b1; 
assign pin36 = 1'b1; 
assign pin38 = 1'b1;   
assign pin39 = 1'b1;  
assign pin40 = 1'b1;  
assign pin41 = 1'b1;  
assign pin42 = 1'b1;  
assign pin43 = 1'b1;  
assign pin44 = 1'b1;  
assign pin47 = 1'b1; 
assign pin48 = 1'b1; 
assign pin49 = 1'b1; 
assign pin50 = 1'b1; 
//assign pin51 = 1'b1; 
//assign pin52 = 1'b1; 
//assign pin53 = 1'b1; 
assign pin58 = 1'b1; 

// assign pin66 = 1'b0; 
// assign pin67 = 1'b0;
// assign pin68 = 1'b0;
// assign pin69 = 1'b0;

//assign pin73 = 1'b1; 
//assign pin74 = 1'b1; 
//assign pin75 = 1'b1; 
//assign pin76 = 1'b1; 
//assign pin77 = 1'b1; 
//assign pin78 = 1'b1; 
//assign pin81 = 1'b1;
//assign pin82 = 1'b1;
//assign pin83 = 1'b1;
//assign pin84 = 1'b1;
//assign pin85 = 1'b1;
//assign pin86 = 1'b1;
//assign pin87 = 1'b1;
//assign pin88 = 1'b1;
//assign pin89 = 1'b1;
//assign pin90 = 1'b1;
assign pin91 = 1'b1;
assign pin92 = 1'b1;
assign pin95 = 1'b1;
assign pin96 = 1'b1;
assign pin97 = 1'b1;
assign pin98 = 1'b1;
assign pin99 = 1'b1;
assign pin100 = 1'b1;

assign pin5 = 1'bZ;  //inout
assign pin6 = 1'bZ;
assign pin7 = 1'bZ;
assign pin8 = 1'bZ;
assign pin37 = 1'bZ;
assign pin63 = 1'bZ;

//КОНЕЦ ПИНОВ

wire [3:0] w_btn;

assign w_btn[3] = pin54;
assign w_btn[2] = pin55;
assign w_btn[1] = pin56;
assign w_btn[0] = pin57;

wire [2:0] w_sensor;//провод соединения опросника и кнопок
wire [11:0] w_key_push;
wire [11:0] w_key_save;

assign pin51 = w_sensor[0];
assign pin52 = w_sensor[1];
assign pin53 = w_sensor[2];

button_plant_3x4_manager// ПОДКЛЮЧЕНИЕ КНОПОК
button_plant_3x4_manager_inst 
(
    .O_BUTTON_COL_0 (w_sensor[0]),
    .O_BUTTON_COL_1 (w_sensor[1]),
    .O_BUTTON_COL_2 (w_sensor[2]),

    .I_BUTTON_ROW_0 (w_btn[0]),
    .I_BUTTON_ROW_1 (w_btn[1]),
    .I_BUTTON_ROW_2 (w_btn[2]),
    .I_BUTTON_ROW_3 (w_btn[3]),

    .o_key_push (w_key_push),
    .o_key_save (w_key_save),

    .aresetn       (reset),
    .aclk          (1'b1)       
);

wire [63:00] w_led_data;

assign w_led_data[1:0]   = {w_key_push[0],w_key_push[0]};
assign w_led_data[9:8]   = {w_key_push[0],w_key_push[0]};

assign w_led_data[3:2]   = {w_key_push[1],w_key_push[1]};
assign w_led_data[11:10] = {w_key_push[1],w_key_push[1]};

assign w_led_data[5:4]   = {w_key_push[2],w_key_push[2]};
assign w_led_data[13:12] = {w_key_push[2],w_key_push[2]};

assign w_led_data[7:6]   = 1'b0;//{w_key_push[2],w_key_push[2]};
assign w_led_data[15:14] = 1'b0;//{w_key_push[2],w_key_push[2]};
//-
assign w_led_data[17:16] = {w_key_push[3],w_key_push[3]};
assign w_led_data[25:24] = {w_key_push[3],w_key_push[3]};

assign w_led_data[19:18] = {w_key_push[4],w_key_push[4]};
assign w_led_data[27:26] = {w_key_push[4],w_key_push[4]};

assign w_led_data[21:20] = {w_key_push[5],w_key_push[5]};
assign w_led_data[29:28] = {w_key_push[5],w_key_push[5]};

assign w_led_data[23:22] = 1'b0;//{w_key_push[5],w_key_push[5]};
assign w_led_data[31:30] = 1'b0;//{w_key_push[5],w_key_push[5]};
//-
assign w_led_data[33:32] = {w_key_push[6],w_key_push[6]};
assign w_led_data[41:40] = {w_key_push[6],w_key_push[6]};

assign w_led_data[35:34] = {w_key_push[7],w_key_push[7]};
assign w_led_data[43:42] = {w_key_push[7],w_key_push[7]};

assign w_led_data[37:36] = {w_key_push[8],w_key_push[8]};
assign w_led_data[45:44] = {w_key_push[8],w_key_push[8]};

assign w_led_data[39:38] = 1'b0;//{w_key_push[8],w_key_push[8]};
assign w_led_data[47:46] = 1'b0;//{w_key_push[8],w_key_push[8]};
//--
assign w_led_data[49:48] = {w_key_save[9],w_key_save[9]};
assign w_led_data[57:56] = {w_key_save[9],w_key_save[9]};

assign w_led_data[51:50] = {w_key_save[10],w_key_save[10]};
assign w_led_data[59:58] = {w_key_save[10],w_key_save[10]};

assign w_led_data[53:52] = {w_key_save[11],w_key_save[11]};
assign w_led_data[61:60] = {w_key_save[11],w_key_save[11]};

assign w_led_data[55:54] = 1'b0;//{w_key_push[11],w_key_push[11]};
assign w_led_data[63:62] = 1'b0;//{w_key_push[11],w_key_push[11]};


assign pin14 = ~w_key_push[0];//назначение кнопок
assign pin15 = ~w_key_push[1];
assign pin16 = ~w_key_push[2];
assign pin17 = ~w_key_push[3];
assign pin18 = ~w_key_push[4];
assign pin19 = ~w_key_save[9];
assign pin20 = ~w_key_save[10];
assign pin21 = ~w_key_save[11];

led_place_8x8_manager
led_place_8x8_manager_inst  
(
    .O_LED_PLACE_COL_0(pin82),
    .O_LED_PLACE_COL_1(pin81),
    .O_LED_PLACE_COL_2(pin78),
    .O_LED_PLACE_COL_3(pin77),
    .O_LED_PLACE_COL_4(pin76),
    .O_LED_PLACE_COL_5(pin75),
    .O_LED_PLACE_COL_6(pin74),
    .O_LED_PLACE_COL_7(pin73),
    
    .O_LED_PLACE_ROW_0(pin90),
    .O_LED_PLACE_ROW_1(pin89),
    .O_LED_PLACE_ROW_2(pin88),
    .O_LED_PLACE_ROW_3(pin87),
    .O_LED_PLACE_ROW_4(pin86),
    .O_LED_PLACE_ROW_5(pin85),
    .O_LED_PLACE_ROW_6(pin84),
    .O_LED_PLACE_ROW_7(pin83),

    .i_led_data (w_led_data),
    
    .aresetn       (1'b1),

    .aclk          (clk)   
);

colorLED_manager
colorLED_manager_inst  
(
    .O_LED_color_COL_0(pin70),
    .O_LED_color_COL_1(pin71),
    .O_LED_color_COL_2(pin72),

    
    .O_LED_color_ROW_0(w_sensor_LedCol[0]),
    .O_LED_color_ROW_1(w_sensor_LedCol[1]),
    .O_LED_color_ROW_2(w_sensor_LedCol[2]),
    .O_LED_color_ROW_3(w_sensor_LedCol[3]),


    .i_Led_color_data (w_key_save),

    .aclk          (1'b1),
    .aresetn       (reset)

);

wire [3:0] w_sensor_LedCol;//провод соединения опросника и LedColor

//wire reset;
// assign pin62 = reset;    СДЕЛАТЬ НОРМАЛЬНУЮ КНОПКУ (на прямую не работает)

assign pin69 = w_sensor_LedCol[0];
assign pin68 = w_sensor_LedCol[1];
assign pin67 = w_sensor_LedCol[2];
assign pin66 = w_sensor_LedCol[3];


endmodule
