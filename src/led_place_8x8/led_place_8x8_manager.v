module led_place_8x8_manager 
(
    output wire O_LED_PLACE_COL_0, // -
    output wire O_LED_PLACE_COL_1, // -
    output wire O_LED_PLACE_COL_2, // -
    output wire O_LED_PLACE_COL_3, // -
    output wire O_LED_PLACE_COL_4, // -
    output wire O_LED_PLACE_COL_5, // -
    output wire O_LED_PLACE_COL_6, // -
    output wire O_LED_PLACE_COL_7, // -
    
    output wire O_LED_PLACE_ROW_0, // +
    output wire O_LED_PLACE_ROW_1, // +
    output wire O_LED_PLACE_ROW_2, // +
    output wire O_LED_PLACE_ROW_3, // +
    output wire O_LED_PLACE_ROW_4, // +
    output wire O_LED_PLACE_ROW_5, // +
    output wire O_LED_PLACE_ROW_6, // +
    output wire O_LED_PLACE_ROW_7, // +

    input  wire [63:00] i_led_data,

    input  wire aclk   
);

reg [7:0] col;

localparam [7:0] STATE_0 = 8'b11111110,
                 STATE_1 = 8'b11111101,
                 STATE_2 = 8'b11111011,
                 STATE_3 = 8'b11110111,
                 STATE_4 = 8'b11101111,
                 STATE_5 = 8'b11011111,
                 STATE_6 = 8'b10111111,
                 STATE_7 = 8'b01111111;

assign O_LED_PLACE_COL_0 = col[0];
assign O_LED_PLACE_COL_1 = col[1];
assign O_LED_PLACE_COL_2 = col[2];
assign O_LED_PLACE_COL_3 = col[3];
assign O_LED_PLACE_COL_4 = col[4];
assign O_LED_PLACE_COL_5 = col[5];
assign O_LED_PLACE_COL_6 = col[6];
assign O_LED_PLACE_COL_7 = col[7];
    
assign O_LED_PLACE_ROW_0 = o_led_row_data[0];
assign O_LED_PLACE_ROW_1 = o_led_row_data[1];
assign O_LED_PLACE_ROW_2 = o_led_row_data[2];
assign O_LED_PLACE_ROW_3 = o_led_row_data[3];
assign O_LED_PLACE_ROW_4 = o_led_row_data[4];
assign O_LED_PLACE_ROW_5 = o_led_row_data[5];
assign O_LED_PLACE_ROW_6 = o_led_row_data[6];
assign O_LED_PLACE_ROW_7 = o_led_row_data[7];

localparam LP_TIMER_LENGTH_BIT = 8;

reg [LP_TIMER_LENGTH_BIT -1:0] timer;
reg [7:0]   o_led_row_data;

