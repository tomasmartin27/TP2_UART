`timescale 1ns / 1ps

module ALU
#(
    parameter D_BITS = 8
)
(
    input wire [D_BITS-1:0] A,
    input wire [D_BITS-1:0] B,
    input wire [D_BITS-1:0] OP,
    output reg [D_BITS-1:0] OUT
);

always @(*) begin: ALU
    case(OP)
        6'b00100000: OUT = A+B;
        6'b00100010: OUT = A-B;
        6'b00100100: OUT = A&B;
        6'b00100101: OUT = A|B;
        6'b00100110: OUT = A^B;
        6'b00100111: OUT = ~(A|B);
        6'b00000011: OUT = $signed(A)>>>B;
        6'b00000010: OUT = A>>B;
        default: OUT = 8'b00000000;
    endcase
 end
        
endmodule