//MОДУЛЬ ЗАГАРНИЯ МОНИТОРА 64ТОЧКИ

module SIXTYFOUR_LED_Save
(
	input  wire i_enable_SixtiFour ,// вх сигнал
	input  wire syncing_SixtiFour_LED ,// синхронизация с опросом
	output wire o_SixtiFour_LED
);

reg r_reg;// 0 - вкл, 1 -lamp выкл

initial begin
	r_leg = 1'b1; //чтоб не горела
end

always @(negedge i_enable_SixtiFour) begin// по спаду смена состояния
	if(syncing_SixtiFour_LED)begin
     r_led <= ~r_led;
    end
    else begin
        r_led <= r_led;
    end
end
assign o_SixtiFour_LED = r_led; // присвоение выходу рега

endmodule


module Massive_SixtiFour_LED
(
	input  wire [7:0] i_schet_SixtiFour_signals ,//вход данные
	input  wire [7:0] syncing_SixtiLed , //синхронизация с опросом
	output wire [2:0] o_schet_SixtiFour_LEDs   //выход данные
);
wire [3:0] w_massive_schet_SixtiLed;

assign o_schet_SixtiFour_LEDs [0] = w_massive_schet_SixtiLed [0]; 
assign o_schet_SixtiFour_LEDs [1] = w_massive_schet_SixtiLed [1]; 
assign o_schet_SixtiFour_LEDs [2] = w_massive_schet_SixtiLed [2]; 


SIXTYFOUR_LED_Save
inst_one_row
(
  .i_enable_SixtiFour (i_schet_SixtiFour_signals[0]),//вход заимствованого(куда подставляется в этом модуле)
  .o_SixtiFour_LED (w_massive_schet_SixtiLed[0]),  //выход заимствованого(куда подставляется в этом модуле)
  .syncing_SixtiFour_LED(syncing_SixtiLed[0]) 
);

SIXTYFOUR_LED_Save
inst_two_row
(
  .i_enable_SixtiFour (i_schet_SixtiFour_signals[1]),
  .o_SixtiFour_LED (w_massive_schet_SixtiLed [1]),
  .syncing_SixtiFour_LED(syncing_SixtiLed[1]) 
);

SIXTYFOUR_LED_Save
inst_three_row
(
  .i_enable_SixtiFour (i_schet_SixtiFour_signals[2]),
  .o_SixtiFour_LED (w_massive_schet_SixtiLed [2]),
  .syncing_SixtiFour_LED(syncing_SixtiLed[2]) 
);

SIXTYFOUR_LED_Save
inst_four_row
(
  .i_enable_SixtiFour (i_schet_SixtiFour_signals[3]),
  .o_SixtiFour_LED (w_massive_schet_SixtiLed [3]),
  .syncing_SixtiFour_LED(syncing_SixtiLed[3]) 
);

SIXTYFOUR_LED_Save
inst_five_row
(
  .i_enable_SixtiFour (i_schet_SixtiFour_signals[4]),
  .o_SixtiFour_LED (w_massive_schet_SixtiLed [4]),
  .syncing_SixtiFour_LED(syncing_SixtiLed[4]) 
);

SIXTYFOUR_LED_Save
inst_six_row
(
  .i_enable_SixtiFour (i_schet_SixtiFour_signals[5]),
  .o_SixtiFour_LED (w_massive_schet_SixtiLed [5]),
  .syncing_SixtiFour_LED(syncing_SixtiLed[5]) 
);

SIXTYFOUR_LED_Save
inst_seven_row
(
  .i_enable_SixtiFour (i_schet_SixtiFour_signals[6]),
  .o_SixtiFour_LED (w_massive_schet_SixtiLed [6]),
  .syncing_SixtiFour_LED(syncing_SixtiLed[6]) 
);

SIXTYFOUR_LED_Save
inst_eight_row
(
  .i_enable_SixtiFour (i_schet_SixtiFour_signals[7]),
  .o_SixtiFour_LED (w_massive_schet_SixtiLed [7]),
  .syncing_SixtiFour_LED(syncing_SixtiLed[7]) 
);

endmodule



// module Hammer 
// (
//   input wire [7:0] w_COL_SixtiFour
// );
//   initial begin
    
//   end
// endmodule