/*пример побитовости
assign {w_led_data[9],w_led_data[7],w_led_data[5]}
*/

//Цифра 1

assign w_led_data[7:0]   = {4'b0,1'b1,3'b0};//1
assign w_led_data[15:8]  = {4'b0,2'b1,2'b0};//2
assign w_led_data[23:16] = {4'b0,1'b1,3'b0};//3
assign w_led_data[31:24] = {4'b0,1'b1,3'b0};//4
assign w_led_data[39:32] = {4'b0,1'b1,3'b0};//5
assign w_led_data[47:40] = {4'b0,1'b1,3'b0};//6
assign w_led_data[55:48] = {4'b0,1'b1,3'b0};//7
assign w_led_data[63:56] = {3'b0,3'b1,2'b0};//8

//Цифра 2

assign w_led_data[7:0]   = {2'b0,3'b1,3'b0};//1
assign w_led_data[15:8]  = {1'b0,1'b1,3'b0,1'b1,2'b0};//2
assign w_led_data[23:16] = {1'b0,1'b1,6'b0};//3
assign w_led_data[31:24] = {2'b0,1'b1,5'b0};//4
assign w_led_data[39:32] = {3'b0,1'b1,4'b0};//5
assign w_led_data[47:40] = {4'b0,1'b1,3'b0};//6
assign w_led_data[55:48] = {5'b0,1'b1,3'b0};//7
assign w_led_data[63:56] = {1'b0,5'b1,2'b0};//8

//Цифра 3

assign w_led_data[7:0]   = {2'b0,3'b1,3'b0};//1
assign w_led_data[15:8]  = {1'b0,1'b1,3'b0,1'b1,2'b0};//2
assign w_led_data[23:16] = {1'b0,1'b1,6'b0};//3
assign w_led_data[31:24] = {2'b0,3'b1,3'b0};//4
assign w_led_data[39:32] = {1'b0,1'b1,6'b0};//5
assign w_led_data[47:40] = {1'b0,1'b1,6'b0};//6
assign w_led_data[55:48] = {1'b0,1'b1,3'b0,1'b1,2'b0};//7
assign w_led_data[63:56] = {2'b0,3'b1,3'b0};//8

//Цифра 4

assign w_led_data[7:0]   = {2'b0,1'b1,2'b0,1'b1,2'b0};//1
assign w_led_data[15:8]  = {2'b0,1'b1,2'b0,1'b1,2'b0};//2
assign w_led_data[23:16] = {2'b0,1'b1,2'b0,1'b1,2'b0};//3
assign w_led_data[31:24] = {2'b0,4'b1,2'b0};//4
assign w_led_data[39:32] = {2'b0,1'b1,5'b0};//5
assign w_led_data[47:40] = {2'b0,1'b1,5'b0};//6
assign w_led_data[55:48] = {2'b0,1'b1,5'b0};//7
assign w_led_data[63:56] = {2'b0,1'b1,5'b0};//8

//Цифра 5

assign w_led_data[7:0]   = {1'b0,5'b1,2'b0};//1
assign w_led_data[15:8]  = {5'b0,1'b1,2'b0};//2
assign w_led_data[23:16] = {5'b0,1'b1,2'b0};//3
assign w_led_data[31:24] = {2'b0,4'b1,2'b0};//4
assign w_led_data[39:32] = {1'b0,1'b1,7'b0};//5
assign w_led_data[47:40] = {1'b0,1'b1,7'b0};//6
assign w_led_data[55:48] = {1'b0,1'b1,3'b0,1'b1,1'b0};//7
assign w_led_data[63:56] = {2'b0,3'b1,3'b0};//8

//Цифра 6

assign w_led_data[7:0]   = {2'b0,3'b1,3'b0};//1
assign w_led_data[15:8]  = {5'b0,1'b1,2'b0};//2
assign w_led_data[23:16] = {5'b0,1'b1,2'b0};//3
assign w_led_data[31:24] = {2'b0,4'b1,2'b0};//4
assign w_led_data[39:32] = {1'b0,1'b1,3'b0,1'b1,2'b0};//5
assign w_led_data[47:40] = {1'b0,1'b1,3'b0,1'b1,2'b0};//6
assign w_led_data[55:48] = {1'b0,1'b1,3'b0,1'b1,2'b0};//7
assign w_led_data[63:56] = {2'b0,3'b1,3'b0};//8

//Цифра 7

assign w_led_data[7:0]   = {1'b0,5'b1,2'b0};//1
assign w_led_data[15:8]  = {1'b0,1'b1,6'b0};//2
assign w_led_data[23:16] = {2'b0,1'b1,5'b0};//3
assign w_led_data[31:24] = {3'b0,1'b1,4'b0};//4
assign w_led_data[39:32] = {4'b0,1'b1,3'b0};//5
assign w_led_data[47:40] = {4'b0,1'b1,3'b0};//6
assign w_led_data[55:48] = {4'b0,1'b1,3'b0};//7
assign w_led_data[63:56] = {4'b0,1'b1,3'b0};//8

//Цифра 8

assign w_led_data[7:0]   = {2'b0,3'b1,3'b0};//1
assign w_led_data[15:8]  = {1'b0,1'b1,3'b0,1'b1,2'b1};//2
assign w_led_data[23:16] = {1'b0,1'b1,3'b0,1'b1,2'b1};//3
assign w_led_data[31:24] = {2'b0,3'b1,3'b0};//4
assign w_led_data[39:32] = {1'b0,1'b1,3'b0,1'b1,2'b1};//5
assign w_led_data[47:40] = {1'b0,1'b1,3'b0,1'b1,2'b1};//6
assign w_led_data[55:48] = {1'b0,1'b1,3'b0,1'b1,2'b1};//7
assign w_led_data[63:56] = {2'b0,3'b1,3'b0};//8

//Цифра 9

assign w_led_data[7:0]   = {2'b0,3'b1,3'b0};//1
assign w_led_data[15:8]  = {1'b0,1'b1,3'b0,1'b1,2'b1};//2
assign w_led_data[23:16] = {1'b0,1'b1,3'b0,1'b1,2'b1};//3
assign w_led_data[31:24] = {1'b0,4'b1,3'b0};//4
assign w_led_data[39:32] = {1'b0,1'b1,6'b0};//5
assign w_led_data[47:40] = {1'b0,1'b1,6'b0};//6
assign w_led_data[55:48] = {1'b0,1'b1,3'b0,1'b1,2'b1};//7
assign w_led_data[63:56] = {2'b0,3'b1,3'b0};//8

//Цифра 0

assign w_led_data[7:0]   = {2'b0,3'b1,3'b0};//1
assign w_led_data[15:8]  = {1'b0,1'b1,3'b0,1'b1,2'b1};//2
assign w_led_data[23:16] = {1'b0,1'b1,3'b0,1'b1,2'b1};//3
assign w_led_data[31:24] = {1'b0,1'b1,3'b0,1'b1,2'b1};//4
assign w_led_data[39:32] = {1'b0,1'b1,3'b0,1'b1,2'b1};//5
assign w_led_data[47:40] = {1'b0,1'b1,3'b0,1'b1,2'b1};//6
assign w_led_data[55:48] = {1'b0,1'b1,3'b0,1'b1,2'b1};//7
assign w_led_data[63:56] = {2'b0,3'b1,3'b0};//8

//HAMMER

assign w_led_data[7:0]   = {3'b0,2'b1,3'b0};//1
assign w_led_data[15:8]  = {2'b0,4'b1,2'b0};//2
assign w_led_data[23:16] = {2'b0,5'b1,1'b0};//3
assign w_led_data[31:24] = {3'b1,5'b0};//4
assign w_led_data[39:32] = {2'b0,6'b1};//5
assign w_led_data[47:40] = {1'b0,3'b1,1'b0,2'b1,1'b0};//6
assign w_led_data[55:48] = {3'b1,5'b0};//7
assign w_led_data[63:56] = {2'b1,6'b0};//8


