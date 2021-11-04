`timescale 1ns / 1ps

module UART
#(
	parameter CLK_POR_TICK=163,
	parameter D_BITS=8,
	parameter PARITY=1,
	parameter STOP_BITS=2
)
(
     input wire clock,
     input wire reset,
     input wire [D_BITS-1:0] din,
     input wire tx_start,
     input wire rx,
     output wire tx,
     output wire tx_done,
     output wire [D_BITS-1:0] dout,
     output wire rx_done
);
wire ticks;

RX1#(.D_BITS(D_BITS), .PARITY(PARITY), .STOP_BITS(STOP_BITS)) my_rx1(.clock(clock), .reset(reset),
.rx(rx), .ticks(ticks), .dout(dout), .rx_done(rx_done));

TX1#(.D_BITS(D_BITS), .PARITY(PARITY), .STOP_BITS(STOP_BITS)) my_tx1(.clock(clock), .reset(reset),
.din(din), .ticks(ticks), .tx_start(tx_start), .tx(tx), .tx_done(tx_done));

BaudrateGen1#(.CLK_POR_TICK(CLK_POR_TICK)) baudrategen1(.clock(clock), .reset(reset), .ticks(ticks));

endmodule
