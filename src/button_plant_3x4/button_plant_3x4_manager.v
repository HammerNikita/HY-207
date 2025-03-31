module button_plant_3x4_manager
(
    output wire O_BUTTON_COL_0,
    output wire O_BUTTON_COL_1,
    output wire O_BUTTON_COL_2,

    input  wire I_BUTTON_ROW_0,
    input  wire I_BUTTON_ROW_1,
    input  wire I_BUTTON_ROW_2,
    input  wire I_BUTTON_ROW_3,

    output wire [11:00] o_key_push,
    output wire [11:00] o_key_save,

    input  wire aresetn       ,
    input  wire aclk           
);

wire [2:0] w_sensor;
wire [3:0] w_manag_button;
wire [3:0] w_btns_push_col_0;
wire [3:0] w_btns_push_col_1;
wire [3:0] w_btns_push_col_2;
wire [3:0] w_btn_save_col_0;
wire [3:0] w_btn_save_col_1;
wire [3:0] w_btn_save_col_2;

assign O_BUTTON_COL_0 = w_sensor[0];
assign O_BUTTON_COL_1 = w_sensor[1];
assign O_BUTTON_COL_2 = w_sensor[2];

assign w_manag_button[0] = I_BUTTON_ROW_0;
assign w_manag_button[1] = I_BUTTON_ROW_1;
assign w_manag_button[2] = I_BUTTON_ROW_2;
assign w_manag_button[3] = I_BUTTON_ROW_3;

assign o_key_push[0]  = w_btns_push_col_0[0];
assign o_key_push[1]  = w_btns_push_col_1[0];
assign o_key_push[2]  = w_btns_push_col_2[0];
assign o_key_push[3]  = w_btns_push_col_0[1];
assign o_key_push[4]  = w_btns_push_col_1[1];
assign o_key_push[5]  = w_btns_push_col_2[1];
assign o_key_push[6]  = w_btns_push_col_0[2];
assign o_key_push[7]  = w_btns_push_col_1[2];
assign o_key_push[8]  = w_btns_push_col_2[2];
assign o_key_push[9]  = w_btns_push_col_0[3];
assign o_key_push[10] = w_btns_push_col_1[3];
assign o_key_push[11] = w_btns_push_col_2[3];


assign o_key_save[0]  = w_btn_save_col_0[0];
assign o_key_save[1]  = w_btn_save_col_1[0];
assign o_key_save[2]  = w_btn_save_col_2[0];
assign o_key_save[3]  = w_btn_save_col_0[1];
assign o_key_save[4]  = w_btn_save_col_1[1];
assign o_key_save[5]  = w_btn_save_col_2[1];
assign o_key_save[6]  = w_btn_save_col_0[2];
assign o_key_save[7]  = w_btn_save_col_1[2];
assign o_key_save[8]  = w_btn_save_col_2[2];
assign o_key_save[9]  = w_btn_save_col_0[3];
assign o_key_save[10] = w_btn_save_col_1[3];
assign o_key_save[11] = w_btn_save_col_2[3];

Cyclic_button_senser
Cyclic_button_senser_inst  
(
    .clk      (aclk    ),
    .o_sensor (w_sensor)
);

Management_button_col
Management_button_col_0_inst //хотим обьединить кнопки
(
    .clk                   (aclk             ),
    .aresetn               (aresetn          ),
    .i_sync_n              (w_sensor[0]      ),
    .i_button_n            (w_manag_button   ),
    .o_btn_save            (w_btn_save_col_0),
    .o_btn_push            (w_btns_push_col_0)
);

Management_button_col
Management_button_col_1_inst //хотим обьединить кнопки
(
    .clk                   (aclk             ),
    .aresetn               (aresetn          ),
    .i_sync_n              (w_sensor[1]      ),
    .i_button_n            (w_manag_button   ),
    .o_btn_save            (w_btn_save_col_1),
    .o_btn_push            (w_btns_push_col_1)
);

Management_button_col
Management_button_col_2_inst //хотим обьединить кнопки
(
    .clk                   (aclk             ),
    .aresetn               (aresetn          ),
    .i_sync_n              (w_sensor[2]      ),
    .i_button_n            (w_manag_button   ),
    .o_btn_save            (w_btn_save_col_2),
    .o_btn_push            (w_btns_push_col_2)
);

endmodule
