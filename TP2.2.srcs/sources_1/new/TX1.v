`timescale 1ns / 1ps

module TX1
#(
	parameter D_BITS=8,
	parameter PARITY=1,
	parameter STOP_BITS=2
)
(
     input wire clock,
     input wire reset,
     input wire [D_BITS-1:0] din,
     input wire tx_start,
     input wire ticks,
     output wire tx,
     output wire tx_done
);

localparam T_IDLE   = 5'b00001;
localparam T_START  = 5'b00010;
localparam T_DATA   = 5'b00100;
localparam T_PARITY = 5'b01000;
localparam T_STOP   = 5'b10000;

reg [3:0] t_ticks, t_ticks_next;

reg [4:0] t_state = T_IDLE;
reg [4:0] t_next_state = T_START;

reg [2:0] t_bits, t_bits_next;
reg [1:0] t_stop_bits, t_stop_bits_next;
reg t_data, t_data_next;
reg [D_BITS-1:0] t_din, t_din_next;
reg t_done, t_done_next;
integer t_cont_unos, t_cont_unos_next;

always@(posedge clock) begin: Memoria_transmisor
     if(reset) begin 
        t_state <= T_IDLE;
        t_ticks <= {4{1'b0}};
        t_bits <= 3'b000;
        t_data <= 1'b1;
        t_done <= 1'b0;
        t_din <= {D_BITS{1'b0}};
        t_stop_bits <= 2'b00;
        t_cont_unos <= 0;
    end
    else begin
        t_state <= t_next_state;
        t_ticks <= t_ticks_next;
        t_bits <= t_bits_next;
        t_data <= t_data_next;
        t_done <= t_done_next;
        t_din <= t_din_next;
        t_stop_bits <= t_stop_bits_next; 
        t_cont_unos <= t_cont_unos_next;
    end
end

always@(*) begin: MdE_transmisor

t_next_state = t_state;
t_ticks_next = t_ticks;
t_bits_next = t_bits;
t_data_next = t_data;
t_done_next = t_done;
t_din_next = t_din;
t_stop_bits_next = t_stop_bits;
t_cont_unos_next = t_cont_unos;

case(t_state)
    T_IDLE: begin
        t_ticks_next = {4{1'b0}};
        t_bits_next = 3'b000;
        t_done_next = 1'b0;
        t_data_next = 1'b1;
        t_stop_bits_next = 2'b00;
        t_cont_unos_next = 0;
            if(tx_start==1'b1) begin
                t_next_state = T_START;
                t_data_next = 1'b0;
                t_din_next = din;
            end        
            else t_next_state = T_IDLE;              
        end
        T_START: begin
        if(ticks) begin
            if(t_ticks==15) begin 
            t_next_state = T_DATA;
            t_data_next = t_din[0]; 
            if(t_din[0]==1'b1) t_cont_unos_next = t_cont_unos + 1;          
            t_ticks_next = {4{1'b0}};
            end
            else begin 
            t_next_state = T_START;
            t_ticks_next = t_ticks + 4'b0001;
            end
        end
        else t_next_state = T_START;
        end
        T_DATA: begin
        if(ticks) begin
            if(t_ticks==15 && t_bits<D_BITS-1) begin
            t_next_state = T_DATA;
            t_bits_next = t_bits + 3'b001;
            t_data_next = t_din[t_bits_next];
            if(t_din[t_bits_next]==1'b1) t_cont_unos_next = t_cont_unos + 1; 
            t_ticks_next = {4{1'b0}};
            end
            else if(t_ticks==15 && t_bits==D_BITS-1) begin 
            t_ticks_next = {4{1'b0}};   
                if(PARITY==1) begin 
                    t_next_state = T_PARITY;
                        if(t_cont_unos%2==1) t_data_next = 1'b1;
                        else if(t_cont_unos%2==0) t_data_next = 1'b0;
                end
                else begin
                    t_next_state = T_STOP;
                    t_data_next = 1'b1;  
                end
            end 
            else begin 
            t_next_state = T_DATA;
            t_ticks_next = t_ticks + 4'b0001;
            end
        end
        else t_next_state = T_DATA;
        end
        T_PARITY: begin
        if(ticks) begin
            if(t_ticks==15) begin 
            t_next_state = T_STOP;
            t_data_next = 1'b1;          
            t_ticks_next = {4{1'b0}};
            end
            else begin 
            t_next_state = T_PARITY;
            t_ticks_next = t_ticks + 4'b0001;
            end
        end
        else t_next_state = T_PARITY;
        end
        T_STOP: begin
        if(ticks) begin
            if(t_ticks==15) begin
              if(t_stop_bits==(STOP_BITS-1)) begin
                    t_next_state = T_IDLE;  
                    t_data_next = 1'b1;
                    t_done_next = 1'b1;
              end
              else begin
                   t_next_state = T_STOP;  
                   t_data_next = 1'b1;
                   t_ticks_next = {4{1'b0}};
                   t_stop_bits_next = t_stop_bits + 2'b01;
              end
            end
            else begin 
            t_ticks_next = t_ticks + 4'b0001;
            t_next_state = T_STOP;
            end
        end
        end
        default: begin
        t_next_state = t_state;
        t_ticks_next = t_ticks;
        t_bits_next = t_bits;
        t_data_next = t_data;
        t_done_next = t_done;
        t_din_next = t_din;
        t_stop_bits_next = t_stop_bits;
        t_cont_unos_next = t_cont_unos;
        end
        endcase
end

assign tx = t_data;                       //Salida serial del transmisor
assign tx_done = t_done;

endmodule