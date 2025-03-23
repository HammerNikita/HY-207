//1.2 Модуль опроса кнопок
module Cyclic_button_senser 
(
    input wire clk,               // Тактовый сигнал
    output reg [2:0] o_sensor     // Выходные сигналы (пины 51-53)
);
     // Определение состояний
    localparam [2:0] STATE_0 = 3'b110;
    localparam [2:0] STATE_1 = 3'b101;
    localparam [2:0] STATE_2 = 3'b011;
   
    always @(posedge clk) begin //тут можно попробовать добавить задержку с #?
            case (o_sensor)
                STATE_0: begin
                    o_sensor <= STATE_1;  // Отправляем 0 на первый вход
                end
                STATE_1: begin
                    o_sensor <= STATE_2;  
                end
                STATE_2: begin
                    o_sensor <= STATE_0;  
                end
                default:begin
                    o_sensor <= STATE_0;  
                end
            endcase
        end
endmodule