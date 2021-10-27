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
reg rx;
wire tx;
reg [D_BITS-1:0] din1;
reg [D_BITS-1:0] din2;
reg tx_start1;
reg tx_start2;
reg rx1;
reg rx2;
wire tx1;
wire tx2;
wire tx_done1;
wire tx_done2;
wire [D_BITS-1:0] dout1;
wire [D_BITS-1:0] dout2;
wire rx_done1;
wire rx_done2;
integer i = 0;
integer j = 0;

initial begin
clock=1'b0;
reset=1'b1;
repeat(2)@(posedge clock);
reset=1'b0;
rx1 = 1'b1;
tx_start2 = 1'b0;
din1 = $urandom($time)%(2**D_BITS);
tx_start1 = 1'b1;
#100
tx_start1 = 1'b0;
end

initial $monitor("din1 = %b", din1, $time);
initial $monitor("rx2done = %b", rx_done2, $time);

always@(posedge clock) begin
rx <= tx1;
rx2 <= tx;
end

always@(posedge clock) begin
 if(rx_done2==1'b1) begin
 $display("dout2 = %b", dout2, $time);
 end
end

always@(posedge clock) begin
    if(tx_done1==1'b1) begin
          if(i==0) begin
            din1 <= $urandom($time)%(2**D_BITS);
            tx_start1 <= 1'b1;
            #100
            tx_start1 <= 1'b0;
            i <= 1;
          end
    
    else if(i==1) begin
            j <= $urandom($time)% 9;
        case(j)
             0: din1 <= 8'b00100000;
             1: din1 <= 8'b00100010;
             2: din1 <= 8'b00100100;
             3: din1 <= 8'b00100101;
             4: din1 <= 8'b00100110;
             5: din1 <= 8'b00100111;
             6: din1 <= 8'b00000011;
             7: din1 <= 8'b00000010;
             8: din1 <= 8'b00111111;
         endcase
            tx_start1 <= 1'b1;
            #100
            tx_start1 <= 1'b0;
            i = 2;
    end
    
    else if(i==2) begin
            din1 <= $urandom($time)%(2**D_BITS);
            tx_start1 <= 1'b1;
            #100
            tx_start1 <= 1'b0;
            i = 0;
    end
    end
end

always begin
    #`CLK clock = ~clock;
end


UART#(.CLK_POR_TICK(CLK_POR_TICK), .D_BITS(D_BITS), .PARITY(PARITY), .STOP_BITS(STOP_BITS)) 
uart1(.clock(clock), .reset(reset), .din(din1), .tx_start(tx_start1), .rx(rx1), .tx(tx1), .tx_done(tx_done1), .dout(dout1), .rx_done(rx_done1));

UART#(.CLK_POR_TICK(CLK_POR_TICK), .D_BITS(D_BITS), .PARITY(PARITY), .STOP_BITS(STOP_BITS)) 
uart2(.clock(clock), .reset(reset), .din(din2), .tx_start(tx_start2), .rx(rx2), .tx(tx2), .tx_done(tx_done2), .dout(dout2), .rx_done(rx_done2));

Top#(.CLK_POR_TICK(CLK_POR_TICK), .D_BITS(D_BITS), .SIZE_FIFO(SIZE_FIFO), .PARITY(PARITY), .STOP_BITS(STOP_BITS))
top (.clock(clock), .reset(reset), .rx(rx), .tx(tx));

endmodule
