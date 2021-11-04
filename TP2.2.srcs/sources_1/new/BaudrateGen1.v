`timescale 1ns / 1ps

module BaudrateGen1
#(
    parameter CLK_POR_TICK=163
)
(
    input wire clock,
    input wire reset,
    output wire ticks
   
);

reg [11:0] count = {12{1'b0}};
wire [11:0] count1;

always@(posedge clock) begin: Baudrate_generator
    if(reset) count <= {12{1'b0}};
    else count <= count1; 
end

assign count1 = (count==CLK_POR_TICK-1)? 0 : count + 1'b1;
assign ticks = (count==CLK_POR_TICK-1)? 1'b1 : 1'b0;

endmodule 