module colorLED_glow  //отделить в отдельный файл
(
	input  wire i_enable_colorled,
	input  wire syncing_colLED   ,//синх
	output wire o_colLed         ,
    input  wire aresetn            //для рега
);

reg r_led;// 0 - вкл, 1 -lamp выкл
initial begin
	r_led = 1'b1;    //чтоб не горела
end
assign	o_colLed = r_led; // присвоение выходу рега
always @(negedge i_enable_colorled, negedge aresetn) begin// по спаду смена состояния
	if(aresetn == 1'b0)begin
     r_led <= 1'b1;
    end
	else if(syncing_colLED)begin
     r_led <= ~r_led;
    end
    else begin
        r_led <= r_led;
    end
end

endmodule