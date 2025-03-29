//MОДУЛЬ ЗАГАРНИЯ ВСЕХ ЦВЕТНЫХ ЛАМП

module colorLED_Save
(
	input  wire i_enable_colorled ,// сюда должен прийти сигнал
	input  wire syncing_colLED ,// синхронизация с опросом
	output wire o_colLed
);

reg r_reg;// 0 - вкл, 1 -lamp выкл
initial begin
	r_leg = 1'b1; //чтоб не горела
end

always @(negedge i_enable_colorled) begin// по спаду смена состояния
	if(syncing_colLED)begin
     r_led <= ~r_led;
    end
    else begin
        r_led <= r_led;
    end
end
assign	o_colLed = r_led; // присвоение выходу рега

endmodule

module Cyclic_colorLED_senser //уменьшить по примеру
(
    input wire clk,               // Тактовый сигнал
    output reg [3:0] o_sensor_LED    // Выходные сигналы (пины 66-69)
);

    reg [1:0] state;         // Состояние автомата (2 бита для 3 состояний)

     // Определение состояний
    localparam STATE_0 = 2'b00;
    localparam STATE_1 = 2'b01;
    localparam STATE_2 = 2'b10;
    localparam STATE_3 = 2'b11;
   
    always @(posedge clk) begin 
            case (state)
                STATE_0: begin
                    o_sensor_LED <= 3'b1110;  // Отправляем 0 на первый вход
                    state <= STATE_1;
                end
                STATE_1: begin
                    o_sensor_LED <= 3'b1101;  // Отправляем 0 на второй вход
                    state <= STATE_2;
                end
                STATE_2: begin
                    o_sensor_LED <= 3'b1011;  // Отправляем 0 на третий вход
                    state <= STATE_3;
                end
                STATE_3: begin
                    o_sensor_LED <= 3'b0111;  // Отправляем 0 на 4й вход
                    state <= STATE_0;
                end
            endcase
        end

endmodule


module Massive_colorLED 
(
	input  wire [2:0] i_schet_color_signal ,
	input  wire [3:0] syncing_colorLED  ,
	output wire [2:0] o_schet_colorLEDs   
);
wire [3:0] w_massive_schet_colorled;

assign o_schet_colorLEDs [0] = w_massive_schet_colorled [0]; 
assign o_schet_colorLEDs [1] = w_massive_schet_colorled [1]; 
assign o_schet_colorLEDs [2] = w_massive_schet_colorled [2]; 


colorLED_Save
inst_one_row
(
  .i_enablei_enable_colorled_led (i_schet_color_signal[0]),//вход заимствованого(куда подставляется в этом модуле)
  .o_colLed (w_massive_schet_led[0]),  //выход заимствованого(куда подставляется в этом модуле)
  .syncing_colLED(syncing_colorLED[0]) 
);

colorLED_Save
inst_two_row
(
  .i_enable_colorled (i_schet_color_signal[1]),
  .o_colLed (w_massive_schet_led [1]),
  .syncing_colLED(syncing_colorLED[1]) 
);

colorLED_Save
inst_three_row
(
  .i_enable_colorled (i_schet_color_signal[2]),
  .o_colLed (w_massive_schet_led [2]),
  .syncing_colLED(syncing_colorLED[2]) 
);

colorLED_Save
inst_four_row
(
  .i_enable_colorled (i_schet_color_signal[3]),
  .o_colLed (w_massive_schet_led [3]),
  .syncing_colLED(syncing_colorLED[3]) 
);

endmodule