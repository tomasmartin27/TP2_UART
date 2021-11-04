`timescale 1ns / 1ps
`define CLK 10    //50MHz/16*19200 = 163
module UART_tb;
    parameter CLK_POR_TICK=163;
	parameter D_BITS=8;
    parameter PARITY=1;
	parameter STOP_BITS=2;
	reg clock;
	reg reset;
    reg [D_BITS-1:0] din1;
    reg tx_start1;
    wire tx1;
    wire tx_done1;
    reg rx2;
    wire rx_done2;
    wire [D_BITS-1:0] dout2;
    reg [D_BITS-1:0] din2;
    reg tx_start2;
    wire tx2;
    wire tx_done2;
    reg rx1;
    wire rx_done1;
    wire [D_BITS-1:0] dout1;

initial begin
clock=1'b0;
reset=1'b1;
repeat(2)@(posedge clock);
reset=1'b0;
din1 = $urandom($time)%(2**D_BITS);
tx_start2 = 1'b0;
tx_start1 = 1'b1;
repeat(5)@(posedge clock);
tx_start1 = 1'b0;
end

initial $monitor("din1 = %b, tx_done1 = %b", din1, tx_done1, $time);
initial $monitor("din2 = %b, tx_done2 = %b", din2, tx_done2, $time);
initial $monitor("dout1 = %b, rx_done1 = %b", dout1, rx_done1, $time);
initial $monitor("dout2 = %b, rx_done2 = %b", dout2, rx_done2, $time);

always begin
    #`CLK clock = ~clock;
end

always@(*) begin
rx2 = tx1;
rx1 = tx2;
end

always@(*) begin
    if(rx_done2==1'b1) begin
        din2 = dout2;
        tx_start2 = 1'b1;
        repeat(5)@(posedge clock);
        tx_start2 = 1'b0;
    end
end

UART#(.CLK_POR_TICK(CLK_POR_TICK), .D_BITS(D_BITS), .PARITY(PARITY), .STOP_BITS(STOP_BITS)) 
uart1(.clock(clock), .reset(reset), .din(din1), .tx_start(tx_start1), .rx(rx1), .tx(tx1), .tx_done(tx_done1), .dout(dout1), .rx_done(rx_done1));

UART#(.CLK_POR_TICK(CLK_POR_TICK), .D_BITS(D_BITS), .PARITY(PARITY), .STOP_BITS(STOP_BITS)) 
uart2(.clock(clock), .reset(reset), .din(din2), .tx_start(tx_start2), .rx(rx2), .tx(tx2), .tx_done(tx_done2), .dout(dout2), .rx_done(rx_done2));

endmodule