//1.1 кнопка с задержкой

module button_filtre 
(
    input wire i_button_n ,//нажатие кнопки
    input wire i_sync_n   ,// синхронизация с опросом
    output reg o_btn_push ,//сгнал о нажатии
    output reg o_btn_save ,//хранение инфы о нажатии
    input wire aresetn    ,//обязательный резет
    input wire clk         //Такт
);

reg [3:0] cnt;
wire     w_btn_push;

initial begin
    o_btn_push = 1'b0;
    o_btn_save = 1'b0;
    cnt        = 'd0 ;// счетчик начала зажатия
end

    assign w_btn_push = (cnt == 4'hF) ? (1'b1) : (1'b0); //если счетчик досчитал до 4бит ТО 1 ИНАЧЕ 0

    always @(posedge clk, negedge aresetn) begin 
        if(aresetn == 1'b0)begin                         //Резет=>сброс
            o_btn_push <= 1'b0;
        end
        else if(i_sync_n == 1'b0)begin                  //разрешающий сигнал
            o_btn_push <= w_btn_push;
        end
        else begin
            o_btn_push <= o_btn_push;                  //хранение при отсутствии изменений
        end
    end

    always @(posedge clk, negedge aresetn) begin 
        if(aresetn == 1'b0)begin
            o_btn_save <= 1'b0;
        end
        else if((i_sync_n == 1'b0)&(o_btn_push == 1'b0)&(w_btn_push == 1'b1))begin 
            o_btn_save <= ~o_btn_save;
        end  //Если синх 0 И и ВЫХсигнал 0 И ВХсигнал 1 => инверсия
        else begin
            o_btn_save <= o_btn_save; //иначе храение
        end
    end

    always @(posedge clk, negedge aresetn) begin 
        if(aresetn == 1'b0)begin             //Резет=>сброс
            cnt <= 'd0;
        end
        else if(i_sync_n == 1'b0)begin// Счетчик
            if (i_button_n == 1'b0)  begin 
                if(cnt < 4'hF )begin
                        cnt <= cnt +'d1;
                end else begin
                        cnt <= cnt;
                 end
            end else begin
                cnt <= 'd0;
            end
        end
        else begin
            cnt <= cnt;
        end
    end 
endmodule