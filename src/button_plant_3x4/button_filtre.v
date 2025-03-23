//1.1 кнопка с задержкой

module button_filtre 
(
    input wire i_button_n ,
    input wire i_sync_n   ,// синхронизация с опросом
    output reg o_btn_push ,
    output reg o_btn_save ,
    input wire aresetn    ,
    input wire clk        
);

reg [3:0] cnt;
wire     w_btn_push;

initial begin
    o_btn_push = 1'b0;
    o_btn_save = 1'b0;
    cnt        = 'd0 ;// счетчик начала зажатия
end

    assign w_btn_push = (cnt == 4'hF) ? (1'b1) : (1'b0);

    always @(posedge clk, negedge aresetn) begin 
        if(aresetn == 1'b0)begin
            o_btn_push <= 1'b0;
        end
        else if(i_sync_n == 1'b0)begin
            o_btn_push <= w_btn_push;
        end
        else begin
            o_btn_push <= o_btn_push;
        end
    end

    always @(posedge clk, negedge aresetn) begin 
        if(aresetn == 1'b0)begin
            o_btn_save <= 1'b0;
        end
        else if((i_sync_n == 1'b0)&(o_btn_push == 1'b0)&(w_btn_push == 1'b1))begin
            o_btn_save <= ~o_btn_save;
        end
        else begin
            o_btn_save <= o_btn_save;
        end
    end

    always @(posedge clk, negedge aresetn) begin 
        if(aresetn == 1'b0)begin
            cnt <= 'd0;
        end
        else if(i_sync_n == 1'b0)begin
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