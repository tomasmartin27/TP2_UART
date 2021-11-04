`timescale 1ns / 1ps

module ALU
#(
    parameter D_BITS = 8
)
(
    input wire [D_BITS-1:0] a,
    input wire [D_BITS-1:0] b,
    input wire [D_BITS-1:0] op,
    output wire [D_BITS-1:0] out
);

reg [D_BITS-1:0] r_out;

always @(*) begin: ALU
    case(op)
        8'b00100000: r_out = a+b;
        8'b00100010: r_out = a-b;
        8'b00100100: r_out = a&b;
        8'b00100101: r_out = a|b;
        8'b00100110: r_out = a^b;
        8'b00100111: r_out = ~(a|b);
        8'b00000011: r_out = $signed(a)>>>b;
        8'b00000010: r_out = a>>b;
        default: r_out = {D_BITS{1'b0}};
    endcase
 end
 
 assign out = r_out;
        
endmodule