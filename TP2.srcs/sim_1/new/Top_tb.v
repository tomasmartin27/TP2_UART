`timescale 1ns / 1ps
`define CLK 10    //50MHz/16*19200 = 163
module Top_tb;
parameter CLK_POR_TICK=163;
parameter D_BITS=8;
parameter SIZE_FIFO=3;
parameter PARITY=1;
parameter STOP_BITS=2;
reg clock;
reg reset;
reg ticks;
reg rx;
wire tx;
wire [D_BITS-1:0] out;
reg [38:0] din;
integer i;

initial begin
clock=1'b0;
ticks=1'b0;
rx = 1'b1;
i = 0;
din = 39'b111001000000111000000011011110000000101;
reset=1'b1;
repeat(2)@(posedge clock);
reset=1'b0;
end

initial $monitor("tx = %b", tx, $time);
initial $monitor("outALU = %b", out, $time);
initial $monitor("rx = %b, i = %d", rx, i, $time);

always begin
    #`CLK clock = ~clock;
end

always begin
    #26080 ticks = ~ticks;
end

always@(posedge ticks) begin
if(i<39) begin
    rx <= din[i];
    i <= i+1;
end
else i <= 0;
end


Top#(.CLK_POR_TICK(CLK_POR_TICK), .D_BITS(D_BITS), .SIZE_FIFO(SIZE_FIFO), .PARITY(PARITY), .STOP_BITS(STOP_BITS))
top (.clock(clock), .reset(reset), .rx(rx), .tx(tx), .out(out));

endmodule