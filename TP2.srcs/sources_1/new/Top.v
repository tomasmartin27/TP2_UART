`timescale 1ns / 1ps

module Top
#(
	parameter CLK_POR_TICK=163,
	parameter D_BITS=8,
	parameter PARITY=1,
	parameter STOP_BITS=2,
	parameter SIZE_FIFO=3
)
(
     input wire clock,
     input wire reset,
     input wire rx,
     output wire tx
);

wire [D_BITS-1:0] tx_data_write;  //salida resultado ALU
wire [D_BITS-1:0] rx_data_write;  //dout receptor
wire tx_read;                     //tx_done 
wire tx_write;
wire rx_write;                    //rx_done           
wire rx_read;
wire tx_start;                    //not empty
wire tx_full;
wire rx_empty;
wire rx_full;
wire [D_BITS-1:0] tx_data_read;   //din transmisor
wire [D_BITS-1:0] rx_data_read;  //entrada de datos ALU


UART#(.CLK_POR_TICK(CLK_POR_TICK), .D_BITS(D_BITS), .PARITY(PARITY), .STOP_BITS(STOP_BITS)) 
uart(.clock(clock), .reset(reset), .din(tx_data_read), .tx_start(tx_start), .rx(rx), .tx(tx), 
.tx_done(tx_read), .dout(rx_data_write), .rx_done(rx_write));

FIFO#(.D_BITS(D_BITS), .SIZE_FIFO(SIZE_FIFO))
fifo(.clock(clock), .reset(reset), .tx_data_write(tx_data_write), .rx_data_write(rx_data_write),
.tx_read(tx_read), .tx_write(tx_write), .rx_write(rx_write), .rx_read(rx_read), .tx_start(tx_start),
.tx_full(tx_full), .rx_empty(rx_empty), .rx_full(rx_full), .tx_data_read(tx_data_read), .rx_data_read(rx_data_read));

Interfaz#(.D_BITS(D_BITS)) interf(.clock(clock), .reset(reset), .rx_data_read(rx_data_read), .rx_empty(rx_empty), 
.tx_full(tx_full), .tx_data_write(tx_data_write), .tx_write(tx_write), .rx_read(rx_read));

endmodule
