`timescale 1ns / 1ps

module Interfaz
#(
    parameter D_BITS = 8
)
(
    input wire clock,
    input wire reset,
    input wire [D_BITS-1:0] rx_data_read,
    input wire rx_empty,
    input wire tx_full,
    output wire [D_BITS-1:0] tx_data_write,
    output wire tx_write,
    output wire rx_read
);

reg [D_BITS-1:0] ra, rb, rop, ra_next, rb_next, rop_next;
wire [D_BITS-1:0] alu_out;
reg read, write, read_next, write_next;
integer i, i_next;

localparam DATO_A    = 5'b00001;
localparam DATO_B    = 5'b00010;
localparam DATO_OP   = 5'b00100;
localparam ESPERA    = 5'b10000;
localparam RESULTADO = 5'b01000;


reg [4:0] state = DATO_A;
reg [4:0] next_state = DATO_B;

always@(posedge clock) begin
if(reset) begin
    state <= DATO_A;
    ra <= {D_BITS-1{1'b0}};
    rb <= {D_BITS-1{1'b0}};
    rop <= {D_BITS-1{1'b0}};
    read <= 1'b0;
    write <= 1'b0;
    i <= 0;
end
else begin
    state <= next_state;
    ra <= ra_next;
    rb <= rb_next;
    rop <= rop_next;
    read <= read_next;
    write <= write_next;
    i <= i_next;
end
end


always @(*) begin
ra_next = ra; 
rb_next = rb;
rop_next = rop;
read_next = read;
write_next = write;
i_next = i;
    case(state)
        DATO_A: begin
            write_next = 1'b0;
            read_next = 1'b0; 
            ra_next = {D_BITS-1{1'b0}}; 
            rb_next = {D_BITS-1{1'b0}};
            rop_next = {D_BITS-1{1'b0}};
            if(~rx_empty) begin
               ra_next = rx_data_read;
               read_next = 1'b1;
               i_next = 1;
               next_state = ESPERA;
            end
            else next_state = DATO_A;
        end
        DATO_B: begin
        if(~rx_empty) begin
            rb_next = rx_data_read;
            read_next = 1'b1;
            i_next = 2;
            next_state = ESPERA;
        end
        else next_state = DATO_B;
        end
        DATO_OP: begin
        if(~rx_empty) begin
            rop_next = rx_data_read;
            read_next = 1'b1;
            i_next = 0;
            next_state = ESPERA;
        end
        else next_state = DATO_OP;
        end
        ESPERA: begin
        read_next = 1'b0;
        if(i==1) next_state = DATO_B;
        else if (i==2) next_state = DATO_OP;
        else next_state = RESULTADO;
        end
        RESULTADO: begin
         if(~tx_full) begin
            write_next = 1'b1;                
            next_state = DATO_A;
         end 
         else next_state = RESULTADO;
        end
        default: begin
        next_state = state;
        ra_next = ra;
        rb_next = rb;
        rop_next = rop;
        read_next = read;
        write_next = write;
        i_next = i;
        end
        endcase
 end

assign tx_data_write = alu_out;
assign tx_write = write;
assign rx_read = read;

ALU#(.D_BITS(D_BITS)) my_alu(.A(ra), .B(rb), .OP(rop), .OUT(alu_out));
        
endmodule