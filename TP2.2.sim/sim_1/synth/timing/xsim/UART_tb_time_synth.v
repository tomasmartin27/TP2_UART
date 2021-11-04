// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Nov  3 21:29:37 2021
// Host        : DESKTOP-98G2N7A running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/TomasMartin/TP2.2/TP2.2.sim/sim_1/synth/timing/xsim/UART_tb_time_synth.v
// Design      : UART
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module BaudrateGen1
   (\r_state_reg[3] ,
    \count_reg[2]_0 ,
    \count_reg[7]_0 ,
    \count_reg[9]_0 ,
    \r_ticks_reg[2] ,
    \r_state_reg[1] ,
    \count_reg[10]_0 ,
    \t_state_reg[2] ,
    \count_reg[9]_1 ,
    \r_state_reg[4] ,
    \t_state_reg[4] ,
    \r_state_reg[1]_0 ,
    Q,
    \r_state_reg[0] ,
    \r_state_reg[0]_0 ,
    rx_IBUF,
    t_done_reg,
    \t_bits_reg[1] ,
    \t_bits_reg[1]_0 ,
    reset_IBUF,
    clock_IBUF_BUFG);
  output \r_state_reg[3] ;
  output \count_reg[2]_0 ;
  output \count_reg[7]_0 ;
  output \count_reg[9]_0 ;
  output \r_ticks_reg[2] ;
  output \r_state_reg[1] ;
  output \count_reg[10]_0 ;
  output \t_state_reg[2] ;
  output \count_reg[9]_1 ;
  output \r_state_reg[4] ;
  output \t_state_reg[4] ;
  output \r_state_reg[1]_0 ;
  input [2:0]Q;
  input \r_state_reg[0] ;
  input \r_state_reg[0]_0 ;
  input rx_IBUF;
  input [1:0]t_done_reg;
  input \t_bits_reg[1] ;
  input \t_bits_reg[1]_0 ;
  input reset_IBUF;
  input clock_IBUF_BUFG;

  wire [2:0]Q;
  wire clock_IBUF_BUFG;
  wire [11:0]count;
  wire [11:0]count1;
  wire count10_carry__0_n_0;
  wire count10_carry__0_n_1;
  wire count10_carry__0_n_2;
  wire count10_carry__0_n_3;
  wire count10_carry__1_n_2;
  wire count10_carry__1_n_3;
  wire count10_carry_n_0;
  wire count10_carry_n_1;
  wire count10_carry_n_2;
  wire count10_carry_n_3;
  wire \count_reg[10]_0 ;
  wire \count_reg[2]_0 ;
  wire \count_reg[7]_0 ;
  wire \count_reg[9]_0 ;
  wire \count_reg[9]_1 ;
  wire [11:1]data0;
  wire \r_state_reg[0] ;
  wire \r_state_reg[0]_0 ;
  wire \r_state_reg[1] ;
  wire \r_state_reg[1]_0 ;
  wire \r_state_reg[3] ;
  wire \r_state_reg[4] ;
  wire \r_ticks_reg[2] ;
  wire reset_IBUF;
  wire rx_IBUF;
  wire \t_bits_reg[1] ;
  wire \t_bits_reg[1]_0 ;
  wire [1:0]t_done_reg;
  wire \t_state_reg[2] ;
  wire \t_state_reg[4] ;
  wire [3:2]NLW_count10_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_count10_carry__1_O_UNCONNECTED;

  CARRY4 count10_carry
       (.CI(1'b0),
        .CO({count10_carry_n_0,count10_carry_n_1,count10_carry_n_2,count10_carry_n_3}),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(count[4:1]));
  CARRY4 count10_carry__0
       (.CI(count10_carry_n_0),
        .CO({count10_carry__0_n_0,count10_carry__0_n_1,count10_carry__0_n_2,count10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(count[8:5]));
  CARRY4 count10_carry__1
       (.CI(count10_carry__0_n_0),
        .CO({NLW_count10_carry__1_CO_UNCONNECTED[3:2],count10_carry__1_n_2,count10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count10_carry__1_O_UNCONNECTED[3],data0[11:9]}),
        .S({1'b0,count[11:9]}));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .I1(\count_reg[10]_0 ),
        .O(count1[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[10]_i_1 
       (.I0(data0[10]),
        .I1(\count_reg[10]_0 ),
        .O(count1[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[11]_i_1 
       (.I0(data0[11]),
        .I1(\count_reg[10]_0 ),
        .O(count1[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[1]_i_1 
       (.I0(data0[1]),
        .I1(\count_reg[10]_0 ),
        .O(count1[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[2]_i_1 
       (.I0(data0[2]),
        .I1(\count_reg[10]_0 ),
        .O(count1[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[3]_i_1 
       (.I0(data0[3]),
        .I1(\count_reg[10]_0 ),
        .O(count1[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_1 
       (.I0(data0[4]),
        .I1(\count_reg[10]_0 ),
        .O(count1[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[5]_i_1 
       (.I0(data0[5]),
        .I1(\count_reg[10]_0 ),
        .O(count1[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[6]_i_1 
       (.I0(data0[6]),
        .I1(\count_reg[10]_0 ),
        .O(count1[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[7]_i_1 
       (.I0(data0[7]),
        .I1(\count_reg[10]_0 ),
        .O(count1[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_1 
       (.I0(data0[8]),
        .I1(\count_reg[10]_0 ),
        .O(count1[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[9]_i_1 
       (.I0(data0[9]),
        .I1(\count_reg[10]_0 ),
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
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(count1[9]),
        .Q(count[9]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \r_state[0]_i_2 
       (.I0(Q[1]),
        .I1(\count_reg[2]_0 ),
        .I2(\count_reg[7]_0 ),
        .I3(\count_reg[9]_0 ),
        .I4(\r_state_reg[0] ),
        .O(\r_state_reg[3] ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \r_state[0]_i_3 
       (.I0(\r_state_reg[0]_0 ),
        .I1(rx_IBUF),
        .I2(Q[0]),
        .I3(\count_reg[2]_0 ),
        .I4(\count_reg[7]_0 ),
        .I5(\count_reg[9]_0 ),
        .O(\r_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \r_state[0]_i_5 
       (.I0(Q[2]),
        .I1(\count_reg[9]_0 ),
        .I2(\count_reg[7]_0 ),
        .I3(\count_reg[2]_0 ),
        .O(\r_state_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \r_state[3]_i_2 
       (.I0(\r_state_reg[0] ),
        .I1(\count_reg[9]_0 ),
        .I2(\count_reg[7]_0 ),
        .I3(\count_reg[2]_0 ),
        .O(\r_ticks_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \r_state[4]_i_5 
       (.I0(count[10]),
        .I1(count[1]),
        .I2(count[5]),
        .I3(count[2]),
        .I4(\count_reg[7]_0 ),
        .I5(\count_reg[9]_0 ),
        .O(\count_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \r_ticks[3]_i_4 
       (.I0(\count_reg[9]_0 ),
        .I1(\count_reg[7]_0 ),
        .I2(\count_reg[2]_0 ),
        .I3(Q[0]),
        .O(\r_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \t_bits[1]_i_2 
       (.I0(\count_reg[9]_0 ),
        .I1(\count_reg[7]_0 ),
        .I2(\count_reg[2]_0 ),
        .I3(t_done_reg[0]),
        .I4(\t_bits_reg[1] ),
        .I5(\t_bits_reg[1]_0 ),
        .O(\t_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    t_done_i_2
       (.I0(\count_reg[9]_0 ),
        .I1(\count_reg[7]_0 ),
        .I2(\count_reg[2]_0 ),
        .I3(t_done_reg[1]),
        .O(\t_state_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    t_done_i_4
       (.I0(count[9]),
        .I1(count[0]),
        .I2(count[6]),
        .I3(count[3]),
        .O(\count_reg[9]_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    t_done_i_5
       (.I0(count[7]),
        .I1(count[4]),
        .I2(count[8]),
        .I3(count[11]),
        .O(\count_reg[7]_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    t_done_i_6
       (.I0(count[2]),
        .I1(count[5]),
        .I2(count[1]),
        .I3(count[10]),
        .O(\count_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \t_state[3]_i_2 
       (.I0(\count_reg[9]_0 ),
        .I1(\count_reg[7]_0 ),
        .I2(\count_reg[2]_0 ),
        .I3(\t_bits_reg[1]_0 ),
        .O(\count_reg[9]_1 ));
endmodule

module RX1
   (rx_done_OBUF,
    Q,
    \r_ticks_reg[2]_0 ,
    \r_ticks_reg[3]_0 ,
    \r_data_reg[7]_0 ,
    reset_IBUF,
    clock_IBUF_BUFG,
    \r_stop_bits_reg[0]_0 ,
    rx_IBUF,
    \r_state_reg[0]_0 ,
    \r_state_reg[0]_1 ,
    \r_stop_bits_reg[1]_0 ,
    \r_bits_reg[2]_0 ,
    \r_ticks_reg[0]_0 ,
    \r_bits_reg[1]_0 ,
    \r_bits_reg[1]_1 ,
    \r_bits_reg[1]_2 );
  output rx_done_OBUF;
  output [2:0]Q;
  output \r_ticks_reg[2]_0 ;
  output \r_ticks_reg[3]_0 ;
  output [7:0]\r_data_reg[7]_0 ;
  input reset_IBUF;
  input clock_IBUF_BUFG;
  input \r_stop_bits_reg[0]_0 ;
  input rx_IBUF;
  input \r_state_reg[0]_0 ;
  input \r_state_reg[0]_1 ;
  input \r_stop_bits_reg[1]_0 ;
  input \r_bits_reg[2]_0 ;
  input \r_ticks_reg[0]_0 ;
  input \r_bits_reg[1]_0 ;
  input \r_bits_reg[1]_1 ;
  input \r_bits_reg[1]_2 ;

  wire [2:0]Q;
  wire clock_IBUF_BUFG;
  wire [31:1]in13;
  wire [2:0]r_bits;
  wire \r_bits[0]_i_1_n_0 ;
  wire \r_bits[1]_i_1_n_0 ;
  wire \r_bits[1]_i_2_n_0 ;
  wire \r_bits[1]_i_3_n_0 ;
  wire \r_bits[2]_i_1_n_0 ;
  wire \r_bits[2]_i_2_n_0 ;
  wire \r_bits[2]_i_3_n_0 ;
  wire \r_bits_reg[1]_0 ;
  wire \r_bits_reg[1]_1 ;
  wire \r_bits_reg[1]_2 ;
  wire \r_bits_reg[2]_0 ;
  wire [31:0]r_cont_unos;
  wire [31:0]r_cont_unos_next;
  wire r_cont_unos_next_0;
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
  wire [7:0]\r_data_reg[7]_0 ;
  wire r_done_i_2_n_0;
  wire r_done_next;
  wire [4:0]r_next_state;
  wire [2:0]r_state;
  wire \r_state[0]_i_4_n_0 ;
  wire \r_state[2]_i_2_n_0 ;
  wire \r_state[2]_i_3_n_0 ;
  wire \r_state[4]_i_1_n_0 ;
  wire \r_state[4]_i_3_n_0 ;
  wire \r_state[4]_i_4_n_0 ;
  wire \r_state_reg[0]_0 ;
  wire \r_state_reg[0]_1 ;
  wire [1:0]r_stop_bits;
  wire \r_stop_bits[0]_i_1_n_0 ;
  wire \r_stop_bits[1]_i_1_n_0 ;
  wire \r_stop_bits[1]_i_2_n_0 ;
  wire \r_stop_bits[1]_i_3_n_0 ;
  wire \r_stop_bits[1]_i_4_n_0 ;
  wire \r_stop_bits_reg[0]_0 ;
  wire \r_stop_bits_reg[1]_0 ;
  wire [3:0]r_ticks;
  wire \r_ticks[0]_i_1_n_0 ;
  wire \r_ticks[1]_i_1_n_0 ;
  wire \r_ticks[1]_i_2_n_0 ;
  wire \r_ticks[2]_i_1_n_0 ;
  wire \r_ticks[3]_i_2_n_0 ;
  wire \r_ticks[3]_i_3_n_0 ;
  wire \r_ticks[3]_i_5_n_0 ;
  wire \r_ticks[3]_i_6_n_0 ;
  wire \r_ticks[3]_i_7_n_0 ;
  wire r_ticks_next;
  wire \r_ticks_next_inferred__6/i__n_0 ;
  wire \r_ticks_reg[0]_0 ;
  wire \r_ticks_reg[2]_0 ;
  wire \r_ticks_reg[3]_0 ;
  wire reset_IBUF;
  wire rx_IBUF;
  wire rx_done_OBUF;
  wire [3:2]\NLW_r_cont_unos_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_cont_unos_reg[31]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0FFF0FBFC000C040)) 
    \r_bits[0]_i_1 
       (.I0(\r_bits_reg[2]_0 ),
        .I1(r_state[2]),
        .I2(\r_bits[2]_i_2_n_0 ),
        .I3(r_state[0]),
        .I4(\r_state[2]_i_2_n_0 ),
        .I5(r_bits[0]),
        .O(\r_bits[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF4FF00000800)) 
    \r_bits[1]_i_1 
       (.I0(r_bits[0]),
        .I1(r_state[2]),
        .I2(\r_bits[1]_i_2_n_0 ),
        .I3(\r_bits[2]_i_2_n_0 ),
        .I4(\r_bits[1]_i_3_n_0 ),
        .I5(r_bits[1]),
        .O(\r_bits[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5554555555555555)) 
    \r_bits[1]_i_2 
       (.I0(r_state[0]),
        .I1(\r_ticks_reg[2]_0 ),
        .I2(\r_bits_reg[1]_2 ),
        .I3(\r_bits_reg[1]_1 ),
        .I4(\r_bits_reg[1]_0 ),
        .I5(r_state[2]),
        .O(\r_bits[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
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
       (.I0(\r_bits_reg[2]_0 ),
        .I1(r_state[2]),
        .I2(\r_bits[2]_i_2_n_0 ),
        .I3(r_state[0]),
        .I4(\r_bits[2]_i_3_n_0 ),
        .I5(r_bits[2]),
        .O(\r_bits[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000111)) 
    \r_bits[2]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(r_state[2]),
        .I3(r_state[0]),
        .I4(Q[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_cont_unos[0]_i_1 
       (.I0(r_state[2]),
        .I1(r_cont_unos[0]),
        .O(r_cont_unos_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[10]_i_1 
       (.I0(r_state[2]),
        .I1(in13[10]),
        .O(r_cont_unos_next[10]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[11]_i_1 
       (.I0(r_state[2]),
        .I1(in13[11]),
        .O(r_cont_unos_next[11]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[12]_i_1 
       (.I0(r_state[2]),
        .I1(in13[12]),
        .O(r_cont_unos_next[12]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[13]_i_1 
       (.I0(r_state[2]),
        .I1(in13[13]),
        .O(r_cont_unos_next[13]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[14]_i_1 
       (.I0(r_state[2]),
        .I1(in13[14]),
        .O(r_cont_unos_next[14]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[15]_i_1 
       (.I0(r_state[2]),
        .I1(in13[15]),
        .O(r_cont_unos_next[15]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[16]_i_1 
       (.I0(r_state[2]),
        .I1(in13[16]),
        .O(r_cont_unos_next[16]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[17]_i_1 
       (.I0(r_state[2]),
        .I1(in13[17]),
        .O(r_cont_unos_next[17]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[18]_i_1 
       (.I0(r_state[2]),
        .I1(in13[18]),
        .O(r_cont_unos_next[18]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[19]_i_1 
       (.I0(r_state[2]),
        .I1(in13[19]),
        .O(r_cont_unos_next[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[1]_i_1 
       (.I0(r_state[2]),
        .I1(in13[1]),
        .O(r_cont_unos_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[20]_i_1 
       (.I0(r_state[2]),
        .I1(in13[20]),
        .O(r_cont_unos_next[20]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[21]_i_1 
       (.I0(r_state[2]),
        .I1(in13[21]),
        .O(r_cont_unos_next[21]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[22]_i_1 
       (.I0(r_state[2]),
        .I1(in13[22]),
        .O(r_cont_unos_next[22]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[23]_i_1 
       (.I0(r_state[2]),
        .I1(in13[23]),
        .O(r_cont_unos_next[23]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[24]_i_1 
       (.I0(r_state[2]),
        .I1(in13[24]),
        .O(r_cont_unos_next[24]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[25]_i_1 
       (.I0(r_state[2]),
        .I1(in13[25]),
        .O(r_cont_unos_next[25]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[26]_i_1 
       (.I0(r_state[2]),
        .I1(in13[26]),
        .O(r_cont_unos_next[26]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[27]_i_1 
       (.I0(r_state[2]),
        .I1(in13[27]),
        .O(r_cont_unos_next[27]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[28]_i_1 
       (.I0(r_state[2]),
        .I1(in13[28]),
        .O(r_cont_unos_next[28]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[29]_i_1 
       (.I0(r_state[2]),
        .I1(in13[29]),
        .O(r_cont_unos_next[29]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[2]_i_1 
       (.I0(r_state[2]),
        .I1(in13[2]),
        .O(r_cont_unos_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[30]_i_1 
       (.I0(r_state[2]),
        .I1(in13[30]),
        .O(r_cont_unos_next[30]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00008000)) 
    \r_cont_unos[31]_i_1 
       (.I0(\r_bits[2]_i_2_n_0 ),
        .I1(r_state[2]),
        .I2(rx_IBUF),
        .I3(\r_stop_bits_reg[0]_0 ),
        .I4(\r_ticks_reg[2]_0 ),
        .I5(r_state[0]),
        .O(r_cont_unos_next_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[31]_i_2 
       (.I0(r_state[2]),
        .I1(in13[31]),
        .O(r_cont_unos_next[31]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[3]_i_1 
       (.I0(r_state[2]),
        .I1(in13[3]),
        .O(r_cont_unos_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[4]_i_1 
       (.I0(r_state[2]),
        .I1(in13[4]),
        .O(r_cont_unos_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[5]_i_1 
       (.I0(r_state[2]),
        .I1(in13[5]),
        .O(r_cont_unos_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[6]_i_1 
       (.I0(r_state[2]),
        .I1(in13[6]),
        .O(r_cont_unos_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[7]_i_1 
       (.I0(r_state[2]),
        .I1(in13[7]),
        .O(r_cont_unos_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[8]_i_1 
       (.I0(r_state[2]),
        .I1(in13[8]),
        .O(r_cont_unos_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[9]_i_1 
       (.I0(r_state[2]),
        .I1(in13[9]),
        .O(r_cont_unos_next[9]));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[0]),
        .Q(r_cont_unos[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[10]),
        .Q(r_cont_unos[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[11]),
        .Q(r_cont_unos[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[12]),
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
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[13]),
        .Q(r_cont_unos[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[14]),
        .Q(r_cont_unos[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[15]),
        .Q(r_cont_unos[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[16] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[16]),
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
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[17]),
        .Q(r_cont_unos[17]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[18] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[18]),
        .Q(r_cont_unos[18]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[19] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[19]),
        .Q(r_cont_unos[19]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[1]),
        .Q(r_cont_unos[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[20] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[20]),
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
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[21]),
        .Q(r_cont_unos[21]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[22] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[22]),
        .Q(r_cont_unos[22]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[23] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[23]),
        .Q(r_cont_unos[23]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[24] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[24]),
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
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[25]),
        .Q(r_cont_unos[25]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[26] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[26]),
        .Q(r_cont_unos[26]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[27] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[27]),
        .Q(r_cont_unos[27]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[28] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[28]),
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
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[29]),
        .Q(r_cont_unos[29]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[2]),
        .Q(r_cont_unos[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[30] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[30]),
        .Q(r_cont_unos[30]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[31] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[31]),
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
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[3]),
        .Q(r_cont_unos[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[4]),
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
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[5]),
        .Q(r_cont_unos[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[6]),
        .Q(r_cont_unos[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[7]),
        .Q(r_cont_unos[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[8]),
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
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[9]),
        .Q(r_cont_unos[9]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[0]_i_1 
       (.I0(r_state[2]),
        .I1(\r_data_reg[7]_0 [1]),
        .O(r_data_next0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[1]_i_1 
       (.I0(r_state[2]),
        .I1(\r_data_reg[7]_0 [2]),
        .O(r_data_next0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[2]_i_1 
       (.I0(r_state[2]),
        .I1(\r_data_reg[7]_0 [3]),
        .O(r_data_next0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[3]_i_1 
       (.I0(r_state[2]),
        .I1(\r_data_reg[7]_0 [4]),
        .O(r_data_next0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[4]_i_1 
       (.I0(r_state[2]),
        .I1(\r_data_reg[7]_0 [5]),
        .O(r_data_next0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[5]_i_1 
       (.I0(r_state[2]),
        .I1(\r_data_reg[7]_0 [6]),
        .O(r_data_next0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[6]_i_1 
       (.I0(r_state[2]),
        .I1(\r_data_reg[7]_0 [7]),
        .O(r_data_next0_in[6]));
  LUT6 #(
    .INIT(64'h0001000100000100)) 
    \r_data[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(r_state[2]),
        .I4(\r_bits_reg[2]_0 ),
        .I5(r_state[0]),
        .O(r_data_next));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
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
        .Q(\r_data_reg[7]_0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[1]),
        .Q(\r_data_reg[7]_0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[2]),
        .Q(\r_data_reg[7]_0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[3]),
        .Q(\r_data_reg[7]_0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[4]),
        .Q(\r_data_reg[7]_0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[5]),
        .Q(\r_data_reg[7]_0 [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[6]),
        .Q(\r_data_reg[7]_0 [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[7]),
        .Q(\r_data_reg[7]_0 [7]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'hAAAAAAAA00008000)) 
    r_done_i_1
       (.I0(\r_stop_bits[1]_i_3_n_0 ),
        .I1(r_done_i_2_n_0),
        .I2(\r_stop_bits_reg[0]_0 ),
        .I3(r_stop_bits[0]),
        .I4(r_stop_bits[1]),
        .I5(r_state[0]),
        .O(r_done_next));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    r_done_i_2
       (.I0(Q[2]),
        .I1(rx_IBUF),
        .I2(r_ticks[2]),
        .I3(r_ticks[0]),
        .I4(r_ticks[1]),
        .I5(r_ticks[3]),
        .O(r_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_done_reg
       (.C(clock_IBUF_BUFG),
        .CE(r_done_next),
        .D(r_done_i_2_n_0),
        .Q(rx_done_OBUF),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \r_state[0]_i_1 
       (.I0(\r_state[4]_i_4_n_0 ),
        .I1(\r_state_reg[0]_0 ),
        .I2(\r_state_reg[0]_1 ),
        .I3(\r_state[0]_i_4_n_0 ),
        .I4(\r_stop_bits_reg[1]_0 ),
        .I5(\r_state[4]_i_3_n_0 ),
        .O(r_next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_state[0]_i_4 
       (.I0(rx_IBUF),
        .I1(r_state[0]),
        .O(\r_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hD0FFD0D0)) 
    \r_state[1]_i_1 
       (.I0(\r_stop_bits_reg[0]_0 ),
        .I1(\r_ticks_reg[3]_0 ),
        .I2(Q[0]),
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
        .O(\r_ticks_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFD0F0F0D0D0F0F0)) 
    \r_state[2]_i_1 
       (.I0(\r_state[2]_i_2_n_0 ),
        .I1(\r_ticks_reg[2]_0 ),
        .I2(r_state[2]),
        .I3(\r_state[2]_i_3_n_0 ),
        .I4(\r_stop_bits_reg[0]_0 ),
        .I5(Q[0]),
        .O(r_next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r_state[2]_i_2 
       (.I0(r_bits[1]),
        .I1(r_bits[0]),
        .I2(r_bits[2]),
        .O(\r_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
    .INIT(64'hAAAAAAAAC0000000)) 
    \r_state[3]_i_1 
       (.I0(Q[1]),
        .I1(r_state[2]),
        .I2(r_bits[2]),
        .I3(r_bits[0]),
        .I4(r_bits[1]),
        .I5(\r_bits_reg[2]_0 ),
        .O(r_next_state[3]));
  LUT5 #(
    .INIT(32'h00010116)) 
    \r_state[4]_i_1 
       (.I0(r_state[0]),
        .I1(Q[0]),
        .I2(r_state[2]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\r_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444CCCCF444CCCC)) 
    \r_state[4]_i_2 
       (.I0(\r_state[4]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(\r_state[4]_i_4_n_0 ),
        .I3(Q[1]),
        .I4(\r_stop_bits_reg[0]_0 ),
        .I5(\r_ticks_reg[2]_0 ),
        .O(r_next_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h005D)) 
    \r_state[4]_i_3 
       (.I0(rx_IBUF),
        .I1(r_stop_bits[0]),
        .I2(r_stop_bits[1]),
        .I3(\r_ticks_reg[2]_0 ),
        .O(\r_state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h100F)) 
    \r_state[4]_i_4 
       (.I0(r_cont_unos[31]),
        .I1(\r_ticks_reg[2]_0 ),
        .I2(r_cont_unos[0]),
        .I3(rx_IBUF),
        .O(\r_state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_state[4]_i_6 
       (.I0(r_ticks[2]),
        .I1(r_ticks[0]),
        .I2(r_ticks[1]),
        .I3(r_ticks[3]),
        .O(\r_ticks_reg[2]_0 ));
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
        .Q(Q[0]),
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
        .Q(Q[1]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "R_START:00010,R_DATA:00100,R_PARITY:01000,R_STOP:10000,R_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_state_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\r_state[4]_i_1_n_0 ),
        .D(r_next_state[4]),
        .Q(Q[2]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h55557FFFAA008000)) 
    \r_stop_bits[0]_i_1 
       (.I0(\r_stop_bits[1]_i_3_n_0 ),
        .I1(\r_stop_bits[1]_i_4_n_0 ),
        .I2(\r_stop_bits_reg[0]_0 ),
        .I3(Q[2]),
        .I4(r_state[0]),
        .I5(r_stop_bits[0]),
        .O(\r_stop_bits[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFFBF88880080)) 
    \r_stop_bits[1]_i_1 
       (.I0(\r_stop_bits[1]_i_2_n_0 ),
        .I1(\r_stop_bits[1]_i_3_n_0 ),
        .I2(\r_stop_bits[1]_i_4_n_0 ),
        .I3(\r_stop_bits_reg[1]_0 ),
        .I4(r_state[0]),
        .I5(r_stop_bits[1]),
        .O(\r_stop_bits[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \r_stop_bits[1]_i_2 
       (.I0(Q[2]),
        .I1(r_stop_bits[0]),
        .I2(r_stop_bits[1]),
        .O(\r_stop_bits[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00010101)) 
    \r_stop_bits[1]_i_3 
       (.I0(r_state[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(r_state[0]),
        .I4(Q[2]),
        .O(\r_stop_bits[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \r_stop_bits[1]_i_4 
       (.I0(\r_ticks_reg[2]_0 ),
        .I1(rx_IBUF),
        .I2(r_stop_bits[0]),
        .I3(r_stop_bits[1]),
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
  LUT2 #(
    .INIT(4'h1)) 
    \r_ticks[0]_i_1 
       (.I0(r_ticks[0]),
        .I1(\r_ticks[1]_i_2_n_0 ),
        .O(\r_ticks[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_ticks[1]_i_1 
       (.I0(r_ticks[1]),
        .I1(r_ticks[0]),
        .I2(\r_ticks[1]_i_2_n_0 ),
        .O(\r_ticks[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511113)) 
    \r_ticks[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(rx_IBUF),
        .I3(\r_ticks[3]_i_7_n_0 ),
        .I4(r_ticks[3]),
        .I5(\r_ticks[3]_i_6_n_0 ),
        .O(\r_ticks[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7878787878787800)) 
    \r_ticks[2]_i_1 
       (.I0(r_ticks[0]),
        .I1(r_ticks[1]),
        .I2(r_ticks[2]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\r_ticks[3]_i_6_n_0 ),
        .O(\r_ticks[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA20AA20AA20AAAA)) 
    \r_ticks[3]_i_1 
       (.I0(\r_ticks_next_inferred__6/i__n_0 ),
        .I1(\r_ticks[3]_i_3_n_0 ),
        .I2(\r_ticks_reg[0]_0 ),
        .I3(\r_ticks[3]_i_5_n_0 ),
        .I4(\r_state[4]_i_3_n_0 ),
        .I5(\r_stop_bits_reg[1]_0 ),
        .O(r_ticks_next));
  LUT6 #(
    .INIT(64'hFEFE00000000FEEE)) 
    \r_ticks[3]_i_2 
       (.I0(Q[2]),
        .I1(\r_ticks[3]_i_6_n_0 ),
        .I2(Q[0]),
        .I3(rx_IBUF),
        .I4(\r_ticks[3]_i_7_n_0 ),
        .I5(r_ticks[3]),
        .O(\r_ticks[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \r_ticks[3]_i_3 
       (.I0(rx_IBUF),
        .I1(r_ticks[1]),
        .I2(r_ticks[0]),
        .I3(r_ticks[2]),
        .I4(r_ticks[3]),
        .O(\r_ticks[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFEAA)) 
    \r_ticks[3]_i_5 
       (.I0(r_state[0]),
        .I1(r_state[2]),
        .I2(Q[1]),
        .I3(\r_bits_reg[1]_0 ),
        .I4(\r_bits_reg[1]_1 ),
        .I5(\r_bits_reg[1]_2 ),
        .O(\r_ticks[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_ticks[3]_i_6 
       (.I0(r_state[2]),
        .I1(Q[1]),
        .O(\r_ticks[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \r_ticks[3]_i_7 
       (.I0(r_ticks[1]),
        .I1(r_ticks[0]),
        .I2(r_ticks[2]),
        .O(\r_ticks[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \r_ticks_next_inferred__6/i_ 
       (.I0(r_state[0]),
        .I1(Q[0]),
        .I2(r_state[2]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\r_ticks_next_inferred__6/i__n_0 ));
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
endmodule

module TX1
   (tx_OBUF,
    tx_done_OBUF,
    Q,
    \t_ticks_reg[2]_0 ,
    \t_bits_reg[2]_0 ,
    reset_IBUF,
    clock_IBUF_BUFG,
    t_done_reg_0,
    \t_bits_reg[2]_1 ,
    \t_bits_reg[1]_0 ,
    \t_cont_unos_reg[0]_0 ,
    tx_start_IBUF,
    D);
  output tx_OBUF;
  output tx_done_OBUF;
  output [1:0]Q;
  output \t_ticks_reg[2]_0 ;
  output \t_bits_reg[2]_0 ;
  input reset_IBUF;
  input clock_IBUF_BUFG;
  input t_done_reg_0;
  input \t_bits_reg[2]_1 ;
  input \t_bits_reg[1]_0 ;
  input \t_cont_unos_reg[0]_0 ;
  input tx_start_IBUF;
  input [7:0]D;

  wire [7:0]D;
  wire [1:0]Q;
  wire clock_IBUF_BUFG;
  wire [31:1]in10;
  wire p_1_in;
  wire reset_IBUF;
  wire [2:0]t_bits;
  wire \t_bits[0]_i_1_n_0 ;
  wire \t_bits[0]_i_2_n_0 ;
  wire \t_bits[1]_i_1_n_0 ;
  wire \t_bits[2]_i_1_n_0 ;
  wire \t_bits[2]_i_2_n_0 ;
  wire \t_bits[2]_i_3_n_0 ;
  wire \t_bits[2]_i_4_n_0 ;
  wire \t_bits_reg[1]_0 ;
  wire \t_bits_reg[2]_0 ;
  wire \t_bits_reg[2]_1 ;
  wire [31:0]t_cont_unos;
  wire \t_cont_unos[31]_i_3_n_0 ;
  wire \t_cont_unos[31]_i_4_n_0 ;
  wire \t_cont_unos[31]_i_5_n_0 ;
  wire \t_cont_unos[31]_i_6_n_0 ;
  wire \t_cont_unos[31]_i_7_n_0 ;
  wire \t_cont_unos[31]_i_8_n_0 ;
  wire [31:0]t_cont_unos_next;
  wire t_cont_unos_next0_carry__0_n_0;
  wire t_cont_unos_next0_carry__0_n_1;
  wire t_cont_unos_next0_carry__0_n_2;
  wire t_cont_unos_next0_carry__0_n_3;
  wire t_cont_unos_next0_carry__1_n_0;
  wire t_cont_unos_next0_carry__1_n_1;
  wire t_cont_unos_next0_carry__1_n_2;
  wire t_cont_unos_next0_carry__1_n_3;
  wire t_cont_unos_next0_carry__2_n_0;
  wire t_cont_unos_next0_carry__2_n_1;
  wire t_cont_unos_next0_carry__2_n_2;
  wire t_cont_unos_next0_carry__2_n_3;
  wire t_cont_unos_next0_carry__3_n_0;
  wire t_cont_unos_next0_carry__3_n_1;
  wire t_cont_unos_next0_carry__3_n_2;
  wire t_cont_unos_next0_carry__3_n_3;
  wire t_cont_unos_next0_carry__4_n_0;
  wire t_cont_unos_next0_carry__4_n_1;
  wire t_cont_unos_next0_carry__4_n_2;
  wire t_cont_unos_next0_carry__4_n_3;
  wire t_cont_unos_next0_carry__5_n_0;
  wire t_cont_unos_next0_carry__5_n_1;
  wire t_cont_unos_next0_carry__5_n_2;
  wire t_cont_unos_next0_carry__5_n_3;
  wire t_cont_unos_next0_carry__6_n_2;
  wire t_cont_unos_next0_carry__6_n_3;
  wire t_cont_unos_next0_carry_n_0;
  wire t_cont_unos_next0_carry_n_1;
  wire t_cont_unos_next0_carry_n_2;
  wire t_cont_unos_next0_carry_n_3;
  wire t_cont_unos_next_0;
  wire \t_cont_unos_reg[0]_0 ;
  wire t_data_i_2_n_0;
  wire t_data_i_3_n_0;
  wire t_data_i_4_n_0;
  wire t_data_i_5_n_0;
  wire t_data_i_6_n_0;
  wire t_data_i_7_n_0;
  wire t_data_next;
  wire t_din_next;
  wire \t_din_reg_n_0_[1] ;
  wire \t_din_reg_n_0_[2] ;
  wire \t_din_reg_n_0_[3] ;
  wire \t_din_reg_n_0_[4] ;
  wire \t_din_reg_n_0_[5] ;
  wire \t_din_reg_n_0_[6] ;
  wire \t_din_reg_n_0_[7] ;
  wire t_done_i_3_n_0;
  wire t_done_next;
  wire t_done_reg_0;
  wire [4:0]t_next_state;
  wire [3:0]t_state;
  wire \t_state[4]_i_1_n_0 ;
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
  wire \t_ticks_reg[2]_0 ;
  wire tx_OBUF;
  wire tx_done_OBUF;
  wire tx_start_IBUF;
  wire [3:2]NLW_t_cont_unos_next0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_t_cont_unos_next0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFF00F70000CC08)) 
    \t_bits[0]_i_1 
       (.I0(\t_bits_reg[2]_1 ),
        .I1(Q[0]),
        .I2(\t_bits[0]_i_2_n_0 ),
        .I3(t_state[0]),
        .I4(\t_bits[2]_i_4_n_0 ),
        .I5(t_bits[0]),
        .O(\t_bits[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \t_bits[0]_i_2 
       (.I0(t_bits[1]),
        .I1(t_bits[0]),
        .I2(t_bits[2]),
        .I3(\t_ticks_reg[2]_0 ),
        .O(\t_bits[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF444F00008880)) 
    \t_bits[1]_i_1 
       (.I0(t_bits[0]),
        .I1(Q[0]),
        .I2(\t_bits_reg[1]_0 ),
        .I3(t_state[0]),
        .I4(\t_bits[2]_i_4_n_0 ),
        .I5(t_bits[1]),
        .O(\t_bits[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \t_bits[1]_i_3 
       (.I0(t_bits[2]),
        .I1(t_bits[0]),
        .I2(t_bits[1]),
        .O(\t_bits_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAFB0000AA08)) 
    \t_bits[2]_i_1 
       (.I0(\t_bits[2]_i_2_n_0 ),
        .I1(\t_bits_reg[2]_1 ),
        .I2(\t_bits[2]_i_3_n_0 ),
        .I3(t_state[0]),
        .I4(\t_bits[2]_i_4_n_0 ),
        .I5(t_bits[2]),
        .O(\t_bits[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \t_bits[2]_i_2 
       (.I0(t_bits[2]),
        .I1(t_bits[0]),
        .I2(t_bits[1]),
        .I3(Q[0]),
        .O(\t_bits[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hD555FFFF)) 
    \t_bits[2]_i_3 
       (.I0(\t_ticks_reg[2]_0 ),
        .I1(t_bits[2]),
        .I2(t_bits[0]),
        .I3(t_bits[1]),
        .I4(Q[0]),
        .O(\t_bits[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEC)) 
    \t_bits[2]_i_4 
       (.I0(t_state[0]),
        .I1(t_state[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(t_state[3]),
        .O(\t_bits[2]_i_4_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \t_cont_unos[0]_i_1 
       (.I0(t_cont_unos[0]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[10]_i_1 
       (.I0(in10[10]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[10]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[11]_i_1 
       (.I0(in10[11]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[11]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[12]_i_1 
       (.I0(in10[12]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[12]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[13]_i_1 
       (.I0(in10[13]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[13]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[14]_i_1 
       (.I0(in10[14]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[14]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[15]_i_1 
       (.I0(in10[15]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[15]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[16]_i_1 
       (.I0(in10[16]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[16]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[17]_i_1 
       (.I0(in10[17]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[17]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[18]_i_1 
       (.I0(in10[18]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[18]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[19]_i_1 
       (.I0(in10[19]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[19]));
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[1]_i_1 
       (.I0(in10[1]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[20]_i_1 
       (.I0(in10[20]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[20]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[21]_i_1 
       (.I0(in10[21]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[21]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[22]_i_1 
       (.I0(in10[22]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[22]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[23]_i_1 
       (.I0(in10[23]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[23]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[24]_i_1 
       (.I0(in10[24]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[24]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[25]_i_1 
       (.I0(in10[25]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[25]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[26]_i_1 
       (.I0(in10[26]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[26]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[27]_i_1 
       (.I0(in10[27]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[27]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[28]_i_1 
       (.I0(in10[28]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[28]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[29]_i_1 
       (.I0(in10[29]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[29]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[2]_i_1 
       (.I0(in10[2]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[30]_i_1 
       (.I0(in10[30]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[30]));
  LUT6 #(
    .INIT(64'hEAFFEAEAAAAAAAAA)) 
    \t_cont_unos[31]_i_1 
       (.I0(\t_cont_unos[31]_i_3_n_0 ),
        .I1(\t_cont_unos[31]_i_4_n_0 ),
        .I2(\t_bits_reg[1]_0 ),
        .I3(\t_cont_unos[31]_i_5_n_0 ),
        .I4(\t_cont_unos_reg[0]_0 ),
        .I5(\t_cont_unos[31]_i_6_n_0 ),
        .O(t_cont_unos_next_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[31]_i_2 
       (.I0(in10[31]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[31]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \t_cont_unos[31]_i_3 
       (.I0(t_state[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(t_state[3]),
        .I4(t_state[0]),
        .O(\t_cont_unos[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BEEE8222)) 
    \t_cont_unos[31]_i_4 
       (.I0(\t_cont_unos[31]_i_7_n_0 ),
        .I1(t_bits[2]),
        .I2(t_bits[0]),
        .I3(t_bits[1]),
        .I4(\t_cont_unos[31]_i_8_n_0 ),
        .I5(t_state[1]),
        .O(\t_cont_unos[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \t_cont_unos[31]_i_5 
       (.I0(Q[0]),
        .I1(p_1_in),
        .I2(t_state[1]),
        .O(\t_cont_unos[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \t_cont_unos[31]_i_6 
       (.I0(t_state[0]),
        .I1(t_state[3]),
        .I2(Q[1]),
        .O(\t_cont_unos[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    \t_cont_unos[31]_i_7 
       (.I0(\t_din_reg_n_0_[2] ),
        .I1(\t_din_reg_n_0_[3] ),
        .I2(t_bits[1]),
        .I3(t_bits[0]),
        .I4(p_1_in),
        .I5(\t_din_reg_n_0_[1] ),
        .O(\t_cont_unos[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    \t_cont_unos[31]_i_8 
       (.I0(\t_din_reg_n_0_[6] ),
        .I1(\t_din_reg_n_0_[7] ),
        .I2(t_bits[1]),
        .I3(t_bits[0]),
        .I4(\t_din_reg_n_0_[4] ),
        .I5(\t_din_reg_n_0_[5] ),
        .O(\t_cont_unos[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[3]_i_1 
       (.I0(in10[3]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[4]_i_1 
       (.I0(in10[4]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[5]_i_1 
       (.I0(in10[5]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[6]_i_1 
       (.I0(in10[6]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[7]_i_1 
       (.I0(in10[7]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[8]_i_1 
       (.I0(in10[8]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[9]_i_1 
       (.I0(in10[9]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[9]));
  CARRY4 t_cont_unos_next0_carry
       (.CI(1'b0),
        .CO({t_cont_unos_next0_carry_n_0,t_cont_unos_next0_carry_n_1,t_cont_unos_next0_carry_n_2,t_cont_unos_next0_carry_n_3}),
        .CYINIT(t_cont_unos[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[4:1]),
        .S(t_cont_unos[4:1]));
  CARRY4 t_cont_unos_next0_carry__0
       (.CI(t_cont_unos_next0_carry_n_0),
        .CO({t_cont_unos_next0_carry__0_n_0,t_cont_unos_next0_carry__0_n_1,t_cont_unos_next0_carry__0_n_2,t_cont_unos_next0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[8:5]),
        .S(t_cont_unos[8:5]));
  CARRY4 t_cont_unos_next0_carry__1
       (.CI(t_cont_unos_next0_carry__0_n_0),
        .CO({t_cont_unos_next0_carry__1_n_0,t_cont_unos_next0_carry__1_n_1,t_cont_unos_next0_carry__1_n_2,t_cont_unos_next0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[12:9]),
        .S(t_cont_unos[12:9]));
  CARRY4 t_cont_unos_next0_carry__2
       (.CI(t_cont_unos_next0_carry__1_n_0),
        .CO({t_cont_unos_next0_carry__2_n_0,t_cont_unos_next0_carry__2_n_1,t_cont_unos_next0_carry__2_n_2,t_cont_unos_next0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[16:13]),
        .S(t_cont_unos[16:13]));
  CARRY4 t_cont_unos_next0_carry__3
       (.CI(t_cont_unos_next0_carry__2_n_0),
        .CO({t_cont_unos_next0_carry__3_n_0,t_cont_unos_next0_carry__3_n_1,t_cont_unos_next0_carry__3_n_2,t_cont_unos_next0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[20:17]),
        .S(t_cont_unos[20:17]));
  CARRY4 t_cont_unos_next0_carry__4
       (.CI(t_cont_unos_next0_carry__3_n_0),
        .CO({t_cont_unos_next0_carry__4_n_0,t_cont_unos_next0_carry__4_n_1,t_cont_unos_next0_carry__4_n_2,t_cont_unos_next0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[24:21]),
        .S(t_cont_unos[24:21]));
  CARRY4 t_cont_unos_next0_carry__5
       (.CI(t_cont_unos_next0_carry__4_n_0),
        .CO({t_cont_unos_next0_carry__5_n_0,t_cont_unos_next0_carry__5_n_1,t_cont_unos_next0_carry__5_n_2,t_cont_unos_next0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[28:25]),
        .S(t_cont_unos[28:25]));
  CARRY4 t_cont_unos_next0_carry__6
       (.CI(t_cont_unos_next0_carry__5_n_0),
        .CO({NLW_t_cont_unos_next0_carry__6_CO_UNCONNECTED[3:2],t_cont_unos_next0_carry__6_n_2,t_cont_unos_next0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_t_cont_unos_next0_carry__6_O_UNCONNECTED[3],in10[31:29]}),
        .S({1'b0,t_cont_unos[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[0]),
        .Q(t_cont_unos[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[10]),
        .Q(t_cont_unos[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[11]),
        .Q(t_cont_unos[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[12]),
        .Q(t_cont_unos[12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[13]),
        .Q(t_cont_unos[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[14]),
        .Q(t_cont_unos[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[15]),
        .Q(t_cont_unos[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[16] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[16]),
        .Q(t_cont_unos[16]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[17] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[17]),
        .Q(t_cont_unos[17]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[18] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[18]),
        .Q(t_cont_unos[18]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[19] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[19]),
        .Q(t_cont_unos[19]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[1]),
        .Q(t_cont_unos[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[20] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[20]),
        .Q(t_cont_unos[20]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[21] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[21]),
        .Q(t_cont_unos[21]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[22] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[22]),
        .Q(t_cont_unos[22]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[23] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[23]),
        .Q(t_cont_unos[23]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[24] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[24]),
        .Q(t_cont_unos[24]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[25] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[25]),
        .Q(t_cont_unos[25]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[26] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[26]),
        .Q(t_cont_unos[26]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[27] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[27]),
        .Q(t_cont_unos[27]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[28] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[28]),
        .Q(t_cont_unos[28]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[29] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[29]),
        .Q(t_cont_unos[29]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[2]),
        .Q(t_cont_unos[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[30] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[30]),
        .Q(t_cont_unos[30]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[31] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[31]),
        .Q(t_cont_unos[31]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[3]),
        .Q(t_cont_unos[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[4]),
        .Q(t_cont_unos[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[5]),
        .Q(t_cont_unos[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[6]),
        .Q(t_cont_unos[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[7]),
        .Q(t_cont_unos[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[8]),
        .Q(t_cont_unos[8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(t_cont_unos_next_0),
        .D(t_cont_unos_next[9]),
        .Q(t_cont_unos[9]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h000A033A00000300)) 
    t_data_i_1
       (.I0(t_data_i_3_n_0),
        .I1(Q[0]),
        .I2(t_state[1]),
        .I3(t_state[0]),
        .I4(\t_ticks[3]_i_4_n_0 ),
        .I5(\t_cont_unos_reg[0]_0 ),
        .O(t_data_next));
  LUT6 #(
    .INIT(64'hFFF8FFF8FFF8F8F8)) 
    t_data_i_2
       (.I0(Q[0]),
        .I1(t_data_i_4_n_0),
        .I2(t_data_i_5_n_0),
        .I3(\t_bits_reg[2]_1 ),
        .I4(t_state[3]),
        .I5(Q[1]),
        .O(t_data_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000FF00FF7F00)) 
    t_data_i_3
       (.I0(t_cont_unos[31]),
        .I1(t_cont_unos[0]),
        .I2(\t_bits_reg[2]_0 ),
        .I3(Q[0]),
        .I4(t_state[3]),
        .I5(Q[1]),
        .O(t_data_i_3_n_0));
  LUT6 #(
    .INIT(64'hEFAA2CAAE3AA20AA)) 
    t_data_i_4
       (.I0(t_data_i_6_n_0),
        .I1(t_data_i_7_n_0),
        .I2(t_bits[2]),
        .I3(\t_ticks_reg[2]_0 ),
        .I4(\t_cont_unos[31]_i_8_n_0 ),
        .I5(\t_cont_unos[31]_i_7_n_0 ),
        .O(t_data_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    t_data_i_5
       (.I0(tx_start_IBUF),
        .I1(t_state[0]),
        .I2(p_1_in),
        .I3(t_state[1]),
        .O(t_data_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    t_data_i_6
       (.I0(t_cont_unos[0]),
        .I1(t_cont_unos[31]),
        .O(t_data_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    t_data_i_7
       (.I0(t_bits[1]),
        .I1(t_bits[0]),
        .O(t_data_i_7_n_0));
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
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(t_state[3]),
        .I4(t_state[0]),
        .I5(tx_start_IBUF),
        .O(t_din_next));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(D[0]),
        .Q(p_1_in),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(D[1]),
        .Q(\t_din_reg_n_0_[1] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(D[2]),
        .Q(\t_din_reg_n_0_[2] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(D[3]),
        .Q(\t_din_reg_n_0_[3] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(D[4]),
        .Q(\t_din_reg_n_0_[4] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(D[5]),
        .Q(\t_din_reg_n_0_[5] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(D[6]),
        .Q(\t_din_reg_n_0_[6] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(D[7]),
        .Q(\t_din_reg_n_0_[7] ),
        .R(reset_IBUF));
  LUT4 #(
    .INIT(16'hAA08)) 
    t_done_i_1
       (.I0(\t_stop_bits[1]_i_3_n_0 ),
        .I1(\t_bits_reg[2]_1 ),
        .I2(t_done_i_3_n_0),
        .I3(t_state[0]),
        .O(t_done_next));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    t_done_i_3
       (.I0(\t_ticks_reg[2]_0 ),
        .I1(t_stop_bits[1]),
        .I2(t_stop_bits[0]),
        .I3(Q[1]),
        .O(t_done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    t_done_reg
       (.C(clock_IBUF_BUFG),
        .CE(t_done_next),
        .D(t_done_reg_0),
        .Q(tx_done_OBUF),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h4444F44444444444)) 
    \t_state[0]_i_1 
       (.I0(tx_start_IBUF),
        .I1(t_state[0]),
        .I2(Q[1]),
        .I3(t_stop_bits[0]),
        .I4(t_stop_bits[1]),
        .I5(\t_ticks_reg[2]_0 ),
        .O(t_next_state[0]));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \t_state[1]_i_1 
       (.I0(t_state[0]),
        .I1(tx_start_IBUF),
        .I2(\t_bits_reg[2]_1 ),
        .I3(\t_ticks_reg[2]_0 ),
        .I4(t_state[1]),
        .O(t_next_state[1]));
  LUT6 #(
    .INIT(64'hFFFFFF007F00FF00)) 
    \t_state[2]_i_1 
       (.I0(t_bits[1]),
        .I1(t_bits[0]),
        .I2(t_bits[2]),
        .I3(Q[0]),
        .I4(\t_cont_unos_reg[0]_0 ),
        .I5(t_state[1]),
        .O(t_next_state[2]));
  LUT6 #(
    .INIT(64'hC0000000AAAAAAAA)) 
    \t_state[3]_i_1 
       (.I0(t_state[3]),
        .I1(Q[0]),
        .I2(t_bits[1]),
        .I3(t_bits[0]),
        .I4(t_bits[2]),
        .I5(\t_cont_unos_reg[0]_0 ),
        .O(t_next_state[3]));
  LUT6 #(
    .INIT(64'h0000001100111162)) 
    \t_state[4]_i_1 
       (.I0(t_state[3]),
        .I1(Q[1]),
        .I2(\t_bits_reg[2]_1 ),
        .I3(Q[0]),
        .I4(t_state[0]),
        .I5(t_state[1]),
        .O(\t_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFA2A2A2AAAAAAAA)) 
    \t_state[4]_i_2 
       (.I0(Q[1]),
        .I1(t_stop_bits[0]),
        .I2(t_stop_bits[1]),
        .I3(t_state[3]),
        .I4(\t_bits_reg[2]_1 ),
        .I5(\t_ticks_reg[2]_0 ),
        .O(t_next_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \t_state[4]_i_3 
       (.I0(t_ticks[2]),
        .I1(t_ticks[1]),
        .I2(t_ticks[3]),
        .I3(t_ticks[0]),
        .O(\t_ticks_reg[2]_0 ));
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
        .Q(Q[0]),
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
        .Q(Q[1]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h5555FF7F88880080)) 
    \t_stop_bits[0]_i_1 
       (.I0(\t_stop_bits[1]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\t_bits_reg[2]_1 ),
        .I3(\t_stop_bits[1]_i_4_n_0 ),
        .I4(t_state[0]),
        .I5(t_stop_bits[0]),
        .O(\t_stop_bits[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFFBF88880080)) 
    \t_stop_bits[1]_i_1 
       (.I0(\t_stop_bits[1]_i_2_n_0 ),
        .I1(\t_stop_bits[1]_i_3_n_0 ),
        .I2(t_done_reg_0),
        .I3(\t_stop_bits[1]_i_4_n_0 ),
        .I4(t_state[0]),
        .I5(t_stop_bits[1]),
        .O(\t_stop_bits[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \t_stop_bits[1]_i_2 
       (.I0(t_stop_bits[1]),
        .I1(t_stop_bits[0]),
        .I2(Q[1]),
        .O(\t_stop_bits[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \t_stop_bits[1]_i_3 
       (.I0(t_state[3]),
        .I1(t_state[0]),
        .I2(Q[1]),
        .I3(t_state[1]),
        .I4(Q[0]),
        .O(\t_stop_bits[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFFFFFF7FFF)) 
    \t_stop_bits[1]_i_4 
       (.I0(t_ticks[0]),
        .I1(t_ticks[3]),
        .I2(t_ticks[1]),
        .I3(t_ticks[2]),
        .I4(t_stop_bits[0]),
        .I5(t_stop_bits[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \t_ticks[1]_i_1 
       (.I0(t_ticks[1]),
        .I1(t_ticks[0]),
        .I2(t_state[0]),
        .O(\t_ticks[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \t_ticks[2]_i_1 
       (.I0(t_state[0]),
        .I1(t_ticks[0]),
        .I2(t_ticks[1]),
        .I3(t_ticks[2]),
        .O(\t_ticks[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0005033500000300)) 
    \t_ticks[3]_i_1 
       (.I0(\t_ticks[3]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(t_state[1]),
        .I3(t_state[0]),
        .I4(\t_ticks[3]_i_4_n_0 ),
        .I5(\t_bits_reg[2]_1 ),
        .O(t_ticks_next));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \t_ticks[3]_i_2 
       (.I0(t_state[0]),
        .I1(t_ticks[1]),
        .I2(t_ticks[0]),
        .I3(t_ticks[2]),
        .I4(t_ticks[3]),
        .O(\t_ticks[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE9E9EBE9E9E9E9E9)) 
    \t_ticks[3]_i_3 
       (.I0(Q[1]),
        .I1(t_state[3]),
        .I2(Q[0]),
        .I3(\t_ticks_reg[2]_0 ),
        .I4(t_stop_bits[1]),
        .I5(t_stop_bits[0]),
        .O(\t_ticks[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \t_ticks[3]_i_4 
       (.I0(Q[1]),
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
endmodule

(* CLK_POR_TICK = "163" *) (* D_BITS = "8" *) (* PARITY = "1" *) 
(* STOP_BITS = "2" *) 
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

  wire baudrategen1_n_0;
  wire baudrategen1_n_1;
  wire baudrategen1_n_10;
  wire baudrategen1_n_11;
  wire baudrategen1_n_2;
  wire baudrategen1_n_3;
  wire baudrategen1_n_4;
  wire baudrategen1_n_5;
  wire baudrategen1_n_6;
  wire baudrategen1_n_7;
  wire baudrategen1_n_8;
  wire baudrategen1_n_9;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]din;
  wire [7:0]din_IBUF;
  wire [7:0]dout;
  wire [7:0]dout_OBUF;
  wire my_rx1_n_4;
  wire my_rx1_n_5;
  wire my_tx1_n_4;
  wire my_tx1_n_5;
  wire [4:1]r_state;
  wire reset;
  wire reset_IBUF;
  wire rx;
  wire rx_IBUF;
  wire rx_done;
  wire rx_done_OBUF;
  wire [4:2]t_state;
  wire tx;
  wire tx_OBUF;
  wire tx_done;
  wire tx_done_OBUF;
  wire tx_start;
  wire tx_start_IBUF;

initial begin
 $sdf_annotate("UART_tb_time_synth.sdf",,,,"tool_control");
end
  BaudrateGen1 baudrategen1
       (.Q({r_state[4:3],r_state[1]}),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\count_reg[10]_0 (baudrategen1_n_6),
        .\count_reg[2]_0 (baudrategen1_n_1),
        .\count_reg[7]_0 (baudrategen1_n_2),
        .\count_reg[9]_0 (baudrategen1_n_3),
        .\count_reg[9]_1 (baudrategen1_n_8),
        .\r_state_reg[0] (my_rx1_n_4),
        .\r_state_reg[0]_0 (my_rx1_n_5),
        .\r_state_reg[1] (baudrategen1_n_5),
        .\r_state_reg[1]_0 (baudrategen1_n_11),
        .\r_state_reg[3] (baudrategen1_n_0),
        .\r_state_reg[4] (baudrategen1_n_9),
        .\r_ticks_reg[2] (baudrategen1_n_4),
        .reset_IBUF(reset_IBUF),
        .rx_IBUF(rx_IBUF),
        .\t_bits_reg[1] (my_tx1_n_5),
        .\t_bits_reg[1]_0 (my_tx1_n_4),
        .t_done_reg({t_state[4],t_state[2]}),
        .\t_state_reg[2] (baudrategen1_n_7),
        .\t_state_reg[4] (baudrategen1_n_10));
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
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
  RX1 my_rx1
       (.Q({r_state[4:3],r_state[1]}),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\r_bits_reg[1]_0 (baudrategen1_n_1),
        .\r_bits_reg[1]_1 (baudrategen1_n_2),
        .\r_bits_reg[1]_2 (baudrategen1_n_3),
        .\r_bits_reg[2]_0 (baudrategen1_n_4),
        .\r_data_reg[7]_0 (dout_OBUF),
        .\r_state_reg[0]_0 (baudrategen1_n_0),
        .\r_state_reg[0]_1 (baudrategen1_n_5),
        .\r_stop_bits_reg[0]_0 (baudrategen1_n_6),
        .\r_stop_bits_reg[1]_0 (baudrategen1_n_9),
        .\r_ticks_reg[0]_0 (baudrategen1_n_11),
        .\r_ticks_reg[2]_0 (my_rx1_n_4),
        .\r_ticks_reg[3]_0 (my_rx1_n_5),
        .reset_IBUF(reset_IBUF),
        .rx_IBUF(rx_IBUF),
        .rx_done_OBUF(rx_done_OBUF));
  TX1 my_tx1
       (.D(din_IBUF),
        .Q({t_state[4],t_state[2]}),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .reset_IBUF(reset_IBUF),
        .\t_bits_reg[1]_0 (baudrategen1_n_7),
        .\t_bits_reg[2]_0 (my_tx1_n_5),
        .\t_bits_reg[2]_1 (baudrategen1_n_6),
        .\t_cont_unos_reg[0]_0 (baudrategen1_n_8),
        .t_done_reg_0(baudrategen1_n_10),
        .\t_ticks_reg[2]_0 (my_tx1_n_4),
        .tx_OBUF(tx_OBUF),
        .tx_done_OBUF(tx_done_OBUF),
        .tx_start_IBUF(tx_start_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  OBUF rx_done_OBUF_inst
       (.I(rx_done_OBUF),
        .O(rx_done));
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
