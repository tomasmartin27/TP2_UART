// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Oct 28 17:27:46 2021
// Host        : DESKTOP-98G2N7A running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/TomasMartin/TP2/TP2.sim/sim_1/synth/timing/xsim/UART_tb_time_synth.v
// Design      : UART
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* CLK_POR_TICK = "163" *) (* D_BITS = "8" *) (* PARITY = "1" *) 
(* R_DATA = "5'b00100" *) (* R_IDLE = "5'b00001" *) (* R_PARITY = "5'b01000" *) 
(* R_START = "5'b00010" *) (* R_STOP = "5'b10000" *) (* STOP_BITS = "2" *) 
(* T_DATA = "5'b00100" *) (* T_IDLE = "5'b00001" *) (* T_PARITY = "5'b01000" *) 
(* T_START = "5'b00010" *) (* T_STOP = "5'b10000" *) 
(* NotValidForBitStream *)
module UART
   (clock,
    reset,
    din,
    tx_start,
    rx,
    tx,
    tx_done,
    dout,
    rx_done);
  input clock;
  input reset;
  input [7:0]din;
  input tx_start;
  input rx;
  output tx;
  output tx_done;
  output [7:0]dout;
  output rx_done;

  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [11:0]count;
  wire [11:0]count1;
  wire \count_reg[11]_i_2_n_2 ;
  wire \count_reg[11]_i_2_n_3 ;
  wire \count_reg[4]_i_2_n_0 ;
  wire \count_reg[4]_i_2_n_1 ;
  wire \count_reg[4]_i_2_n_2 ;
  wire \count_reg[4]_i_2_n_3 ;
  wire \count_reg[8]_i_2_n_0 ;
  wire \count_reg[8]_i_2_n_1 ;
  wire \count_reg[8]_i_2_n_2 ;
  wire \count_reg[8]_i_2_n_3 ;
  wire [11:1]data0;
  wire [7:0]din;
  wire [7:0]din_IBUF;
  wire [7:0]dout;
  wire [7:0]dout_OBUF;
  wire [31:1]in10;
  wire [31:1]in13;
  wire [2:0]r_bits;
  wire \r_bits[0]_i_1_n_0 ;
  wire \r_bits[1]_i_1_n_0 ;
  wire \r_bits[1]_i_2_n_0 ;
  wire \r_bits[1]_i_3_n_0 ;
  wire \r_bits[2]_i_1_n_0 ;
  wire \r_bits[2]_i_2_n_0 ;
  wire \r_bits[2]_i_3_n_0 ;
  wire [31:0]r_cont_unos;
  wire \r_cont_unos[0]_i_1_n_0 ;
  wire \r_cont_unos[10]_i_1_n_0 ;
  wire \r_cont_unos[11]_i_1_n_0 ;
  wire \r_cont_unos[12]_i_1_n_0 ;
  wire \r_cont_unos[13]_i_1_n_0 ;
  wire \r_cont_unos[14]_i_1_n_0 ;
  wire \r_cont_unos[15]_i_1_n_0 ;
  wire \r_cont_unos[16]_i_1_n_0 ;
  wire \r_cont_unos[17]_i_1_n_0 ;
  wire \r_cont_unos[18]_i_1_n_0 ;
  wire \r_cont_unos[19]_i_1_n_0 ;
  wire \r_cont_unos[1]_i_1_n_0 ;
  wire \r_cont_unos[20]_i_1_n_0 ;
  wire \r_cont_unos[21]_i_1_n_0 ;
  wire \r_cont_unos[22]_i_1_n_0 ;
  wire \r_cont_unos[23]_i_1_n_0 ;
  wire \r_cont_unos[24]_i_1_n_0 ;
  wire \r_cont_unos[25]_i_1_n_0 ;
  wire \r_cont_unos[26]_i_1_n_0 ;
  wire \r_cont_unos[27]_i_1_n_0 ;
  wire \r_cont_unos[28]_i_1_n_0 ;
  wire \r_cont_unos[29]_i_1_n_0 ;
  wire \r_cont_unos[2]_i_1_n_0 ;
  wire \r_cont_unos[30]_i_1_n_0 ;
  wire \r_cont_unos[31]_i_2_n_0 ;
  wire \r_cont_unos[3]_i_1_n_0 ;
  wire \r_cont_unos[4]_i_1_n_0 ;
  wire \r_cont_unos[5]_i_1_n_0 ;
  wire \r_cont_unos[6]_i_1_n_0 ;
  wire \r_cont_unos[7]_i_1_n_0 ;
  wire \r_cont_unos[8]_i_1_n_0 ;
  wire \r_cont_unos[9]_i_1_n_0 ;
  wire r_cont_unos_next;
  wire \r_cont_unos_reg[12]_i_2_n_0 ;
  wire \r_cont_unos_reg[12]_i_2_n_1 ;
  wire \r_cont_unos_reg[12]_i_2_n_2 ;
  wire \r_cont_unos_reg[12]_i_2_n_3 ;
  wire \r_cont_unos_reg[16]_i_2_n_0 ;
  wire \r_cont_unos_reg[16]_i_2_n_1 ;
  wire \r_cont_unos_reg[16]_i_2_n_2 ;
  wire \r_cont_unos_reg[16]_i_2_n_3 ;
  wire \r_cont_unos_reg[20]_i_2_n_0 ;
  wire \r_cont_unos_reg[20]_i_2_n_1 ;
  wire \r_cont_unos_reg[20]_i_2_n_2 ;
  wire \r_cont_unos_reg[20]_i_2_n_3 ;
  wire \r_cont_unos_reg[24]_i_2_n_0 ;
  wire \r_cont_unos_reg[24]_i_2_n_1 ;
  wire \r_cont_unos_reg[24]_i_2_n_2 ;
  wire \r_cont_unos_reg[24]_i_2_n_3 ;
  wire \r_cont_unos_reg[28]_i_2_n_0 ;
  wire \r_cont_unos_reg[28]_i_2_n_1 ;
  wire \r_cont_unos_reg[28]_i_2_n_2 ;
  wire \r_cont_unos_reg[28]_i_2_n_3 ;
  wire \r_cont_unos_reg[31]_i_3_n_2 ;
  wire \r_cont_unos_reg[31]_i_3_n_3 ;
  wire \r_cont_unos_reg[4]_i_2_n_0 ;
  wire \r_cont_unos_reg[4]_i_2_n_1 ;
  wire \r_cont_unos_reg[4]_i_2_n_2 ;
  wire \r_cont_unos_reg[4]_i_2_n_3 ;
  wire \r_cont_unos_reg[8]_i_2_n_0 ;
  wire \r_cont_unos_reg[8]_i_2_n_1 ;
  wire \r_cont_unos_reg[8]_i_2_n_2 ;
  wire \r_cont_unos_reg[8]_i_2_n_3 ;
  wire r_data_next;
  wire [7:0]r_data_next0_in;
  wire r_done_i_2_n_0;
  wire r_done_i_3_n_0;
  wire r_done_next;
  wire [4:0]r_next_state;
  wire [4:0]r_state;
  wire \r_state[0]_i_2_n_0 ;
  wire \r_state[0]_i_3_n_0 ;
  wire \r_state[0]_i_4_n_0 ;
  wire \r_state[0]_i_5_n_0 ;
  wire \r_state[1]_i_2_n_0 ;
  wire \r_state[2]_i_2_n_0 ;
  wire \r_state[2]_i_3_n_0 ;
  wire \r_state[3]_i_2_n_0 ;
  wire \r_state[4]_i_1_n_0 ;
  wire \r_state[4]_i_3_n_0 ;
  wire \r_state[4]_i_4_n_0 ;
  wire \r_state[4]_i_5_n_0 ;
  wire [1:0]r_stop_bits;
  wire \r_stop_bits[0]_i_1_n_0 ;
  wire \r_stop_bits[0]_i_2_n_0 ;
  wire \r_stop_bits[1]_i_1_n_0 ;
  wire \r_stop_bits[1]_i_2_n_0 ;
  wire \r_stop_bits[1]_i_3_n_0 ;
  wire \r_stop_bits[1]_i_4_n_0 ;
  wire [3:0]r_ticks;
  wire \r_ticks[0]_i_1_n_0 ;
  wire \r_ticks[0]_i_2_n_0 ;
  wire \r_ticks[0]_i_3_n_0 ;
  wire \r_ticks[1]_i_1_n_0 ;
  wire \r_ticks[1]_i_2_n_0 ;
  wire \r_ticks[2]_i_1_n_0 ;
  wire \r_ticks[3]_i_2_n_0 ;
  wire \r_ticks[3]_i_3_n_0 ;
  wire \r_ticks[3]_i_4_n_0 ;
  wire \r_ticks[3]_i_5_n_0 ;
  wire \r_ticks[3]_i_6_n_0 ;
  wire \r_ticks[3]_i_7_n_0 ;
  wire r_ticks_next;
  wire reset;
  wire reset_IBUF;
  wire rx;
  wire rx_IBUF;
  wire rx_done;
  wire rx_done_OBUF;
  wire [2:0]t_bits;
  wire \t_bits[0]_i_1_n_0 ;
  wire \t_bits[0]_i_2_n_0 ;
  wire \t_bits[1]_i_1_n_0 ;
  wire \t_bits[1]_i_2_n_0 ;
  wire \t_bits[2]_i_1_n_0 ;
  wire \t_bits[2]_i_2_n_0 ;
  wire \t_bits[2]_i_3_n_0 ;
  wire [31:0]t_cont_unos;
  wire \t_cont_unos[0]_i_1_n_0 ;
  wire \t_cont_unos[10]_i_1_n_0 ;
  wire \t_cont_unos[11]_i_1_n_0 ;
  wire \t_cont_unos[12]_i_1_n_0 ;
  wire \t_cont_unos[13]_i_1_n_0 ;
  wire \t_cont_unos[14]_i_1_n_0 ;
  wire \t_cont_unos[15]_i_1_n_0 ;
  wire \t_cont_unos[16]_i_1_n_0 ;
  wire \t_cont_unos[17]_i_1_n_0 ;
  wire \t_cont_unos[18]_i_1_n_0 ;
  wire \t_cont_unos[19]_i_1_n_0 ;
  wire \t_cont_unos[1]_i_1_n_0 ;
  wire \t_cont_unos[20]_i_1_n_0 ;
  wire \t_cont_unos[21]_i_1_n_0 ;
  wire \t_cont_unos[22]_i_1_n_0 ;
  wire \t_cont_unos[23]_i_1_n_0 ;
  wire \t_cont_unos[24]_i_1_n_0 ;
  wire \t_cont_unos[25]_i_1_n_0 ;
  wire \t_cont_unos[26]_i_1_n_0 ;
  wire \t_cont_unos[27]_i_1_n_0 ;
  wire \t_cont_unos[28]_i_1_n_0 ;
  wire \t_cont_unos[29]_i_1_n_0 ;
  wire \t_cont_unos[2]_i_1_n_0 ;
  wire \t_cont_unos[30]_i_1_n_0 ;
  wire \t_cont_unos[31]_i_10_n_0 ;
  wire \t_cont_unos[31]_i_2_n_0 ;
  wire \t_cont_unos[31]_i_3_n_0 ;
  wire \t_cont_unos[31]_i_4_n_0 ;
  wire \t_cont_unos[31]_i_5_n_0 ;
  wire \t_cont_unos[31]_i_6_n_0 ;
  wire \t_cont_unos[31]_i_8_n_0 ;
  wire \t_cont_unos[31]_i_9_n_0 ;
  wire \t_cont_unos[3]_i_1_n_0 ;
  wire \t_cont_unos[4]_i_1_n_0 ;
  wire \t_cont_unos[5]_i_1_n_0 ;
  wire \t_cont_unos[6]_i_1_n_0 ;
  wire \t_cont_unos[7]_i_1_n_0 ;
  wire \t_cont_unos[8]_i_1_n_0 ;
  wire \t_cont_unos[9]_i_1_n_0 ;
  wire t_cont_unos_next;
  wire \t_cont_unos_reg[12]_i_2_n_0 ;
  wire \t_cont_unos_reg[12]_i_2_n_1 ;
  wire \t_cont_unos_reg[12]_i_2_n_2 ;
  wire \t_cont_unos_reg[12]_i_2_n_3 ;
  wire \t_cont_unos_reg[16]_i_2_n_0 ;
  wire \t_cont_unos_reg[16]_i_2_n_1 ;
  wire \t_cont_unos_reg[16]_i_2_n_2 ;
  wire \t_cont_unos_reg[16]_i_2_n_3 ;
  wire \t_cont_unos_reg[20]_i_2_n_0 ;
  wire \t_cont_unos_reg[20]_i_2_n_1 ;
  wire \t_cont_unos_reg[20]_i_2_n_2 ;
  wire \t_cont_unos_reg[20]_i_2_n_3 ;
  wire \t_cont_unos_reg[24]_i_2_n_0 ;
  wire \t_cont_unos_reg[24]_i_2_n_1 ;
  wire \t_cont_unos_reg[24]_i_2_n_2 ;
  wire \t_cont_unos_reg[24]_i_2_n_3 ;
  wire \t_cont_unos_reg[28]_i_2_n_0 ;
  wire \t_cont_unos_reg[28]_i_2_n_1 ;
  wire \t_cont_unos_reg[28]_i_2_n_2 ;
  wire \t_cont_unos_reg[28]_i_2_n_3 ;
  wire \t_cont_unos_reg[31]_i_7_n_2 ;
  wire \t_cont_unos_reg[31]_i_7_n_3 ;
  wire \t_cont_unos_reg[4]_i_2_n_0 ;
  wire \t_cont_unos_reg[4]_i_2_n_1 ;
  wire \t_cont_unos_reg[4]_i_2_n_2 ;
  wire \t_cont_unos_reg[4]_i_2_n_3 ;
  wire \t_cont_unos_reg[8]_i_2_n_0 ;
  wire \t_cont_unos_reg[8]_i_2_n_1 ;
  wire \t_cont_unos_reg[8]_i_2_n_2 ;
  wire \t_cont_unos_reg[8]_i_2_n_3 ;
  wire t_data_i_2_n_0;
  wire t_data_i_3_n_0;
  wire t_data_i_4_n_0;
  wire t_data_i_5_n_0;
  wire t_data_i_6_n_0;
  wire t_data_next;
  wire [7:0]t_din;
  wire t_din_next;
  wire t_done_i_2_n_0;
  wire t_done_i_3_n_0;
  wire t_done_i_4_n_0;
  wire t_done_i_5_n_0;
  wire t_done_i_6_n_0;
  wire t_done_next;
  wire [4:0]t_next_state;
  wire [4:0]t_state;
  wire \t_state[3]_i_2_n_0 ;
  wire \t_state[4]_i_1_n_0 ;
  wire \t_state[4]_i_3_n_0 ;
  wire \t_state[4]_i_4_n_0 ;
  wire [1:0]t_stop_bits;
  wire \t_stop_bits[0]_i_1_n_0 ;
  wire \t_stop_bits[1]_i_1_n_0 ;
  wire \t_stop_bits[1]_i_2_n_0 ;
  wire \t_stop_bits[1]_i_3_n_0 ;
  wire \t_stop_bits[1]_i_4_n_0 ;
  wire [3:0]t_ticks;
  wire \t_ticks[0]_i_1_n_0 ;
  wire \t_ticks[1]_i_1_n_0 ;
  wire \t_ticks[2]_i_1_n_0 ;
  wire \t_ticks[3]_i_2_n_0 ;
  wire \t_ticks[3]_i_3_n_0 ;
  wire \t_ticks[3]_i_4_n_0 ;
  wire t_ticks_next;
  wire tx;
  wire tx_OBUF;
  wire tx_done;
  wire tx_done_OBUF;
  wire tx_start;
  wire tx_start_IBUF;
  wire [3:2]\NLW_count_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[11]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_r_cont_unos_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_cont_unos_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_t_cont_unos_reg[31]_i_7_CO_UNCONNECTED ;
  wire [3:3]\NLW_t_cont_unos_reg[31]_i_7_O_UNCONNECTED ;

