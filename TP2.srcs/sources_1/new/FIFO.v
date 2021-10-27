`timescale 1ns / 1ps

module FIFO
#(
	parameter D_BITS=8,
	parameter SIZE_FIFO=3
)
(
    input wire clock,
    input wire reset,
    input wire [D_BITS-1:0] tx_data_write,  
    input wire [D_BITS-1:0] rx_data_write,  
    input wire tx_read,                      
    input wire tx_write,
    input wire rx_write,                               
    input wire rx_read,
    output wire tx_start,                   
    output wire tx_full,
    output wire rx_empty,
    output wire rx_full,
    output wire [D_BITS-1:0] tx_data_read,   
    output wire [D_BITS-1:0] rx_data_read   
   
);

reg [D_BITS-1:0] r_memoria [SIZE_FIFO**2-1:0];
reg [D_BITS-1:0] t_memoria [SIZE_FIFO**2-1:0];

reg [SIZE_FIFO-1:0] r_write_ptr, r_w_ptr_next, r_w_ptr_sig;
reg [SIZE_FIFO-1:0] r_read_ptr, r_r_ptr_next, r_r_ptr_sig;
reg r_full, r_empty, r_full_next, r_empty_next;
wire r_write_enable;

reg [SIZE_FIFO-1:0] t_write_ptr, t_w_ptr_next, t_w_ptr_sig;
reg [SIZE_FIFO-1:0] t_read_ptr, t_r_ptr_next, t_r_ptr_sig;
reg t_full, t_empty, t_full_next, t_empty_next;
wire t_write_enable;

always@(posedge clock) begin: Memoria_FIFO_receptor
    if(reset) begin
       r_write_ptr<={SIZE_FIFO-1{1'b0}};
       r_read_ptr<={SIZE_FIFO-1{1'b0}};
       r_full<=1'b0;
       r_empty<=1'b1;
    end
    else  begin
       r_write_ptr<=r_w_ptr_next;
       r_read_ptr<=r_r_ptr_next;
       r_full<=r_full_next;
       r_empty<=r_empty_next;
    end
end

always@(*) begin: Logica_FIFO_receptor
r_w_ptr_sig = r_write_ptr + {{SIZE_FIFO-2{1'b0}}, 1'b1};
r_r_ptr_sig = r_read_ptr + {{SIZE_FIFO-2{1'b0}}, 1'b1};
r_w_ptr_next = r_write_ptr;
r_r_ptr_next = r_read_ptr;
r_full_next = r_full;
r_empty_next = r_empty;

    case({rx_write, rx_read})
        2'b01: begin                      
        if(~r_empty) begin    
            r_r_ptr_next = r_r_ptr_sig;
            r_full_next = 1'b0;
            if(r_r_ptr_sig==r_write_ptr) r_empty_next = 1'b1;
        end
        end
        2'b10: begin
        if(~r_full) begin    
            r_w_ptr_next = r_w_ptr_sig;
            r_empty_next = 1'b0;
            if(r_w_ptr_sig==r_read_ptr) r_full_next = 1'b1;
        end
        end
        2'b11: begin
        r_r_ptr_next = r_r_ptr_sig;
        r_w_ptr_next = r_w_ptr_sig;
        end
        default: begin
        r_w_ptr_next = r_write_ptr;
        r_r_ptr_next = r_read_ptr;
        r_full_next = r_full;
        r_empty_next = r_empty;
        end
    endcase
 end

always@(posedge clock) begin: RW_FIFO_receptor
if(r_write_enable) r_memoria[r_write_ptr] <= rx_data_write;
end

assign r_write_enable = rx_write & ~r_full;
assign rx_data_read = r_memoria[r_read_ptr];
assign rx_empty = r_empty;
assign rx_full = r_full;

always@(posedge clock) begin: Memoria_FIFO_transmisor
    if(reset) begin
       t_write_ptr<={SIZE_FIFO-1{1'b0}};
       t_read_ptr<={SIZE_FIFO-1{1'b0}};
       t_full<=1'b0;
       t_empty<=1'b1;
    end
    else  begin
       t_write_ptr<=t_w_ptr_next;
       t_read_ptr<=t_r_ptr_next;
       t_full<=t_full_next;
       t_empty<=t_empty_next;
    end
end

always@(*) begin: Logica_FIFO_transmisor
t_w_ptr_sig = t_write_ptr + {{SIZE_FIFO-2{1'b0}}, 1'b1};
t_r_ptr_sig = t_read_ptr + {{SIZE_FIFO-2{1'b0}}, 1'b1};
t_w_ptr_next = t_write_ptr;
t_r_ptr_next = t_read_ptr;
t_full_next = t_full;
t_empty_next = t_empty;

    case({tx_write, tx_read})
        2'b01: begin                      
        if(~t_empty) begin 
            t_r_ptr_next = t_r_ptr_sig;
            t_full_next = 1'b0;
            if(t_r_ptr_sig==t_write_ptr) t_empty_next = 1'b1;
        end
        end
        2'b10: begin
        if(~t_full) begin  
            t_w_ptr_next = t_w_ptr_sig;
            t_empty_next = 1'b0;
            if(t_w_ptr_sig==t_read_ptr) t_full_next = 1'b1;
        end
        end
        2'b11: begin
        t_r_ptr_next = t_r_ptr_sig;
        t_w_ptr_next = t_w_ptr_sig;
        end
        default: begin
        t_w_ptr_next = t_write_ptr;
        t_r_ptr_next = t_read_ptr;
        t_full_next = t_full;
        t_empty_next = t_empty;
        end
    endcase
 end

always@(posedge clock) begin: RW_FIFO_transmisor
if(t_write_enable) t_memoria[t_write_ptr] <= tx_data_write;
end

assign t_write_enable = tx_write & ~t_full;
assign tx_data_read = t_memoria[t_read_ptr];
assign tx_start = ~t_empty;
assign tx_full = t_full;

endmodule