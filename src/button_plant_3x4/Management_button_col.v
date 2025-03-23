
module Management_button_col //хотим обьединить кнопки
(
input  wire clk,
input wire aresetn,
input  wire [3:0] i_button_n,//массив входящих от кнопок
input wire        i_sync_n  ,  //синхронизация кнопок
output wire [3:0] o_btn_save ,
output wire [3:0] o_btn_push //сигналы кнопок
);

wire  w_btn_push_0;
wire  w_btn_push_1;
wire  w_btn_push_2;
wire  w_btn_push_3;

wire w_btn_save_0;
wire w_btn_save_1;
wire w_btn_save_2;
wire w_btn_save_3;

assign o_btn_push[0] = w_btn_push_0;
assign o_btn_push[1] = w_btn_push_1;
assign o_btn_push[2] = w_btn_push_2;
assign o_btn_push[3] = w_btn_push_3;

assign o_btn_save[0] = w_btn_save_0;
assign o_btn_save[1] = w_btn_save_1;
assign o_btn_save[2] = w_btn_save_2;
assign o_btn_save[3] = w_btn_save_3;

button_filtre 
key_one_row
(
    .i_button_n (i_button_n[0]),//вход заимствованого(куда подставляется в этом модуле)
    .clk (clk),
    .i_sync_n (i_sync_n),
    .aresetn    (aresetn             ),
    .o_btn_save (w_btn_save_0  ),
    .o_btn_push (w_btn_push_0)
);

button_filtre 
key_two_row
(
    .i_button_n (i_button_n[1]),
    .clk (clk),
    .i_sync_n (i_sync_n),
    .aresetn    (aresetn             ),
    .o_btn_save (w_btn_save_1  ),
    .o_btn_push (w_btn_push_1)
);

button_filtre 
key_three_row
(
    .i_button_n (i_button_n[2]),
    .clk        (clk              ),
    .i_sync_n   (i_sync_n      ),
    .aresetn    (aresetn          ),
    .o_btn_save (w_btn_save_2  ),
    .o_btn_push (w_btn_push_2    )
);

button_filtre 
key_four_row
(
    .i_button_n (i_button_n[3]),
    .clk (clk),
    .i_sync_n (i_sync_n),
    .aresetn    (aresetn     ),
    .o_btn_save (w_btn_save_3),
    .o_btn_push (w_btn_push_3)
);


endmodule