initial begin
 $sdf_annotate("UART_tb_time_synth.sdf",,,,"tool_control");
end
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[10]_i_1 
       (.I0(data0[10]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[11]_i_1 
       (.I0(data0[11]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[1]_i_1 
       (.I0(data0[1]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[2]_i_1 
       (.I0(data0[2]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[3]_i_1 
       (.I0(data0[3]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_1 
       (.I0(data0[4]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[4]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[5]_i_1 
       (.I0(data0[5]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[6]_i_1 
       (.I0(data0[6]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[7]_i_1 
       (.I0(data0[7]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[7]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_1 
       (.I0(data0[8]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[9]_i_1 
       (.I0(data0[9]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(count1[0]),
        .Q(count[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(count1[10]),
        .Q(count[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(count1[11]),
        .Q(count[11]),
        .R(reset_IBUF));
  CARRY4 \count_reg[11]_i_2 
       (.CI(\count_reg[8]_i_2_n_0 ),
        .CO({\NLW_count_reg[11]_i_2_CO_UNCONNECTED [3:2],\count_reg[11]_i_2_n_2 ,\count_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[11]_i_2_O_UNCONNECTED [3],data0[11:9]}),
        .S({1'b0,count[11:9]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(count1[1]),
        .Q(count[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(count1[2]),
        .Q(count[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(count1[3]),
        .Q(count[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(count1[4]),
        .Q(count[4]),
        .R(reset_IBUF));
  CARRY4 \count_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_2_n_0 ,\count_reg[4]_i_2_n_1 ,\count_reg[4]_i_2_n_2 ,\count_reg[4]_i_2_n_3 }),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(count[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(count1[5]),
        .Q(count[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(count1[6]),
        .Q(count[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(count1[7]),
        .Q(count[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(count1[8]),
        .Q(count[8]),
        .R(reset_IBUF));
  CARRY4 \count_reg[8]_i_2 
       (.CI(\count_reg[4]_i_2_n_0 ),
        .CO({\count_reg[8]_i_2_n_0 ,\count_reg[8]_i_2_n_1 ,\count_reg[8]_i_2_n_2 ,\count_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(count[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(count1[9]),
        .Q(count[9]),
        .R(reset_IBUF));
  IBUF \din_IBUF[0]_inst 
       (.I(din[0]),
        .O(din_IBUF[0]));
  IBUF \din_IBUF[1]_inst 
       (.I(din[1]),
        .O(din_IBUF[1]));
  IBUF \din_IBUF[2]_inst 
       (.I(din[2]),
        .O(din_IBUF[2]));
  IBUF \din_IBUF[3]_inst 
       (.I(din[3]),
        .O(din_IBUF[3]));
  IBUF \din_IBUF[4]_inst 
       (.I(din[4]),
        .O(din_IBUF[4]));
  IBUF \din_IBUF[5]_inst 
       (.I(din[5]),
        .O(din_IBUF[5]));
  IBUF \din_IBUF[6]_inst 
       (.I(din[6]),
        .O(din_IBUF[6]));
  IBUF \din_IBUF[7]_inst 
       (.I(din[7]),
        .O(din_IBUF[7]));
  OBUF \dout_OBUF[0]_inst 
       (.I(dout_OBUF[0]),
        .O(dout[0]));
  OBUF \dout_OBUF[1]_inst 
       (.I(dout_OBUF[1]),
        .O(dout[1]));
  OBUF \dout_OBUF[2]_inst 
       (.I(dout_OBUF[2]),
        .O(dout[2]));
  OBUF \dout_OBUF[3]_inst 
       (.I(dout_OBUF[3]),
        .O(dout[3]));
  OBUF \dout_OBUF[4]_inst 
       (.I(dout_OBUF[4]),
        .O(dout[4]));
  OBUF \dout_OBUF[5]_inst 
       (.I(dout_OBUF[5]),
        .O(dout[5]));
  OBUF \dout_OBUF[6]_inst 
       (.I(dout_OBUF[6]),
        .O(dout[6]));
  OBUF \dout_OBUF[7]_inst 
       (.I(dout_OBUF[7]),
        .O(dout[7]));
  LUT6 #(
    .INIT(64'h0FFF0FBFC000C040)) 
    \r_bits[0]_i_1 
       (.I0(\r_state[3]_i_2_n_0 ),
        .I1(r_state[2]),
        .I2(\r_bits[2]_i_2_n_0 ),
        .I3(r_state[0]),
        .I4(\r_state[2]_i_2_n_0 ),
        .I5(r_bits[0]),
        .O(\r_bits[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2FF00000800)) 
    \r_bits[1]_i_1 
       (.I0(r_state[2]),
        .I1(r_bits[0]),
        .I2(\r_bits[1]_i_2_n_0 ),
        .I3(\r_bits[2]_i_2_n_0 ),
        .I4(\r_bits[1]_i_3_n_0 ),
        .I5(r_bits[1]),
        .O(\r_bits[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5554555555555555)) 
    \r_bits[1]_i_2 
       (.I0(r_state[0]),
        .I1(\r_state[4]_i_5_n_0 ),
        .I2(t_done_i_4_n_0),
        .I3(t_done_i_5_n_0),
        .I4(t_done_i_6_n_0),
        .I5(r_state[2]),
        .O(\r_bits[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \r_bits[1]_i_3 
       (.I0(r_bits[2]),
        .I1(r_bits[0]),
        .I2(r_bits[1]),
        .I3(r_state[0]),
        .O(\r_bits[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0FFFCFFFC0400000)) 
    \r_bits[2]_i_1 
       (.I0(\r_state[3]_i_2_n_0 ),
        .I1(r_state[2]),
        .I2(\r_bits[2]_i_2_n_0 ),
        .I3(r_state[0]),
        .I4(\r_bits[2]_i_3_n_0 ),
        .I5(r_bits[2]),
        .O(\r_bits[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000111)) 
    \r_bits[2]_i_2 
       (.I0(r_state[3]),
        .I1(r_state[4]),
        .I2(r_state[2]),
        .I3(r_state[0]),
        .I4(r_state[1]),
        .O(\r_bits[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r_bits[2]_i_3 
       (.I0(r_bits[0]),
        .I1(r_bits[1]),
        .O(\r_bits[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_bits_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_bits[0]_i_1_n_0 ),
        .Q(r_bits[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_bits_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_bits[1]_i_1_n_0 ),
        .Q(r_bits[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_bits_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_bits[2]_i_1_n_0 ),
        .Q(r_bits[2]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_cont_unos[0]_i_1 
       (.I0(r_state[2]),
        .I1(r_cont_unos[0]),
        .O(\r_cont_unos[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[10]_i_1 
       (.I0(r_state[2]),
        .I1(in13[10]),
        .O(\r_cont_unos[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[11]_i_1 
       (.I0(r_state[2]),
        .I1(in13[11]),
        .O(\r_cont_unos[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[12]_i_1 
       (.I0(r_state[2]),
        .I1(in13[12]),
        .O(\r_cont_unos[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[13]_i_1 
       (.I0(r_state[2]),
        .I1(in13[13]),
        .O(\r_cont_unos[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[14]_i_1 
       (.I0(r_state[2]),
        .I1(in13[14]),
        .O(\r_cont_unos[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[15]_i_1 
       (.I0(r_state[2]),
        .I1(in13[15]),
        .O(\r_cont_unos[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[16]_i_1 
       (.I0(r_state[2]),
        .I1(in13[16]),
        .O(\r_cont_unos[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[17]_i_1 
       (.I0(r_state[2]),
        .I1(in13[17]),
        .O(\r_cont_unos[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[18]_i_1 
       (.I0(r_state[2]),
        .I1(in13[18]),
        .O(\r_cont_unos[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[19]_i_1 
       (.I0(r_state[2]),
        .I1(in13[19]),
        .O(\r_cont_unos[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[1]_i_1 
       (.I0(r_state[2]),
        .I1(in13[1]),
        .O(\r_cont_unos[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[20]_i_1 
       (.I0(r_state[2]),
        .I1(in13[20]),
        .O(\r_cont_unos[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[21]_i_1 
       (.I0(r_state[2]),
        .I1(in13[21]),
        .O(\r_cont_unos[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[22]_i_1 
       (.I0(r_state[2]),
        .I1(in13[22]),
        .O(\r_cont_unos[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[23]_i_1 
       (.I0(r_state[2]),
        .I1(in13[23]),
        .O(\r_cont_unos[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[24]_i_1 
       (.I0(r_state[2]),
        .I1(in13[24]),
        .O(\r_cont_unos[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[25]_i_1 
       (.I0(r_state[2]),
        .I1(in13[25]),
        .O(\r_cont_unos[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[26]_i_1 
       (.I0(r_state[2]),
        .I1(in13[26]),
        .O(\r_cont_unos[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[27]_i_1 
       (.I0(r_state[2]),
        .I1(in13[27]),
        .O(\r_cont_unos[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[28]_i_1 
       (.I0(r_state[2]),
        .I1(in13[28]),
        .O(\r_cont_unos[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[29]_i_1 
       (.I0(r_state[2]),
        .I1(in13[29]),
        .O(\r_cont_unos[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[2]_i_1 
       (.I0(r_state[2]),
        .I1(in13[2]),
        .O(\r_cont_unos[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[30]_i_1 
       (.I0(r_state[2]),
        .I1(in13[30]),
        .O(\r_cont_unos[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00008000)) 
    \r_cont_unos[31]_i_1 
       (.I0(\r_bits[2]_i_2_n_0 ),
        .I1(r_state[2]),
        .I2(rx_IBUF),
        .I3(\t_state[4]_i_3_n_0 ),
        .I4(\r_state[4]_i_5_n_0 ),
        .I5(r_state[0]),
        .O(r_cont_unos_next));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[31]_i_2 
       (.I0(r_state[2]),
        .I1(in13[31]),
        .O(\r_cont_unos[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[3]_i_1 
       (.I0(r_state[2]),
        .I1(in13[3]),
        .O(\r_cont_unos[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[4]_i_1 
       (.I0(r_state[2]),
        .I1(in13[4]),
        .O(\r_cont_unos[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[5]_i_1 
       (.I0(r_state[2]),
        .I1(in13[5]),
        .O(\r_cont_unos[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[6]_i_1 
       (.I0(r_state[2]),
        .I1(in13[6]),
        .O(\r_cont_unos[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[7]_i_1 
       (.I0(r_state[2]),
        .I1(in13[7]),
        .O(\r_cont_unos[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[8]_i_1 
       (.I0(r_state[2]),
        .I1(in13[8]),
        .O(\r_cont_unos[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[9]_i_1 
       (.I0(r_state[2]),
        .I1(in13[9]),
        .O(\r_cont_unos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[0]_i_1_n_0 ),
        .Q(r_cont_unos[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[10]_i_1_n_0 ),
        .Q(r_cont_unos[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[11]_i_1_n_0 ),
        .Q(r_cont_unos[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[12]_i_1_n_0 ),
        .Q(r_cont_unos[12]),
        .R(reset_IBUF));
  CARRY4 \r_cont_unos_reg[12]_i_2 
       (.CI(\r_cont_unos_reg[8]_i_2_n_0 ),
        .CO({\r_cont_unos_reg[12]_i_2_n_0 ,\r_cont_unos_reg[12]_i_2_n_1 ,\r_cont_unos_reg[12]_i_2_n_2 ,\r_cont_unos_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in13[12:9]),
        .S(r_cont_unos[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[13]_i_1_n_0 ),
        .Q(r_cont_unos[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[14]_i_1_n_0 ),
        .Q(r_cont_unos[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[15]_i_1_n_0 ),
        .Q(r_cont_unos[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[16] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[16]_i_1_n_0 ),
        .Q(r_cont_unos[16]),
        .R(reset_IBUF));
  CARRY4 \r_cont_unos_reg[16]_i_2 
       (.CI(\r_cont_unos_reg[12]_i_2_n_0 ),
        .CO({\r_cont_unos_reg[16]_i_2_n_0 ,\r_cont_unos_reg[16]_i_2_n_1 ,\r_cont_unos_reg[16]_i_2_n_2 ,\r_cont_unos_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in13[16:13]),
        .S(r_cont_unos[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[17] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[17]_i_1_n_0 ),
        .Q(r_cont_unos[17]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[18] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[18]_i_1_n_0 ),
        .Q(r_cont_unos[18]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[19] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[19]_i_1_n_0 ),
        .Q(r_cont_unos[19]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[1]_i_1_n_0 ),
        .Q(r_cont_unos[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[20] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[20]_i_1_n_0 ),
        .Q(r_cont_unos[20]),
        .R(reset_IBUF));
  CARRY4 \r_cont_unos_reg[20]_i_2 
       (.CI(\r_cont_unos_reg[16]_i_2_n_0 ),
        .CO({\r_cont_unos_reg[20]_i_2_n_0 ,\r_cont_unos_reg[20]_i_2_n_1 ,\r_cont_unos_reg[20]_i_2_n_2 ,\r_cont_unos_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in13[20:17]),
        .S(r_cont_unos[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[21] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[21]_i_1_n_0 ),
        .Q(r_cont_unos[21]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[22] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[22]_i_1_n_0 ),
        .Q(r_cont_unos[22]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[23] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[23]_i_1_n_0 ),
        .Q(r_cont_unos[23]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[24] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[24]_i_1_n_0 ),
        .Q(r_cont_unos[24]),
        .R(reset_IBUF));
  CARRY4 \r_cont_unos_reg[24]_i_2 
       (.CI(\r_cont_unos_reg[20]_i_2_n_0 ),
        .CO({\r_cont_unos_reg[24]_i_2_n_0 ,\r_cont_unos_reg[24]_i_2_n_1 ,\r_cont_unos_reg[24]_i_2_n_2 ,\r_cont_unos_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in13[24:21]),
        .S(r_cont_unos[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[25] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[25]_i_1_n_0 ),
        .Q(r_cont_unos[25]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[26] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[26]_i_1_n_0 ),
        .Q(r_cont_unos[26]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[27] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[27]_i_1_n_0 ),
        .Q(r_cont_unos[27]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[28] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[28]_i_1_n_0 ),
        .Q(r_cont_unos[28]),
        .R(reset_IBUF));
  CARRY4 \r_cont_unos_reg[28]_i_2 
       (.CI(\r_cont_unos_reg[24]_i_2_n_0 ),
        .CO({\r_cont_unos_reg[28]_i_2_n_0 ,\r_cont_unos_reg[28]_i_2_n_1 ,\r_cont_unos_reg[28]_i_2_n_2 ,\r_cont_unos_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in13[28:25]),
        .S(r_cont_unos[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[29] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[29]_i_1_n_0 ),
        .Q(r_cont_unos[29]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[2]_i_1_n_0 ),
        .Q(r_cont_unos[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[30] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[30]_i_1_n_0 ),
        .Q(r_cont_unos[30]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[31] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[31]_i_2_n_0 ),
        .Q(r_cont_unos[31]),
        .R(reset_IBUF));
  CARRY4 \r_cont_unos_reg[31]_i_3 
       (.CI(\r_cont_unos_reg[28]_i_2_n_0 ),
        .CO({\NLW_r_cont_unos_reg[31]_i_3_CO_UNCONNECTED [3:2],\r_cont_unos_reg[31]_i_3_n_2 ,\r_cont_unos_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_cont_unos_reg[31]_i_3_O_UNCONNECTED [3],in13[31:29]}),
        .S({1'b0,r_cont_unos[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[3]_i_1_n_0 ),
        .Q(r_cont_unos[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[4]_i_1_n_0 ),
        .Q(r_cont_unos[4]),
        .R(reset_IBUF));
  CARRY4 \r_cont_unos_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\r_cont_unos_reg[4]_i_2_n_0 ,\r_cont_unos_reg[4]_i_2_n_1 ,\r_cont_unos_reg[4]_i_2_n_2 ,\r_cont_unos_reg[4]_i_2_n_3 }),
        .CYINIT(r_cont_unos[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in13[4:1]),
        .S(r_cont_unos[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[5]_i_1_n_0 ),
        .Q(r_cont_unos[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[6]_i_1_n_0 ),
        .Q(r_cont_unos[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[7]_i_1_n_0 ),
        .Q(r_cont_unos[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[8]_i_1_n_0 ),
        .Q(r_cont_unos[8]),
        .R(reset_IBUF));
  CARRY4 \r_cont_unos_reg[8]_i_2 
       (.CI(\r_cont_unos_reg[4]_i_2_n_0 ),
        .CO({\r_cont_unos_reg[8]_i_2_n_0 ,\r_cont_unos_reg[8]_i_2_n_1 ,\r_cont_unos_reg[8]_i_2_n_2 ,\r_cont_unos_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in13[8:5]),
        .S(r_cont_unos[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next),
        .D(\r_cont_unos[9]_i_1_n_0 ),
        .Q(r_cont_unos[9]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[0]_i_1 
       (.I0(r_state[2]),
        .I1(dout_OBUF[1]),
        .O(r_data_next0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[1]_i_1 
       (.I0(r_state[2]),
        .I1(dout_OBUF[2]),
        .O(r_data_next0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[2]_i_1 
       (.I0(r_state[2]),
        .I1(dout_OBUF[3]),
        .O(r_data_next0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[3]_i_1 
       (.I0(r_state[2]),
        .I1(dout_OBUF[4]),
        .O(r_data_next0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[4]_i_1 
       (.I0(r_state[2]),
        .I1(dout_OBUF[5]),
        .O(r_data_next0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[5]_i_1 
       (.I0(r_state[2]),
        .I1(dout_OBUF[6]),
        .O(r_data_next0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[6]_i_1 
       (.I0(r_state[2]),
        .I1(dout_OBUF[7]),
        .O(r_data_next0_in[6]));
  LUT6 #(
    .INIT(64'h0001000100000100)) 
    \r_data[7]_i_1 
       (.I0(r_state[1]),
        .I1(r_state[4]),
        .I2(r_state[3]),
        .I3(r_state[2]),
        .I4(\r_state[3]_i_2_n_0 ),
        .I5(r_state[0]),
        .O(r_data_next));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[7]_i_2 
       (.I0(rx_IBUF),
        .I1(r_state[2]),
        .O(r_data_next0_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[0]),
        .Q(dout_OBUF[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[1]),
        .Q(dout_OBUF[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[2]),
        .Q(dout_OBUF[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[3]),
        .Q(dout_OBUF[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[4]),
        .Q(dout_OBUF[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[5]),
        .Q(dout_OBUF[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[6]),
        .Q(dout_OBUF[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[7]),
        .Q(dout_OBUF[7]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h0000AAAA20000000)) 
    r_done_i_1
       (.I0(\r_stop_bits[0]_i_2_n_0 ),
        .I1(\r_ticks[0]_i_2_n_0 ),
        .I2(r_done_i_3_n_0),
        .I3(\t_state[4]_i_3_n_0 ),
        .I4(r_state[4]),
        .I5(r_state[0]),
        .O(r_done_next));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    r_done_i_2
       (.I0(r_state[4]),
        .I1(rx_IBUF),
        .I2(r_ticks[2]),
        .I3(r_ticks[0]),
        .I4(r_ticks[1]),
        .I5(r_ticks[3]),
        .O(r_done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    r_done_i_3
       (.I0(r_stop_bits[0]),
        .I1(r_stop_bits[1]),
        .O(r_done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_done_reg
       (.C(clock_IBUF_BUFG),
        .CE(r_done_next),
        .D(r_done_i_2_n_0),
        .Q(rx_done_OBUF),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFF4FFFF)) 
    \r_state[0]_i_1 
       (.I0(\r_state[4]_i_4_n_0 ),
        .I1(\r_state[0]_i_2_n_0 ),
        .I2(\r_state[0]_i_3_n_0 ),
        .I3(\r_state[0]_i_4_n_0 ),
        .I4(\r_state[0]_i_5_n_0 ),
        .I5(\r_state[4]_i_3_n_0 ),
        .O(r_next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \r_state[0]_i_2 
       (.I0(r_state[3]),
        .I1(t_done_i_6_n_0),
        .I2(t_done_i_5_n_0),
        .I3(t_done_i_4_n_0),
        .I4(\r_state[4]_i_5_n_0 ),
        .O(\r_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \r_state[0]_i_3 
       (.I0(\r_state[1]_i_2_n_0 ),
        .I1(rx_IBUF),
        .I2(t_done_i_6_n_0),
        .I3(t_done_i_5_n_0),
        .I4(t_done_i_4_n_0),
        .I5(r_state[1]),
        .O(\r_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_state[0]_i_4 
       (.I0(rx_IBUF),
        .I1(r_state[0]),
        .O(\r_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \r_state[0]_i_5 
       (.I0(r_state[4]),
        .I1(t_done_i_4_n_0),
        .I2(t_done_i_5_n_0),
        .I3(t_done_i_6_n_0),
        .O(\r_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hD0FFD0D0)) 
    \r_state[1]_i_1 
       (.I0(\t_state[4]_i_3_n_0 ),
        .I1(\r_state[1]_i_2_n_0 ),
        .I2(r_state[1]),
        .I3(rx_IBUF),
        .I4(r_state[0]),
        .O(r_next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \r_state[1]_i_2 
       (.I0(r_ticks[3]),
        .I1(r_ticks[2]),
        .I2(r_ticks[0]),
        .I3(r_ticks[1]),
        .O(\r_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFD0F0F0D0D0F0F0)) 
    \r_state[2]_i_1 
       (.I0(\r_state[2]_i_2_n_0 ),
        .I1(\r_state[4]_i_5_n_0 ),
        .I2(r_state[2]),
        .I3(r_state[1]),
        .I4(\t_state[4]_i_3_n_0 ),
        .I5(\r_state[2]_i_3_n_0 ),
        .O(r_next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r_state[2]_i_2 
       (.I0(r_bits[1]),
        .I1(r_bits[0]),
        .I2(r_bits[2]),
        .O(\r_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \r_state[2]_i_3 
       (.I0(rx_IBUF),
        .I1(r_ticks[1]),
        .I2(r_ticks[0]),
        .I3(r_ticks[2]),
        .I4(r_ticks[3]),
        .O(\r_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAC000AAAA0000)) 
    \r_state[3]_i_1 
       (.I0(r_state[3]),
        .I1(r_bits[2]),
        .I2(r_bits[0]),
        .I3(r_bits[1]),
        .I4(\r_state[3]_i_2_n_0 ),
        .I5(r_state[2]),
        .O(r_next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \r_state[3]_i_2 
       (.I0(\r_state[4]_i_5_n_0 ),
        .I1(t_done_i_4_n_0),
        .I2(t_done_i_5_n_0),
        .I3(t_done_i_6_n_0),
        .O(\r_state[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00010116)) 
    \r_state[4]_i_1 
       (.I0(r_state[0]),
        .I1(r_state[1]),
        .I2(r_state[2]),
        .I3(r_state[4]),
        .I4(r_state[3]),
        .O(\r_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888CCCCF888CCCC)) 
    \r_state[4]_i_2 
       (.I0(\r_state[4]_i_3_n_0 ),
        .I1(r_state[4]),
        .I2(\r_state[4]_i_4_n_0 ),
        .I3(r_state[3]),
        .I4(\t_state[4]_i_3_n_0 ),
        .I5(\r_state[4]_i_5_n_0 ),
        .O(r_next_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFBAA)) 
    \r_state[4]_i_3 
       (.I0(\r_state[4]_i_5_n_0 ),
        .I1(r_stop_bits[0]),
        .I2(r_stop_bits[1]),
        .I3(rx_IBUF),
        .O(\r_state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h101F)) 
    \r_state[4]_i_4 
       (.I0(r_cont_unos[31]),
        .I1(\r_ticks[0]_i_2_n_0 ),
        .I2(r_cont_unos[0]),
        .I3(rx_IBUF),
        .O(\r_state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_state[4]_i_5 
       (.I0(r_ticks[2]),
        .I1(r_ticks[0]),
        .I2(r_ticks[1]),
        .I3(r_ticks[3]),
        .O(\r_state[4]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "R_START:00010,R_DATA:00100,R_PARITY:01000,R_STOP:10000,R_IDLE:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \r_state_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\r_state[4]_i_1_n_0 ),
        .D(r_next_state[0]),
        .Q(r_state[0]),
        .S(reset_IBUF));
  (* FSM_ENCODED_STATES = "R_START:00010,R_DATA:00100,R_PARITY:01000,R_STOP:10000,R_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_state_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\r_state[4]_i_1_n_0 ),
        .D(r_next_state[1]),
        .Q(r_state[1]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "R_START:00010,R_DATA:00100,R_PARITY:01000,R_STOP:10000,R_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_state_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\r_state[4]_i_1_n_0 ),
        .D(r_next_state[2]),
        .Q(r_state[2]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "R_START:00010,R_DATA:00100,R_PARITY:01000,R_STOP:10000,R_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_state_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\r_state[4]_i_1_n_0 ),
        .D(r_next_state[3]),
        .Q(r_state[3]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "R_START:00010,R_DATA:00100,R_PARITY:01000,R_STOP:10000,R_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_state_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\r_state[4]_i_1_n_0 ),
        .D(r_next_state[4]),
        .Q(r_state[4]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'hFF557FFF00008000)) 
    \r_stop_bits[0]_i_1 
       (.I0(\r_stop_bits[0]_i_2_n_0 ),
        .I1(\r_stop_bits[1]_i_4_n_0 ),
        .I2(\t_state[4]_i_3_n_0 ),
        .I3(r_state[4]),
        .I4(r_state[0]),
        .I5(r_stop_bits[0]),
        .O(\r_stop_bits[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \r_stop_bits[0]_i_2 
       (.I0(r_state[3]),
        .I1(r_state[2]),
        .I2(r_state[1]),
        .O(\r_stop_bits[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFFBF88880080)) 
    \r_stop_bits[1]_i_1 
       (.I0(\r_stop_bits[1]_i_2_n_0 ),
        .I1(\r_stop_bits[1]_i_3_n_0 ),
        .I2(\r_stop_bits[1]_i_4_n_0 ),
        .I3(\r_state[0]_i_5_n_0 ),
        .I4(r_state[0]),
        .I5(r_stop_bits[1]),
        .O(\r_stop_bits[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \r_stop_bits[1]_i_2 
       (.I0(r_stop_bits[0]),
        .I1(r_stop_bits[1]),
        .I2(r_state[4]),
        .O(\r_stop_bits[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00010101)) 
    \r_stop_bits[1]_i_3 
       (.I0(r_state[1]),
        .I1(r_state[2]),
        .I2(r_state[3]),
        .I3(r_state[0]),
        .I4(r_state[4]),
        .O(\r_stop_bits[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \r_stop_bits[1]_i_4 
       (.I0(r_stop_bits[0]),
        .I1(r_stop_bits[1]),
        .I2(rx_IBUF),
        .I3(\r_state[4]_i_5_n_0 ),
        .O(\r_stop_bits[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_stop_bits_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_stop_bits[0]_i_1_n_0 ),
        .Q(r_stop_bits[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_stop_bits_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_stop_bits[1]_i_1_n_0 ),
        .Q(r_stop_bits[1]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h5555554055555555)) 
    \r_ticks[0]_i_1 
       (.I0(r_ticks[0]),
        .I1(r_state[4]),
        .I2(\r_ticks[0]_i_2_n_0 ),
        .I3(r_state[3]),
        .I4(r_state[2]),
        .I5(\r_ticks[0]_i_3_n_0 ),
        .O(\r_ticks[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \r_ticks[0]_i_2 
       (.I0(r_ticks[3]),
        .I1(r_ticks[1]),
        .I2(r_ticks[0]),
        .I3(r_ticks[2]),
        .I4(rx_IBUF),
        .O(\r_ticks[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00004000FFFFFFFF)) 
    \r_ticks[0]_i_3 
       (.I0(r_ticks[3]),
        .I1(r_ticks[2]),
        .I2(r_ticks[0]),
        .I3(r_ticks[1]),
        .I4(rx_IBUF),
        .I5(r_state[1]),
        .O(\r_ticks[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \r_ticks[1]_i_1 
       (.I0(r_ticks[1]),
        .I1(r_ticks[0]),
        .I2(\r_ticks[1]_i_2_n_0 ),
        .O(\r_ticks[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h004000004444444C)) 
    \r_ticks[1]_i_2 
       (.I0(r_state[1]),
        .I1(\r_ticks[3]_i_5_n_0 ),
        .I2(rx_IBUF),
        .I3(\r_ticks[3]_i_6_n_0 ),
        .I4(r_ticks[3]),
        .I5(r_state[4]),
        .O(\r_ticks[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7878787878007878)) 
    \r_ticks[2]_i_1 
       (.I0(r_ticks[0]),
        .I1(r_ticks[1]),
        .I2(r_ticks[2]),
        .I3(r_state[4]),
        .I4(\r_ticks[3]_i_5_n_0 ),
        .I5(r_state[1]),
        .O(\r_ticks[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8888888AAAAAAAA)) 
    \r_ticks[3]_i_1 
       (.I0(\r_ticks[3]_i_3_n_0 ),
        .I1(r_state[0]),
        .I2(r_state[4]),
        .I3(\t_state[4]_i_3_n_0 ),
        .I4(\r_state[4]_i_3_n_0 ),
        .I5(\r_ticks[3]_i_4_n_0 ),
        .O(r_ticks_next));
  LUT6 #(
    .INIT(64'hFFCF00000000FF8F)) 
    \r_ticks[3]_i_2 
       (.I0(rx_IBUF),
        .I1(r_state[1]),
        .I2(\r_ticks[3]_i_5_n_0 ),
        .I3(r_state[4]),
        .I4(\r_ticks[3]_i_6_n_0 ),
        .I5(r_ticks[3]),
        .O(\r_ticks[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \r_ticks[3]_i_3 
       (.I0(r_state[0]),
        .I1(r_state[1]),
        .I2(r_state[2]),
        .I3(r_state[3]),
        .I4(r_state[4]),
        .O(\r_ticks[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFF3FFFFFFF3)) 
    \r_ticks[3]_i_4 
       (.I0(\r_ticks[3]_i_7_n_0 ),
        .I1(t_done_i_6_n_0),
        .I2(t_done_i_5_n_0),
        .I3(t_done_i_4_n_0),
        .I4(\r_ticks[3]_i_5_n_0 ),
        .I5(r_state[1]),
        .O(\r_ticks[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_ticks[3]_i_5 
       (.I0(r_state[2]),
        .I1(r_state[3]),
        .O(\r_ticks[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \r_ticks[3]_i_6 
       (.I0(r_ticks[1]),
        .I1(r_ticks[0]),
        .I2(r_ticks[2]),
        .O(\r_ticks[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \r_ticks[3]_i_7 
       (.I0(rx_IBUF),
        .I1(r_ticks[1]),
        .I2(r_ticks[0]),
        .I3(r_ticks[2]),
        .I4(r_ticks[3]),
        .O(\r_ticks[3]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_ticks_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(r_ticks_next),
        .D(\r_ticks[0]_i_1_n_0 ),
        .Q(r_ticks[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_ticks_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(r_ticks_next),
        .D(\r_ticks[1]_i_1_n_0 ),
        .Q(r_ticks[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_ticks_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(r_ticks_next),
        .D(\r_ticks[2]_i_1_n_0 ),
        .Q(r_ticks[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_ticks_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(r_ticks_next),
        .D(\r_ticks[3]_i_2_n_0 ),
        .Q(r_ticks[3]),
        .R(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  OBUF rx_done_OBUF_inst
       (.I(rx_done_OBUF),
        .O(rx_done));
  LUT6 #(
    .INIT(64'hFFFF00FD0000AA02)) 
    \t_bits[0]_i_1 
       (.I0(t_state[2]),
        .I1(\t_bits[0]_i_2_n_0 ),
        .I2(\t_state[3]_i_2_n_0 ),
        .I3(t_state[0]),
        .I4(\t_bits[2]_i_3_n_0 ),
        .I5(t_bits[0]),
        .O(\t_bits[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \t_bits[0]_i_2 
       (.I0(t_bits[2]),
        .I1(t_bits[0]),
        .I2(t_bits[1]),
        .O(\t_bits[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF444F00008880)) 
    \t_bits[1]_i_1 
       (.I0(t_bits[0]),
        .I1(t_state[2]),
        .I2(\t_bits[1]_i_2_n_0 ),
        .I3(t_state[0]),
        .I4(\t_bits[2]_i_3_n_0 ),
        .I5(t_bits[1]),
        .O(\t_bits[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \t_bits[1]_i_2 
       (.I0(t_state[2]),
        .I1(\t_bits[0]_i_2_n_0 ),
        .I2(\t_state[4]_i_4_n_0 ),
        .I3(t_done_i_4_n_0),
        .I4(t_done_i_5_n_0),
        .I5(t_done_i_6_n_0),
        .O(\t_bits[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC8282CCCE)) 
    \t_bits[2]_i_1 
       (.I0(t_state[2]),
        .I1(t_bits[2]),
        .I2(\t_bits[2]_i_2_n_0 ),
        .I3(\t_state[3]_i_2_n_0 ),
        .I4(t_state[0]),
        .I5(\t_bits[2]_i_3_n_0 ),
        .O(\t_bits[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \t_bits[2]_i_2 
       (.I0(t_bits[1]),
        .I1(t_bits[0]),
        .O(\t_bits[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEC)) 
    \t_bits[2]_i_3 
       (.I0(t_state[0]),
        .I1(t_state[1]),
        .I2(t_state[2]),
        .I3(t_state[4]),
        .I4(t_state[3]),
        .O(\t_bits[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_bits_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\t_bits[0]_i_1_n_0 ),
        .Q(t_bits[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_bits_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\t_bits[1]_i_1_n_0 ),
        .Q(t_bits[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_bits_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\t_bits[2]_i_1_n_0 ),
        .Q(t_bits[2]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \t_cont_unos[0]_i_1 
       (.I0(t_cont_unos[0]),
        .I1(t_state[0]),
        .O(\t_cont_unos[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[10]_i_1 
       (.I0(in10[10]),
        .I1(t_state[0]),
        .O(\t_cont_unos[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[11]_i_1 
       (.I0(in10[11]),
        .I1(t_state[0]),
        .O(\t_cont_unos[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[12]_i_1 
       (.I0(in10[12]),
        .I1(t_state[0]),
        .O(\t_cont_unos[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[13]_i_1 
       (.I0(in10[13]),
        .I1(t_state[0]),
        .O(\t_cont_unos[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[14]_i_1 
       (.I0(in10[14]),
        .I1(t_state[0]),
        .O(\t_cont_unos[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[15]_i_1 
       (.I0(in10[15]),
        .I1(t_state[0]),
        .O(\t_cont_unos[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[16]_i_1 
       (.I0(in10[16]),
        .I1(t_state[0]),
        .O(\t_cont_unos[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[17]_i_1 
       (.I0(in10[17]),
        .I1(t_state[0]),
        .O(\t_cont_unos[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[18]_i_1 
       (.I0(in10[18]),
        .I1(t_state[0]),
        .O(\t_cont_unos[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[19]_i_1 
       (.I0(in10[19]),
        .I1(t_state[0]),
        .O(\t_cont_unos[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[1]_i_1 
       (.I0(in10[1]),
        .I1(t_state[0]),
        .O(\t_cont_unos[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[20]_i_1 
       (.I0(in10[20]),
        .I1(t_state[0]),
        .O(\t_cont_unos[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[21]_i_1 
       (.I0(in10[21]),
        .I1(t_state[0]),
        .O(\t_cont_unos[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[22]_i_1 
       (.I0(in10[22]),
        .I1(t_state[0]),
        .O(\t_cont_unos[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[23]_i_1 
       (.I0(in10[23]),
        .I1(t_state[0]),
        .O(\t_cont_unos[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[24]_i_1 
       (.I0(in10[24]),
        .I1(t_state[0]),
        .O(\t_cont_unos[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[25]_i_1 
       (.I0(in10[25]),
        .I1(t_state[0]),
        .O(\t_cont_unos[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[26]_i_1 
       (.I0(in10[26]),
        .I1(t_state[0]),
        .O(\t_cont_unos[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[27]_i_1 
       (.I0(in10[27]),
        .I1(t_state[0]),
        .O(\t_cont_unos[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[28]_i_1 
       (.I0(in10[28]),
        .I1(t_state[0]),
        .O(\t_cont_unos[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[29]_i_1 
       (.I0(in10[29]),
        .I1(t_state[0]),
        .O(\t_cont_unos[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[2]_i_1 
       (.I0(in10[2]),
        .I1(t_state[0]),
        .O(\t_cont_unos[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[30]_i_1 
       (.I0(in10[30]),
        .I1(t_state[0]),
        .O(\t_cont_unos[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBBBBAAAAAAAA)) 
    \t_cont_unos[31]_i_1 
       (.I0(\t_cont_unos[31]_i_3_n_0 ),
        .I1(\t_cont_unos[31]_i_4_n_0 ),
        .I2(t_state[1]),
        .I3(\t_cont_unos[31]_i_5_n_0 ),
        .I4(\t_bits[1]_i_2_n_0 ),
        .I5(\t_cont_unos[31]_i_6_n_0 ),
        .O(t_cont_unos_next));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    \t_cont_unos[31]_i_10 
       (.I0(t_din[6]),
        .I1(t_din[7]),
        .I2(t_bits[1]),
        .I3(t_bits[0]),
        .I4(t_din[4]),
        .I5(t_din[5]),
        .O(\t_cont_unos[31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[31]_i_2 
       (.I0(in10[31]),
        .I1(t_state[0]),
        .O(\t_cont_unos[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \t_cont_unos[31]_i_3 
       (.I0(t_state[1]),
        .I1(t_state[2]),
        .I2(t_state[4]),
        .I3(t_state[3]),
        .I4(t_state[0]),
        .O(\t_cont_unos[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \t_cont_unos[31]_i_4 
       (.I0(\t_cont_unos[31]_i_8_n_0 ),
        .I1(\t_state[4]_i_4_n_0 ),
        .I2(t_done_i_4_n_0),
        .I3(t_done_i_5_n_0),
        .I4(t_done_i_6_n_0),
        .I5(t_state[2]),
        .O(\t_cont_unos[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hBEEE8222)) 
    \t_cont_unos[31]_i_5 
       (.I0(\t_cont_unos[31]_i_9_n_0 ),
        .I1(t_bits[2]),
        .I2(t_bits[0]),
        .I3(t_bits[1]),
        .I4(\t_cont_unos[31]_i_10_n_0 ),
        .O(\t_cont_unos[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \t_cont_unos[31]_i_6 
       (.I0(t_state[0]),
        .I1(t_state[3]),
        .I2(t_state[4]),
        .O(\t_cont_unos[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t_cont_unos[31]_i_8 
       (.I0(t_state[1]),
        .I1(t_din[0]),
        .O(\t_cont_unos[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    \t_cont_unos[31]_i_9 
       (.I0(t_din[2]),
        .I1(t_din[3]),
        .I2(t_bits[1]),
        .I3(t_bits[0]),
        .I4(t_din[0]),
        .I5(t_din[1]),
        .O(\t_cont_unos[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[3]_i_1 
       (.I0(in10[3]),
        .I1(t_state[0]),
        .O(\t_cont_unos[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[4]_i_1 
       (.I0(in10[4]),
        .I1(t_state[0]),
        .O(\t_cont_unos[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[5]_i_1 
       (.I0(in10[5]),
        .I1(t_state[0]),
        .O(\t_cont_unos[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[6]_i_1 
       (.I0(in10[6]),
        .I1(t_state[0]),
        .O(\t_cont_unos[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[7]_i_1 
       (.I0(in10[7]),
        .I1(t_state[0]),
        .O(\t_cont_unos[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[8]_i_1 
       (.I0(in10[8]),
        .I1(t_state[0]),
        .O(\t_cont_unos[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[9]_i_1 
       (.I0(in10[9]),
        .I1(t_state[0]),
        .O(\t_cont_unos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[0]_i_1_n_0 ),
        .Q(t_cont_unos[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[10]_i_1_n_0 ),
        .Q(t_cont_unos[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[11]_i_1_n_0 ),
        .Q(t_cont_unos[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[12]_i_1_n_0 ),
        .Q(t_cont_unos[12]),
        .R(reset_IBUF));
  CARRY4 \t_cont_unos_reg[12]_i_2 
       (.CI(\t_cont_unos_reg[8]_i_2_n_0 ),
        .CO({\t_cont_unos_reg[12]_i_2_n_0 ,\t_cont_unos_reg[12]_i_2_n_1 ,\t_cont_unos_reg[12]_i_2_n_2 ,\t_cont_unos_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[12:9]),
        .S(t_cont_unos[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[13]_i_1_n_0 ),
        .Q(t_cont_unos[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[14]_i_1_n_0 ),
        .Q(t_cont_unos[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[15]_i_1_n_0 ),
        .Q(t_cont_unos[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[16] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[16]_i_1_n_0 ),
        .Q(t_cont_unos[16]),
        .R(reset_IBUF));
  CARRY4 \t_cont_unos_reg[16]_i_2 
       (.CI(\t_cont_unos_reg[12]_i_2_n_0 ),
        .CO({\t_cont_unos_reg[16]_i_2_n_0 ,\t_cont_unos_reg[16]_i_2_n_1 ,\t_cont_unos_reg[16]_i_2_n_2 ,\t_cont_unos_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[16:13]),
        .S(t_cont_unos[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[17] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[17]_i_1_n_0 ),
        .Q(t_cont_unos[17]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[18] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[18]_i_1_n_0 ),
        .Q(t_cont_unos[18]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[19] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[19]_i_1_n_0 ),
        .Q(t_cont_unos[19]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[1]_i_1_n_0 ),
        .Q(t_cont_unos[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[20] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[20]_i_1_n_0 ),
        .Q(t_cont_unos[20]),
        .R(reset_IBUF));
  CARRY4 \t_cont_unos_reg[20]_i_2 
       (.CI(\t_cont_unos_reg[16]_i_2_n_0 ),
        .CO({\t_cont_unos_reg[20]_i_2_n_0 ,\t_cont_unos_reg[20]_i_2_n_1 ,\t_cont_unos_reg[20]_i_2_n_2 ,\t_cont_unos_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[20:17]),
        .S(t_cont_unos[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[21] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[21]_i_1_n_0 ),
        .Q(t_cont_unos[21]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[22] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[22]_i_1_n_0 ),
        .Q(t_cont_unos[22]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[23] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[23]_i_1_n_0 ),
        .Q(t_cont_unos[23]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[24] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[24]_i_1_n_0 ),
        .Q(t_cont_unos[24]),
        .R(reset_IBUF));
  CARRY4 \t_cont_unos_reg[24]_i_2 
       (.CI(\t_cont_unos_reg[20]_i_2_n_0 ),
        .CO({\t_cont_unos_reg[24]_i_2_n_0 ,\t_cont_unos_reg[24]_i_2_n_1 ,\t_cont_unos_reg[24]_i_2_n_2 ,\t_cont_unos_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[24:21]),
        .S(t_cont_unos[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[25] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[25]_i_1_n_0 ),
        .Q(t_cont_unos[25]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[26] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[26]_i_1_n_0 ),
        .Q(t_cont_unos[26]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[27] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[27]_i_1_n_0 ),
        .Q(t_cont_unos[27]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[28] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[28]_i_1_n_0 ),
        .Q(t_cont_unos[28]),
        .R(reset_IBUF));
  CARRY4 \t_cont_unos_reg[28]_i_2 
       (.CI(\t_cont_unos_reg[24]_i_2_n_0 ),
        .CO({\t_cont_unos_reg[28]_i_2_n_0 ,\t_cont_unos_reg[28]_i_2_n_1 ,\t_cont_unos_reg[28]_i_2_n_2 ,\t_cont_unos_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[28:25]),
        .S(t_cont_unos[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[29] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[29]_i_1_n_0 ),
        .Q(t_cont_unos[29]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[2]_i_1_n_0 ),
        .Q(t_cont_unos[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[30] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[30]_i_1_n_0 ),
        .Q(t_cont_unos[30]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[31] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[31]_i_2_n_0 ),
        .Q(t_cont_unos[31]),
        .R(reset_IBUF));
  CARRY4 \t_cont_unos_reg[31]_i_7 
       (.CI(\t_cont_unos_reg[28]_i_2_n_0 ),
        .CO({\NLW_t_cont_unos_reg[31]_i_7_CO_UNCONNECTED [3:2],\t_cont_unos_reg[31]_i_7_n_2 ,\t_cont_unos_reg[31]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_t_cont_unos_reg[31]_i_7_O_UNCONNECTED [3],in10[31:29]}),
        .S({1'b0,t_cont_unos[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[3]_i_1_n_0 ),
        .Q(t_cont_unos[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[4]_i_1_n_0 ),
        .Q(t_cont_unos[4]),
        .R(reset_IBUF));
  CARRY4 \t_cont_unos_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\t_cont_unos_reg[4]_i_2_n_0 ,\t_cont_unos_reg[4]_i_2_n_1 ,\t_cont_unos_reg[4]_i_2_n_2 ,\t_cont_unos_reg[4]_i_2_n_3 }),
        .CYINIT(t_cont_unos[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[4:1]),
        .S(t_cont_unos[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[5]_i_1_n_0 ),
        .Q(t_cont_unos[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[6]_i_1_n_0 ),
        .Q(t_cont_unos[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[7]_i_1_n_0 ),
        .Q(t_cont_unos[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[8]_i_1_n_0 ),
        .Q(t_cont_unos[8]),
        .R(reset_IBUF));
  CARRY4 \t_cont_unos_reg[8]_i_2 
       (.CI(\t_cont_unos_reg[4]_i_2_n_0 ),
        .CO({\t_cont_unos_reg[8]_i_2_n_0 ,\t_cont_unos_reg[8]_i_2_n_1 ,\t_cont_unos_reg[8]_i_2_n_2 ,\t_cont_unos_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[8:5]),
        .S(t_cont_unos[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next),
        .D(\t_cont_unos[9]_i_1_n_0 ),
        .Q(t_cont_unos[9]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h0005013500000130)) 
    t_data_i_1
       (.I0(\t_state[3]_i_2_n_0 ),
        .I1(t_state[2]),
        .I2(t_state[0]),
        .I3(t_state[1]),
        .I4(\t_ticks[3]_i_4_n_0 ),
        .I5(t_data_i_3_n_0),
        .O(t_data_next));
  LUT6 #(
    .INIT(64'hFFF8FFF8FFF8F8F8)) 
    t_data_i_2
       (.I0(t_state[2]),
        .I1(t_data_i_4_n_0),
        .I2(t_data_i_5_n_0),
        .I3(\t_state[4]_i_3_n_0 ),
        .I4(t_state[3]),
        .I5(t_state[4]),
        .O(t_data_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000FF00FF7F00)) 
    t_data_i_3
       (.I0(t_cont_unos[31]),
        .I1(\t_bits[0]_i_2_n_0 ),
        .I2(t_cont_unos[0]),
        .I3(t_state[2]),
        .I4(t_state[3]),
        .I5(t_state[4]),
        .O(t_data_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFCFAC0000C0AC)) 
    t_data_i_4
       (.I0(\t_cont_unos[31]_i_9_n_0 ),
        .I1(\t_cont_unos[31]_i_10_n_0 ),
        .I2(\t_bits[2]_i_2_n_0 ),
        .I3(t_bits[2]),
        .I4(\t_state[4]_i_4_n_0 ),
        .I5(t_data_i_6_n_0),
        .O(t_data_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    t_data_i_5
       (.I0(t_din[0]),
        .I1(t_state[1]),
        .I2(tx_start_IBUF),
        .I3(t_state[0]),
        .O(t_data_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    t_data_i_6
       (.I0(t_cont_unos[0]),
        .I1(t_cont_unos[31]),
        .O(t_data_i_6_n_0));
  FDSE #(
    .INIT(1'b1)) 
    t_data_reg
       (.C(clock_IBUF_BUFG),
        .CE(t_data_next),
        .D(t_data_i_2_n_0),
        .Q(tx_OBUF),
        .S(reset_IBUF));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \t_din[7]_i_1 
       (.I0(t_state[1]),
        .I1(t_state[2]),
        .I2(t_state[4]),
        .I3(t_state[3]),
        .I4(t_state[0]),
        .I5(tx_start_IBUF),
        .O(t_din_next));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(din_IBUF[0]),
        .Q(t_din[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(din_IBUF[1]),
        .Q(t_din[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(din_IBUF[2]),
        .Q(t_din[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(din_IBUF[3]),
        .Q(t_din[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(din_IBUF[4]),
        .Q(t_din[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(din_IBUF[5]),
        .Q(t_din[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(din_IBUF[6]),
        .Q(t_din[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(din_IBUF[7]),
        .Q(t_din[7]),
        .R(reset_IBUF));
  LUT4 #(
    .INIT(16'h00F2)) 
    t_done_i_1
       (.I0(\t_state[4]_i_3_n_0 ),
        .I1(t_done_i_3_n_0),
        .I2(t_state[0]),
        .I3(\t_stop_bits[1]_i_4_n_0 ),
        .O(t_done_next));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    t_done_i_2
       (.I0(t_done_i_4_n_0),
        .I1(t_done_i_5_n_0),
        .I2(t_done_i_6_n_0),
        .I3(t_state[4]),
        .O(t_done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    t_done_i_3
       (.I0(t_stop_bits[1]),
        .I1(t_stop_bits[0]),
        .I2(\t_state[4]_i_4_n_0 ),
        .I3(t_state[4]),
        .O(t_done_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    t_done_i_4
       (.I0(count[9]),
        .I1(count[0]),
        .I2(count[6]),
        .I3(count[3]),
        .O(t_done_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    t_done_i_5
       (.I0(count[7]),
        .I1(count[4]),
        .I2(count[8]),
        .I3(count[11]),
        .O(t_done_i_5_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    t_done_i_6
       (.I0(count[2]),
        .I1(count[5]),
        .I2(count[1]),
        .I3(count[10]),
        .O(t_done_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    t_done_reg
       (.C(clock_IBUF_BUFG),
        .CE(t_done_next),
        .D(t_done_i_2_n_0),
        .Q(tx_done_OBUF),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h4444444444F44444)) 
    \t_state[0]_i_1 
       (.I0(tx_start_IBUF),
        .I1(t_state[0]),
        .I2(t_state[4]),
        .I3(\t_state[4]_i_4_n_0 ),
        .I4(t_stop_bits[0]),
        .I5(t_stop_bits[1]),
        .O(t_next_state[0]));
  LUT5 #(
    .INIT(32'hF8FF8888)) 
    \t_state[1]_i_1 
       (.I0(t_state[0]),
        .I1(tx_start_IBUF),
        .I2(\t_state[4]_i_4_n_0 ),
        .I3(\t_state[4]_i_3_n_0 ),
        .I4(t_state[1]),
        .O(t_next_state[1]));
  LUT6 #(
    .INIT(64'hFF00FFFFFF007F00)) 
    \t_state[2]_i_1 
       (.I0(t_bits[1]),
        .I1(t_bits[0]),
        .I2(t_bits[2]),
        .I3(t_state[2]),
        .I4(\t_state[3]_i_2_n_0 ),
        .I5(t_state[1]),
        .O(t_next_state[2]));
  LUT6 #(
    .INIT(64'hFFFF800000008000)) 
    \t_state[3]_i_1 
       (.I0(t_bits[2]),
        .I1(t_bits[0]),
        .I2(t_bits[1]),
        .I3(t_state[2]),
        .I4(\t_state[3]_i_2_n_0 ),
        .I5(t_state[3]),
        .O(t_next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \t_state[3]_i_2 
       (.I0(\t_state[4]_i_4_n_0 ),
        .I1(t_done_i_4_n_0),
        .I2(t_done_i_5_n_0),
        .I3(t_done_i_6_n_0),
        .O(\t_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000001100111162)) 
    \t_state[4]_i_1 
       (.I0(t_state[3]),
        .I1(t_state[4]),
        .I2(\t_state[4]_i_3_n_0 ),
        .I3(t_state[2]),
        .I4(t_state[0]),
        .I5(t_state[1]),
        .O(\t_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAA2AAA2AAA2)) 
    \t_state[4]_i_2 
       (.I0(t_state[4]),
        .I1(t_stop_bits[0]),
        .I2(t_stop_bits[1]),
        .I3(\t_state[4]_i_4_n_0 ),
        .I4(\t_state[4]_i_3_n_0 ),
        .I5(t_state[3]),
        .O(t_next_state[4]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \t_state[4]_i_3 
       (.I0(count[10]),
        .I1(count[1]),
        .I2(count[5]),
        .I3(count[2]),
        .I4(t_done_i_5_n_0),
        .I5(t_done_i_4_n_0),
        .O(\t_state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \t_state[4]_i_4 
       (.I0(t_ticks[2]),
        .I1(t_ticks[1]),
        .I2(t_ticks[0]),
        .I3(t_ticks[3]),
        .O(\t_state[4]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "T_START:00010,T_DATA:00100,T_PARITY:01000,T_STOP:10000,T_IDLE:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \t_state_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\t_state[4]_i_1_n_0 ),
        .D(t_next_state[0]),
        .Q(t_state[0]),
        .S(reset_IBUF));
  (* FSM_ENCODED_STATES = "T_START:00010,T_DATA:00100,T_PARITY:01000,T_STOP:10000,T_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \t_state_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\t_state[4]_i_1_n_0 ),
        .D(t_next_state[1]),
        .Q(t_state[1]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "T_START:00010,T_DATA:00100,T_PARITY:01000,T_STOP:10000,T_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \t_state_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\t_state[4]_i_1_n_0 ),
        .D(t_next_state[2]),
        .Q(t_state[2]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "T_START:00010,T_DATA:00100,T_PARITY:01000,T_STOP:10000,T_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \t_state_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\t_state[4]_i_1_n_0 ),
        .D(t_next_state[3]),
        .Q(t_state[3]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "T_START:00010,T_DATA:00100,T_PARITY:01000,T_STOP:10000,T_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \t_state_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\t_state[4]_i_1_n_0 ),
        .D(t_next_state[4]),
        .Q(t_state[4]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'hFFFF00F70000AA08)) 
    \t_stop_bits[0]_i_1 
       (.I0(t_state[4]),
        .I1(\t_state[4]_i_3_n_0 ),
        .I2(\t_stop_bits[1]_i_3_n_0 ),
        .I3(t_state[0]),
        .I4(\t_stop_bits[1]_i_4_n_0 ),
        .I5(t_stop_bits[0]),
        .O(\t_stop_bits[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAFB0000AA08)) 
    \t_stop_bits[1]_i_1 
       (.I0(\t_stop_bits[1]_i_2_n_0 ),
        .I1(t_done_i_2_n_0),
        .I2(\t_stop_bits[1]_i_3_n_0 ),
        .I3(t_state[0]),
        .I4(\t_stop_bits[1]_i_4_n_0 ),
        .I5(t_stop_bits[1]),
        .O(\t_stop_bits[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \t_stop_bits[1]_i_2 
       (.I0(t_stop_bits[1]),
        .I1(t_stop_bits[0]),
        .I2(t_state[4]),
        .O(\t_stop_bits[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFFFFFF7FFF)) 
    \t_stop_bits[1]_i_3 
       (.I0(t_ticks[3]),
        .I1(t_ticks[0]),
        .I2(t_ticks[1]),
        .I3(t_ticks[2]),
        .I4(t_stop_bits[0]),
        .I5(t_stop_bits[1]),
        .O(\t_stop_bits[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \t_stop_bits[1]_i_4 
       (.I0(t_state[3]),
        .I1(t_state[0]),
        .I2(t_state[4]),
        .I3(t_state[1]),
        .I4(t_state[2]),
        .O(\t_stop_bits[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_stop_bits_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\t_stop_bits[0]_i_1_n_0 ),
        .Q(t_stop_bits[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_stop_bits_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\t_stop_bits[1]_i_1_n_0 ),
        .Q(t_stop_bits[1]),
        .R(reset_IBUF));
  LUT2 #(
    .INIT(4'h1)) 
    \t_ticks[0]_i_1 
       (.I0(t_ticks[0]),
        .I1(t_state[0]),
        .O(\t_ticks[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \t_ticks[1]_i_1 
       (.I0(t_ticks[0]),
        .I1(t_ticks[1]),
        .I2(t_state[0]),
        .O(\t_ticks[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \t_ticks[2]_i_1 
       (.I0(t_state[0]),
        .I1(t_ticks[1]),
        .I2(t_ticks[0]),
        .I3(t_ticks[2]),
        .O(\t_ticks[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000200020002383A)) 
    \t_ticks[3]_i_1 
       (.I0(\t_state[4]_i_3_n_0 ),
        .I1(t_state[1]),
        .I2(t_state[0]),
        .I3(\t_ticks[3]_i_3_n_0 ),
        .I4(t_state[2]),
        .I5(\t_ticks[3]_i_4_n_0 ),
        .O(t_ticks_next));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \t_ticks[3]_i_2 
       (.I0(t_state[0]),
        .I1(t_ticks[0]),
        .I2(t_ticks[1]),
        .I3(t_ticks[2]),
        .I4(t_ticks[3]),
        .O(\t_ticks[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE9E9E9E9E9EBE9E9)) 
    \t_ticks[3]_i_3 
       (.I0(t_state[4]),
        .I1(t_state[3]),
        .I2(t_state[2]),
        .I3(t_stop_bits[1]),
        .I4(t_stop_bits[0]),
        .I5(\t_state[4]_i_4_n_0 ),
        .O(\t_ticks[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \t_ticks[3]_i_4 
       (.I0(t_state[4]),
        .I1(t_state[3]),
        .O(\t_ticks[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_ticks_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(t_ticks_next),
        .D(\t_ticks[0]_i_1_n_0 ),
        .Q(t_ticks[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_ticks_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(t_ticks_next),
        .D(\t_ticks[1]_i_1_n_0 ),
        .Q(t_ticks[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_ticks_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(t_ticks_next),
        .D(\t_ticks[2]_i_1_n_0 ),
        .Q(t_ticks[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_ticks_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(t_ticks_next),
        .D(\t_ticks[3]_i_2_n_0 ),
        .Q(t_ticks[3]),
        .R(reset_IBUF));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  OBUF tx_done_OBUF_inst
       (.I(tx_done_OBUF),
        .O(tx_done));
  IBUF tx_start_IBUF_inst
       (.I(tx_start),
        .O(tx_start_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
