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
reg [D_BITS-1:0] datos;
reg tx_start1;
wire tx1;
wire tx_done1;
reg rx;
wire tx;
reg rx1;
wire rx_done1;
wire [D_BITS-1:0] resultado;
reg [D_BITS-1:0] a, b, op, expect;
integer i = 0;
integer j = 0;
integer test = 0;
integer seed = 3;
integer simtime = 10000000;

initial begin
clock=1'b0;
reset=1'b1;
a = {D_BITS{1'b0}};
b = {D_BITS{1'b0}};
op = {D_BITS{1'b0}};
expect = {D_BITS{1'b0}};
repeat(2)@(posedge clock);
reset=1'b0;
datos = $urandom(($time)*seed)%(2**D_BITS);
tx_start1 = 1'b1;
repeat(5)@(posedge clock);
tx_start1 = 1'b0;
end

initial $monitor("datos = %b", datos, $time);

always@(*) begin
rx = tx1;
rx1 = tx;
end

always@(posedge clock) begin
 if(rx_done1==1'b1) begin
 $display("resultado = %b", resultado, $time);
 end
end

always@(posedge clock) begin
    if(tx_done1==1'b1) begin
          if(i==0) begin
            datos <= $urandom(($time)*seed)%(2**D_BITS);
            a <= datos;
            tx_start1 <= 1'b1;
            repeat(5)@(posedge clock);
            tx_start1 <= 1'b0;
            i <= 1;
          end
    
    else if(i==1) begin
            j <= $urandom(($time)*seed)% 9;
        case(j)
             0: datos <= 8'b00100000;
             1: datos <= 8'b00100010;
             2: datos <= 8'b00100100;
             3: datos <= 8'b00100101;
             4: datos <= 8'b00100110;
             5: datos <= 8'b00100111;
             6: datos <= 8'b00000011;
             7: datos <= 8'b00000010;
             8: datos <= 8'b00111111;
         endcase
            b <= datos;
            tx_start1 <= 1'b1;
            repeat(5)@(posedge clock);
            tx_start1 <= 1'b0;
            i <= 2;
    end
    
    else if(i==2) begin
            datos <= $urandom(($time)*seed)%(2**D_BITS);
            op <= datos;
            tx_start1 <= 1'b1;
            repeat(5)@(posedge clock);
            tx_start1 <= 1'b0;
            i <= 0;
    end
    end
end

always begin
    #`CLK clock = ~clock;
end

always@(posedge clock) begin: assertion_operation
    case(op)
        8'b00100000: expect <= a+b;
        8'b00100010: expect <= a-b;
        8'b00100100: expect <= a&b;
        8'b00100101: expect <= a|b;
        8'b00100110: expect <= a^b;
        8'b00100111: expect <= ~(a|b);
        8'b00000011: expect <= $signed(a)>>>b;
        8'b00000010: expect <= a>>b;
        default: expect <= 8'b00000000;
    endcase
    
  if(rx_done1==1'b1) begin   
    if(expect!=resultado) begin
        $display("Error en operacion %b en tiempo %d ns", op, $time);
        test <= 1;
    end
    
    if($time>simtime) begin
        if(test==0) 
            $display("Test Pass");
        else if(test==1)
            $display("Error"); 
     
     $finish;
    end
end
end

UART#(.CLK_POR_TICK(CLK_POR_TICK), .D_BITS(D_BITS), .PARITY(PARITY), .STOP_BITS(STOP_BITS)) 
uart(.clock(clock), .reset(reset), .din(datos), .tx_start(tx_start1), .rx(rx1), .tx(tx1), .tx_done(tx_done1), .dout(resultado), .rx_done(rx_done1));

Top#(.CLK_POR_TICK(CLK_POR_TICK), .D_BITS(D_BITS), .SIZE_FIFO(SIZE_FIFO), .PARITY(PARITY), .STOP_BITS(STOP_BITS))
top (.clock(clock), .reset(reset), .rx(rx), .tx(tx));


endmodule