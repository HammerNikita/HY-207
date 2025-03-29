module Cyclic_colorLED_senser //уменьшить по примеру
(
    input wire clk,               // Тактовый сигнал
    output reg [3:0] o_sensor_LED    // Выходные сигналы (пины 66-69)
);
     // Определение состояний
    localparam [3:0] STATE_0 = 4'b1110;
    localparam [3:0] STATE_1 = 4'b1101;
    localparam [3:0] STATE_2 = 4'b1011;
    localparam [3:0] STATE_3 = 4'b0111;
   
    always @(posedge clk) begin 
            case (o_sensor_LED)
                STATE_0: begin
                    o_sensor_LED <= STATE_1;  // Отправляем 0 на первый вход
                end
                STATE_1: begin
                    o_sensor_LED <= STATE_2;  // Отправляем 0 на второй вход
                end
                STATE_2: begin
                    o_sensor_LED <= STATE_3;  // Отправляем 0 на третий вход
                end
                default: begin
                    o_sensor_LED <= STATE_0;  // Отправляем 0 на 4й вход
                end
            endcase
        end

endmodule