initial begin
    timer = {LP_TIMER_LENGTH_BIT{1'b0}};
end

wire f_timer;

assign f_timer = (timer == {LP_TIMER_LENGTH_BIT{1'b1}}) ? (1'b1) : (1'b0);

always @(posedge aclk) begin
    timer <= timer +'d1;
end

always @(posedge aclk) begin
    if(f_timer)begin
        case (col)
        STATE_0:begin
            col <= STATE_1;
        end
        STATE_1:begin
            col <= STATE_2;
        end
        STATE_2:begin
            col <= STATE_3;
        end
        STATE_3:begin
            col <= STATE_4;
        end
        STATE_4:begin
            col <= STATE_5;
        end
        STATE_5:begin
            col <= STATE_6;
        end
        STATE_6:begin
            col <= STATE_7;
        end
        STATE_7:begin
            col <= STATE_0;
        end
        default:begin
            col <= STATE_0;
        end 
        endcase
    end
    else begin
        col <= col;
    end
end

always @(posedge aclk) begin 
    if(f_timer)begin
        case (col)
            STATE_0: begin
                o_led_row_data[0] <= i_led_data[1 ];
                o_led_row_data[1] <= i_led_data[9 ];
                o_led_row_data[2] <= i_led_data[17];
                o_led_row_data[3] <= i_led_data[25];
                o_led_row_data[4] <= i_led_data[33];
                o_led_row_data[5] <= i_led_data[41];
                o_led_row_data[6] <= i_led_data[49];
                o_led_row_data[7] <= i_led_data[57];
            end
            STATE_1: begin
                o_led_row_data[0] <= i_led_data[2 ];
                o_led_row_data[1] <= i_led_data[10];
                o_led_row_data[2] <= i_led_data[18];
                o_led_row_data[3] <= i_led_data[26];
                o_led_row_data[4] <= i_led_data[34];
                o_led_row_data[5] <= i_led_data[42];
                o_led_row_data[6] <= i_led_data[50];
                o_led_row_data[7] <= i_led_data[58];
            end
            STATE_2: begin
                o_led_row_data[0] <= i_led_data[3 ];
                o_led_row_data[1] <= i_led_data[11];
                o_led_row_data[2] <= i_led_data[19];
                o_led_row_data[3] <= i_led_data[27];
                o_led_row_data[4] <= i_led_data[35];
                o_led_row_data[5] <= i_led_data[43];
                o_led_row_data[6] <= i_led_data[51];
                o_led_row_data[7] <= i_led_data[59];
            end
            STATE_3: begin
                o_led_row_data[0] <= i_led_data[4 ];
                o_led_row_data[1] <= i_led_data[12];
                o_led_row_data[2] <= i_led_data[20];
                o_led_row_data[3] <= i_led_data[28];
                o_led_row_data[4] <= i_led_data[36];
                o_led_row_data[5] <= i_led_data[44];
                o_led_row_data[6] <= i_led_data[52];
                o_led_row_data[7] <= i_led_data[60];
            end
            STATE_4: begin
                o_led_row_data[0] <= i_led_data[5 ];
                o_led_row_data[1] <= i_led_data[13];
                o_led_row_data[2] <= i_led_data[21];
                o_led_row_data[3] <= i_led_data[29];
                o_led_row_data[4] <= i_led_data[37];
                o_led_row_data[5] <= i_led_data[45];
                o_led_row_data[6] <= i_led_data[53];
                o_led_row_data[7] <= i_led_data[61]; 
            end
            STATE_5: begin
                o_led_row_data[0] <= i_led_data[6 ];
                o_led_row_data[1] <= i_led_data[14];
                o_led_row_data[2] <= i_led_data[22];
                o_led_row_data[3] <= i_led_data[30];
                o_led_row_data[4] <= i_led_data[38];
                o_led_row_data[5] <= i_led_data[46];
                o_led_row_data[6] <= i_led_data[54];
                o_led_row_data[7] <= i_led_data[62];
            end
            STATE_6: begin
                o_led_row_data[0] <= i_led_data[7 ];
                o_led_row_data[1] <= i_led_data[15];
                o_led_row_data[2] <= i_led_data[23];
                o_led_row_data[3] <= i_led_data[31];
                o_led_row_data[4] <= i_led_data[39];
                o_led_row_data[5] <= i_led_data[47];
                o_led_row_data[6] <= i_led_data[55];
                o_led_row_data[7] <= i_led_data[63];
            end
            STATE_7: begin
                o_led_row_data[0] <= i_led_data[0 ];
                o_led_row_data[1] <= i_led_data[8 ];
                o_led_row_data[2] <= i_led_data[16];
                o_led_row_data[3] <= i_led_data[24];
                o_led_row_data[4] <= i_led_data[32];
                o_led_row_data[5] <= i_led_data[40];
                o_led_row_data[6] <= i_led_data[48];
                o_led_row_data[7] <= i_led_data[56];  
            end
        endcase
    end
    else begin
        case (col)
            STATE_0: begin
                o_led_row_data[0] <= i_led_data[0 ];
                o_led_row_data[1] <= i_led_data[8 ];
                o_led_row_data[2] <= i_led_data[16];
                o_led_row_data[3] <= i_led_data[24];
                o_led_row_data[4] <= i_led_data[32];
                o_led_row_data[5] <= i_led_data[40];
                o_led_row_data[6] <= i_led_data[48];
                o_led_row_data[7] <= i_led_data[56]; 
            end
            STATE_1: begin
                o_led_row_data[0] <= i_led_data[1 ];
                o_led_row_data[1] <= i_led_data[9 ];
                o_led_row_data[2] <= i_led_data[17];
                o_led_row_data[3] <= i_led_data[25];
                o_led_row_data[4] <= i_led_data[33];
                o_led_row_data[5] <= i_led_data[41];
                o_led_row_data[6] <= i_led_data[49];
                o_led_row_data[7] <= i_led_data[57];
            end
            STATE_2: begin
                o_led_row_data[0] <= i_led_data[2 ];
                o_led_row_data[1] <= i_led_data[10];
                o_led_row_data[2] <= i_led_data[18];
                o_led_row_data[3] <= i_led_data[26];
                o_led_row_data[4] <= i_led_data[34];
                o_led_row_data[5] <= i_led_data[42];
                o_led_row_data[6] <= i_led_data[50];
                o_led_row_data[7] <= i_led_data[58];
            end
            STATE_3: begin
                o_led_row_data[0] <= i_led_data[3 ];
                o_led_row_data[1] <= i_led_data[11];
                o_led_row_data[2] <= i_led_data[19];
                o_led_row_data[3] <= i_led_data[27];
                o_led_row_data[4] <= i_led_data[35];
                o_led_row_data[5] <= i_led_data[43];
                o_led_row_data[6] <= i_led_data[51];
                o_led_row_data[7] <= i_led_data[59];
            end
            STATE_4: begin
                o_led_row_data[0] <= i_led_data[4 ];
                o_led_row_data[1] <= i_led_data[12];
                o_led_row_data[2] <= i_led_data[20];
                o_led_row_data[3] <= i_led_data[28];
                o_led_row_data[4] <= i_led_data[36];
                o_led_row_data[5] <= i_led_data[44];
                o_led_row_data[6] <= i_led_data[52];
                o_led_row_data[7] <= i_led_data[60];
            end
            STATE_5: begin
                o_led_row_data[0] <= i_led_data[5 ];
                o_led_row_data[1] <= i_led_data[13];
                o_led_row_data[2] <= i_led_data[21];
                o_led_row_data[3] <= i_led_data[29];
                o_led_row_data[4] <= i_led_data[37];
                o_led_row_data[5] <= i_led_data[45];
                o_led_row_data[6] <= i_led_data[53];
                o_led_row_data[7] <= i_led_data[61]; 
            end
            STATE_6: begin
                o_led_row_data[0] <= i_led_data[6 ];
                o_led_row_data[1] <= i_led_data[14];
                o_led_row_data[2] <= i_led_data[22];
                o_led_row_data[3] <= i_led_data[30];
                o_led_row_data[4] <= i_led_data[38];
                o_led_row_data[5] <= i_led_data[46];
                o_led_row_data[6] <= i_led_data[54];
                o_led_row_data[7] <= i_led_data[62];
            end
            STATE_7: begin
                o_led_row_data[0] <= i_led_data[7 ];
                o_led_row_data[1] <= i_led_data[15];
                o_led_row_data[2] <= i_led_data[23];
                o_led_row_data[3] <= i_led_data[31];
                o_led_row_data[4] <= i_led_data[39];
                o_led_row_data[5] <= i_led_data[47];
                o_led_row_data[6] <= i_led_data[55];
                o_led_row_data[7] <= i_led_data[63];
            end
        endcase
    end
end

endmodule
