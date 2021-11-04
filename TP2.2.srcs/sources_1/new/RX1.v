`timescale 1ns / 1ps

module RX1
#(
	parameter D_BITS=8,
	parameter PARITY=1,
	parameter STOP_BITS=2
)
(
     input wire clock,
     input wire reset,
     input wire rx,
     input wire ticks,
     output wire [D_BITS-1:0] dout,
     output wire rx_done
);

localparam R_IDLE   = 5'b00001;
localparam R_START  = 5'b00010;
localparam R_DATA   = 5'b00100;
localparam R_PARITY = 5'b01000;
localparam R_STOP   = 5'b10000;  

reg [3:0] r_ticks, r_ticks_next;

reg [4:0] r_state = R_IDLE;
reg [4:0] r_next_state = R_START;

reg [2:0] r_bits, r_bits_next;
reg [1:0] r_stop_bits, r_stop_bits_next;
reg [D_BITS-1:0] r_data, r_data_next;
reg r_done, r_done_next;
integer r_cont_unos, r_cont_unos_next;


always@(posedge clock) begin: Memoria_receptor
    if(reset) begin 
        r_state <= R_IDLE;
        r_ticks <= {4{1'b0}};
        r_bits <= 3'b000;
        r_data <= {D_BITS{1'b0}};
        r_done <= 1'b0;
        r_stop_bits <= 2'b00;
        r_cont_unos <= 0;
    end
    else begin
        r_state <= r_next_state;
        r_ticks <= r_ticks_next;
        r_bits <= r_bits_next;
        r_data <= r_data_next;
        r_done <= r_done_next;
        r_stop_bits <= r_stop_bits_next;
        r_cont_unos <= r_cont_unos_next; 
    end
end

always@(*) begin: MdE_receptor
r_next_state = r_state;
r_ticks_next = r_ticks;
r_bits_next = r_bits;
r_data_next = r_data;
r_done_next = r_done;
r_stop_bits_next = r_stop_bits;
r_cont_unos_next = r_cont_unos;

case(r_state)
    R_IDLE: begin
        r_ticks_next = {4{1'b0}};
        r_bits_next = 3'b000;
        r_data_next = {D_BITS{1'b0}}; 
        r_done_next = 1'b0;
        r_stop_bits_next = 2'b00;
        r_cont_unos_next = 0;
        if(rx==1'b0) r_next_state = R_START;        //Bit start detectado.
        else r_next_state = R_IDLE;
        end
        R_START: begin
        if(ticks) begin
            if(r_ticks==7 && rx==1'b0) begin     
            r_next_state = R_DATA;                //Pasaron 7 ticks y sigue en cero
            r_ticks_next = {4{1'b0}};
            end
            else if(r_ticks==7 && rx==1'b1) r_next_state = R_IDLE;
            else begin
            r_next_state = R_START;
            r_ticks_next = r_ticks + 4'b0001;
            end
        end
        else r_next_state = R_START;
        end
        R_DATA: begin
        if(ticks) begin
            if(r_ticks==15 && r_bits<D_BITS-1) begin
            r_data_next = {rx,r_data[D_BITS-1:1]};
            if(rx==1'b1) r_cont_unos_next = r_cont_unos + 1;
            r_bits_next = r_bits + 3'b001;
            r_ticks_next = {4{1'b0}};
            r_next_state = R_DATA;
            end
            else if(r_ticks==15 && r_bits==D_BITS-1) begin
            r_data_next = {rx,r_data[D_BITS-1:1]};
            if(rx==1'b1) r_cont_unos_next = r_cont_unos + 1;
            r_ticks_next = {4{1'b0}};
                if(PARITY==1) r_next_state = R_PARITY;                            //Se guardaron los datos
                else r_next_state = R_STOP;
            end
            else begin
            r_next_state = R_DATA;
            r_ticks_next = r_ticks + 4'b0001;
            end
        end
        else r_next_state = R_DATA;
        end
        R_PARITY: begin
        if(ticks) begin
            if(r_ticks==15 && rx==1'b1) begin                          //si el bit de paridad es uno y la cantidad de unos es par esta mal
                r_ticks_next = {4{1'b0}};
                if(r_cont_unos%2==1) r_next_state = R_STOP;        //impar
                else r_next_state = R_IDLE;
            end
            else if(r_ticks==15 && rx==1'b0) begin                     //si el bit de paridad es cero y la cantidad de unos es impar esta mal
                r_ticks_next = {4{1'b0}};
                if(r_cont_unos%2==0) r_next_state = R_STOP;        //par 
                else r_next_state = R_IDLE;
            end
            else begin
            r_next_state = R_PARITY;
            r_ticks_next = r_ticks + 4'b0001;
            end
        end
        else r_next_state = R_PARITY;
        end
        R_STOP: begin
        if(ticks) begin
            if(r_ticks==15 && rx==1'b1) begin
                if(r_stop_bits==(STOP_BITS-1)) begin
                    r_next_state = R_IDLE;  
                    r_done_next = 1'b1;
                end
                else begin
                    r_ticks_next = {4{1'b0}};
                    r_next_state = R_STOP;
                    r_stop_bits_next = r_stop_bits + 2'b01;
                end
            end
            else if(r_ticks==15 && rx==1'b0) begin
            r_next_state = R_IDLE;  
            end
            else begin
            r_next_state = R_STOP;
            r_ticks_next = r_ticks + 4'b0001;
            end
        end
        else r_next_state = R_STOP;
        end
        default: begin
        r_next_state = r_state;
        r_ticks_next = r_ticks;
        r_bits_next = r_bits;
        r_done_next = r_done;
        r_data_next = r_data;
        r_stop_bits_next = r_stop_bits;
        r_cont_unos_next = r_cont_unos;
        end
        endcase
end

assign dout = r_data;
assign rx_done = r_done;

endmodule