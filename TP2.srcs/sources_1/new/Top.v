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

reg [D_BITS-1:0] tx_data_write;  //salida resultado ALU
reg [D_BITS-1:0] rx_data_write;  //dout receptor
reg tx_read;                     //tx_done 
reg tx_write;
reg rx_write;                    //rx_done           
reg rx_read;
wire tx_start;                    //not empty
wire tx_full;
wire rx_empty;
wire rx_full;
wire [D_BITS-1:0] tx_data_read;   //din transmisor
wire [D_BITS-1:0] rx_data_read;  //entrada de datos ALU

reg [D_BITS-1:0] din;
reg tx_start_UART;
wire tx_done;
wire [D_BITS-1:0] dout;
wire rx_done;

reg [D_BITS-1:0] datosALU;
reg rx_empty_int;
reg tx_full_int;
wire [D_BITS-1:0] resultadoALU;
wire tx_write_int;
wire rx_read_int;

always@(*) begin
tx_data_write=resultadoALU; //salida resultado ALU
rx_data_write=dout;         //dout receptor
tx_read=tx_done;            //tx_done 
tx_write=tx_write_int;      //write interfaz
rx_write=rx_done;           //rx_done           
rx_read=rx_read_int;
din=tx_data_read;
tx_start_UART=tx_start;
datosALU=rx_data_read;
rx_empty_int=rx_empty;
tx_full_int=tx_full;
end

UART#(.CLK_POR_TICK(CLK_POR_TICK), .D_BITS(D_BITS), .PARITY(PARITY), .STOP_BITS(STOP_BITS)) 
uart(.clock(clock), .reset(reset), .din(din), .tx_start(tx_start_UART), .rx(rx), .tx(tx), 
.tx_done(tx_done), .dout(dout), .rx_done(rx_done));

FIFO#(.D_BITS(D_BITS), .SIZE_FIFO(SIZE_FIFO))
fifo(.clock(clock), .reset(reset), .tx_data_write(tx_data_write), .rx_data_write(rx_data_write),
.tx_read(tx_read), .tx_write(tx_write), .rx_write(rx_write), .rx_read(rx_read), .tx_start(tx_start),
.tx_full(tx_full), .rx_empty(rx_empty), .rx_full(rx_full), .tx_data_read(tx_data_read), .rx_data_read(rx_data_read));

Interfaz#(.D_BITS(D_BITS)) interf(.clock(clock), .reset(reset), .rx_data_read(datosALU), .rx_empty(rx_empty_int), 
.tx_full(tx_full_int), .tx_data_write(resultadoALU), .tx_write(tx_write_int), .rx_read(rx_read_int));

endmodule