// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Oct 31 12:57:08 2021
// Host        : DESKTOP-98G2N7A running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/TomasMartin/TP2/TP2.sim/sim_1/impl/timing/xsim/ALU_tb_time_impl.v
// Design      : ALU
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* D_BITS = "8" *) (* ECO_CHECKSUM = "5a21e465" *) 
(* NotValidForBitStream *)
module ALU
   (a,
    b,
    op,
    out);
  input [7:0]a;
  input [7:0]b;
  input [7:0]op;
  output [7:0]out;

  wire [7:0]a;
  wire [7:0]a_IBUF;
  wire [7:0]b;
  wire [7:0]b_IBUF;
  wire [7:0]data0;
  wire [7:0]op;
  wire [7:0]op_IBUF;
  wire [7:0]out;
  wire [7:0]out_OBUF;
  wire \out_OBUF[0]_inst_i_2_n_0 ;
  wire \out_OBUF[0]_inst_i_3_n_0 ;
  wire \out_OBUF[0]_inst_i_4_n_0 ;
  wire \out_OBUF[0]_inst_i_5_n_0 ;
  wire \out_OBUF[1]_inst_i_2_n_0 ;
  wire \out_OBUF[1]_inst_i_3_n_0 ;
  wire \out_OBUF[1]_inst_i_4_n_0 ;
  wire \out_OBUF[1]_inst_i_5_n_0 ;
  wire \out_OBUF[1]_inst_i_6_n_0 ;
  wire \out_OBUF[2]_inst_i_2_n_0 ;
  wire \out_OBUF[2]_inst_i_3_n_0 ;
  wire \out_OBUF[2]_inst_i_4_n_0 ;
  wire \out_OBUF[2]_inst_i_5_n_0 ;
  wire \out_OBUF[2]_inst_i_6_n_0 ;
  wire \out_OBUF[3]_inst_i_10_n_0 ;
  wire \out_OBUF[3]_inst_i_11_n_0 ;
  wire \out_OBUF[3]_inst_i_2_n_0 ;
  wire \out_OBUF[3]_inst_i_3_n_0 ;
  wire \out_OBUF[3]_inst_i_4_n_0 ;
  wire \out_OBUF[3]_inst_i_5_n_0 ;
  wire \out_OBUF[3]_inst_i_6_n_0 ;
  wire \out_OBUF[3]_inst_i_7_n_0 ;
  wire \out_OBUF[3]_inst_i_8_n_0 ;
  wire \out_OBUF[3]_inst_i_9_n_0 ;
  wire \out_OBUF[4]_inst_i_2_n_0 ;
  wire \out_OBUF[4]_inst_i_3_n_0 ;
  wire \out_OBUF[4]_inst_i_4_n_0 ;
  wire \out_OBUF[4]_inst_i_5_n_0 ;
  wire \out_OBUF[4]_inst_i_6_n_0 ;
  wire \out_OBUF[5]_inst_i_2_n_0 ;
  wire \out_OBUF[5]_inst_i_3_n_0 ;
  wire \out_OBUF[5]_inst_i_4_n_0 ;
  wire \out_OBUF[5]_inst_i_5_n_0 ;
  wire \out_OBUF[5]_inst_i_6_n_0 ;
  wire \out_OBUF[5]_inst_i_7_n_0 ;
  wire \out_OBUF[5]_inst_i_8_n_0 ;
  wire \out_OBUF[6]_inst_i_2_n_0 ;
  wire \out_OBUF[6]_inst_i_3_n_0 ;
  wire \out_OBUF[6]_inst_i_4_n_0 ;
  wire \out_OBUF[6]_inst_i_5_n_0 ;
  wire \out_OBUF[6]_inst_i_6_n_0 ;
  wire \out_OBUF[6]_inst_i_8_n_0 ;
  wire \out_OBUF[7]_inst_i_10_n_0 ;
  wire \out_OBUF[7]_inst_i_11_n_0 ;
  wire \out_OBUF[7]_inst_i_12_n_0 ;
  wire \out_OBUF[7]_inst_i_13_n_0 ;
  wire \out_OBUF[7]_inst_i_2_n_0 ;
  wire \out_OBUF[7]_inst_i_3_n_0 ;
  wire \out_OBUF[7]_inst_i_4_n_0 ;
  wire \out_OBUF[7]_inst_i_5_n_0 ;
  wire \out_OBUF[7]_inst_i_6_n_0 ;
  wire \out_OBUF[7]_inst_i_7_n_0 ;
  wire \out_OBUF[7]_inst_i_8_n_0 ;
  wire p_0_in;
  wire [2:0]\NLW_out_OBUF[3]_inst_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_out_OBUF[7]_inst_i_9_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("ALU_tb_time_impl.sdf",,,,"tool_control");
end
  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \b_IBUF[4]_inst 
       (.I(b[4]),
        .O(b_IBUF[4]));
  IBUF \b_IBUF[5]_inst 
       (.I(b[5]),
        .O(b_IBUF[5]));
  IBUF \b_IBUF[6]_inst 
       (.I(b[6]),
        .O(b_IBUF[6]));
  IBUF \b_IBUF[7]_inst 
       (.I(b[7]),
        .O(b_IBUF[7]));
  IBUF \op_IBUF[0]_inst 
       (.I(op[0]),
        .O(op_IBUF[0]));
  IBUF \op_IBUF[1]_inst 
       (.I(op[1]),
        .O(op_IBUF[1]));
  IBUF \op_IBUF[2]_inst 
       (.I(op[2]),
        .O(op_IBUF[2]));
  IBUF \op_IBUF[3]_inst 
       (.I(op[3]),
        .O(op_IBUF[3]));
  IBUF \op_IBUF[4]_inst 
       (.I(op[4]),
        .O(op_IBUF[4]));
  IBUF \op_IBUF[5]_inst 
       (.I(op[5]),
        .O(op_IBUF[5]));
  IBUF \op_IBUF[6]_inst 
       (.I(op[6]),
        .O(op_IBUF[6]));
  IBUF \op_IBUF[7]_inst 
       (.I(op[7]),
        .O(op_IBUF[7]));
  OBUF \out_OBUF[0]_inst 
       (.I(out_OBUF[0]),
        .O(out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h000000AC)) 
    \out_OBUF[0]_inst_i_1 
       (.I0(\out_OBUF[0]_inst_i_2_n_0 ),
        .I1(\out_OBUF[0]_inst_i_3_n_0 ),
        .I2(\out_OBUF[7]_inst_i_4_n_0 ),
        .I3(op_IBUF[6]),
        .I4(op_IBUF[7]),
        .O(out_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFFF161655001616)) 
    \out_OBUF[0]_inst_i_2 
       (.I0(\out_OBUF[7]_inst_i_6_n_0 ),
        .I1(b_IBUF[0]),
        .I2(a_IBUF[0]),
        .I3(\out_OBUF[3]_inst_i_5_n_0 ),
        .I4(\out_OBUF[7]_inst_i_5_n_0 ),
        .I5(\out_OBUF[0]_inst_i_4_n_0 ),
        .O(\out_OBUF[0]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCAAC000)) 
    \out_OBUF[0]_inst_i_3 
       (.I0(data0[0]),
        .I1(a_IBUF[0]),
        .I2(b_IBUF[0]),
        .I3(\out_OBUF[7]_inst_i_5_n_0 ),
        .I4(\out_OBUF[7]_inst_i_6_n_0 ),
        .O(\out_OBUF[0]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out_OBUF[0]_inst_i_4 
       (.I0(\out_OBUF[0]_inst_i_5_n_0 ),
        .I1(b_IBUF[0]),
        .I2(\out_OBUF[1]_inst_i_6_n_0 ),
        .I3(\out_OBUF[1]_inst_i_5_n_0 ),
        .O(\out_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out_OBUF[0]_inst_i_5 
       (.I0(a_IBUF[0]),
        .I1(a_IBUF[4]),
        .I2(b_IBUF[1]),
        .I3(a_IBUF[6]),
        .I4(b_IBUF[2]),
        .I5(a_IBUF[2]),
        .O(\out_OBUF[0]_inst_i_5_n_0 ));
  OBUF \out_OBUF[1]_inst 
       (.I(out_OBUF[1]),
        .O(out[1]));
  LUT6 #(
    .INIT(64'h00000000FFFFAA80)) 
    \out_OBUF[1]_inst_i_1 
       (.I0(\out_OBUF[6]_inst_i_2_n_0 ),
        .I1(\out_OBUF[6]_inst_i_3_n_0 ),
        .I2(\out_OBUF[1]_inst_i_2_n_0 ),
        .I3(\out_OBUF[1]_inst_i_3_n_0 ),
        .I4(\out_OBUF[1]_inst_i_4_n_0 ),
        .I5(p_0_in),
        .O(out_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[1]_inst_i_2 
       (.I0(a_IBUF[4]),
        .I1(b_IBUF[1]),
        .I2(a_IBUF[6]),
        .I3(b_IBUF[2]),
        .I4(a_IBUF[2]),
        .O(\out_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h50FF444450004444)) 
    \out_OBUF[1]_inst_i_3 
       (.I0(\out_OBUF[7]_inst_i_6_n_0 ),
        .I1(a_IBUF[7]),
        .I2(\out_OBUF[2]_inst_i_5_n_0 ),
        .I3(b_IBUF[0]),
        .I4(\out_OBUF[1]_inst_i_5_n_0 ),
        .I5(\out_OBUF[1]_inst_i_6_n_0 ),
        .O(\out_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5550444E50000AA0)) 
    \out_OBUF[1]_inst_i_4 
       (.I0(\out_OBUF[7]_inst_i_4_n_0 ),
        .I1(data0[1]),
        .I2(a_IBUF[1]),
        .I3(b_IBUF[1]),
        .I4(\out_OBUF[7]_inst_i_5_n_0 ),
        .I5(\out_OBUF[7]_inst_i_6_n_0 ),
        .O(\out_OBUF[1]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \out_OBUF[1]_inst_i_5 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[4]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[7]),
        .I4(b_IBUF[6]),
        .O(\out_OBUF[1]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFCFC0C0CFA0AFA0A)) 
    \out_OBUF[1]_inst_i_6 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[5]),
        .I2(b_IBUF[1]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[7]),
        .I5(b_IBUF[2]),
        .O(\out_OBUF[1]_inst_i_6_n_0 ));
  OBUF \out_OBUF[2]_inst 
       (.I(out_OBUF[2]),
        .O(out[2]));
  LUT6 #(
    .INIT(64'h00000000FFFFAA80)) 
    \out_OBUF[2]_inst_i_1 
       (.I0(\out_OBUF[6]_inst_i_2_n_0 ),
        .I1(\out_OBUF[6]_inst_i_3_n_0 ),
        .I2(\out_OBUF[2]_inst_i_2_n_0 ),
        .I3(\out_OBUF[2]_inst_i_3_n_0 ),
        .I4(\out_OBUF[2]_inst_i_4_n_0 ),
        .I5(p_0_in),
        .O(out_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h3300B8B8)) 
    \out_OBUF[2]_inst_i_2 
       (.I0(a_IBUF[5]),
        .I1(b_IBUF[1]),
        .I2(a_IBUF[3]),
        .I3(a_IBUF[7]),
        .I4(b_IBUF[2]),
        .O(\out_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333BBBB3030BBB8)) 
    \out_OBUF[2]_inst_i_3 
       (.I0(\out_OBUF[1]_inst_i_2_n_0 ),
        .I1(\out_OBUF[7]_inst_i_6_n_0 ),
        .I2(\out_OBUF[3]_inst_i_5_n_0 ),
        .I3(\out_OBUF[2]_inst_i_5_n_0 ),
        .I4(\out_OBUF[7]_inst_i_8_n_0 ),
        .I5(\out_OBUF[2]_inst_i_6_n_0 ),
        .O(\out_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5550444E50000AA0)) 
    \out_OBUF[2]_inst_i_4 
       (.I0(\out_OBUF[7]_inst_i_4_n_0 ),
        .I1(data0[2]),
        .I2(a_IBUF[2]),
        .I3(b_IBUF[2]),
        .I4(\out_OBUF[7]_inst_i_5_n_0 ),
        .I5(\out_OBUF[7]_inst_i_6_n_0 ),
        .O(\out_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \out_OBUF[2]_inst_i_5 
       (.I0(a_IBUF[4]),
        .I1(a_IBUF[7]),
        .I2(b_IBUF[1]),
        .I3(a_IBUF[6]),
        .I4(b_IBUF[2]),
        .I5(a_IBUF[2]),
        .O(\out_OBUF[2]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2808080A280)) 
    \out_OBUF[2]_inst_i_6 
       (.I0(\out_OBUF[6]_inst_i_8_n_0 ),
        .I1(b_IBUF[2]),
        .I2(a_IBUF[7]),
        .I3(a_IBUF[3]),
        .I4(b_IBUF[1]),
        .I5(a_IBUF[5]),
        .O(\out_OBUF[2]_inst_i_6_n_0 ));
  OBUF \out_OBUF[3]_inst 
       (.I(out_OBUF[3]),
        .O(out[3]));
  LUT6 #(
    .INIT(64'h00000000FFFFAA80)) 
    \out_OBUF[3]_inst_i_1 
       (.I0(\out_OBUF[6]_inst_i_2_n_0 ),
        .I1(\out_OBUF[6]_inst_i_3_n_0 ),
        .I2(\out_OBUF[3]_inst_i_2_n_0 ),
        .I3(\out_OBUF[3]_inst_i_3_n_0 ),
        .I4(\out_OBUF[3]_inst_i_4_n_0 ),
        .I5(p_0_in),
        .O(out_OBUF[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[3]_inst_i_10 
       (.I0(b_IBUF[2]),
        .I1(op_IBUF[1]),
        .I2(a_IBUF[2]),
        .O(\out_OBUF[3]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[3]_inst_i_11 
       (.I0(b_IBUF[1]),
        .I1(op_IBUF[1]),
        .I2(a_IBUF[1]),
        .O(\out_OBUF[3]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \out_OBUF[3]_inst_i_2 
       (.I0(a_IBUF[6]),
        .I1(a_IBUF[4]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .O(\out_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333BBBB3030BBB8)) 
    \out_OBUF[3]_inst_i_3 
       (.I0(\out_OBUF[2]_inst_i_2_n_0 ),
        .I1(\out_OBUF[7]_inst_i_6_n_0 ),
        .I2(\out_OBUF[3]_inst_i_5_n_0 ),
        .I3(\out_OBUF[3]_inst_i_6_n_0 ),
        .I4(\out_OBUF[7]_inst_i_8_n_0 ),
        .I5(\out_OBUF[3]_inst_i_7_n_0 ),
        .O(\out_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5550444E50000AA0)) 
    \out_OBUF[3]_inst_i_4 
       (.I0(\out_OBUF[7]_inst_i_4_n_0 ),
        .I1(data0[3]),
        .I2(a_IBUF[3]),
        .I3(b_IBUF[3]),
        .I4(\out_OBUF[7]_inst_i_5_n_0 ),
        .I5(\out_OBUF[7]_inst_i_6_n_0 ),
        .O(\out_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \out_OBUF[3]_inst_i_5 
       (.I0(a_IBUF[7]),
        .I1(b_IBUF[6]),
        .I2(b_IBUF[7]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[3]),
        .O(\out_OBUF[3]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \out_OBUF[3]_inst_i_6 
       (.I0(a_IBUF[5]),
        .I1(b_IBUF[1]),
        .I2(a_IBUF[3]),
        .I3(a_IBUF[7]),
        .I4(b_IBUF[2]),
        .O(\out_OBUF[3]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2808080A280)) 
    \out_OBUF[3]_inst_i_7 
       (.I0(\out_OBUF[6]_inst_i_8_n_0 ),
        .I1(b_IBUF[2]),
        .I2(a_IBUF[7]),
        .I3(a_IBUF[4]),
        .I4(b_IBUF[1]),
        .I5(a_IBUF[6]),
        .O(\out_OBUF[3]_inst_i_7_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET SWEEP" *) 
  CARRY4 \out_OBUF[3]_inst_i_8 
       (.CI(1'b0),
        .CO({\out_OBUF[3]_inst_i_8_n_0 ,\NLW_out_OBUF[3]_inst_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(a_IBUF[0]),
        .DI({a_IBUF[3:1],op_IBUF[1]}),
        .O(data0[3:0]),
        .S({\out_OBUF[3]_inst_i_9_n_0 ,\out_OBUF[3]_inst_i_10_n_0 ,\out_OBUF[3]_inst_i_11_n_0 ,b_IBUF[0]}));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[3]_inst_i_9 
       (.I0(b_IBUF[3]),
        .I1(op_IBUF[1]),
        .I2(a_IBUF[3]),
        .O(\out_OBUF[3]_inst_i_9_n_0 ));
  OBUF \out_OBUF[4]_inst 
       (.I(out_OBUF[4]),
        .O(out[4]));
  LUT6 #(
    .INIT(64'h00000000FFFFAA80)) 
    \out_OBUF[4]_inst_i_1 
       (.I0(\out_OBUF[6]_inst_i_2_n_0 ),
        .I1(\out_OBUF[6]_inst_i_3_n_0 ),
        .I2(\out_OBUF[4]_inst_i_2_n_0 ),
        .I3(\out_OBUF[4]_inst_i_3_n_0 ),
        .I4(\out_OBUF[4]_inst_i_4_n_0 ),
        .I5(p_0_in),
        .O(out_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \out_OBUF[4]_inst_i_2 
       (.I0(a_IBUF[7]),
        .I1(a_IBUF[5]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .O(\out_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00AC0000)) 
    \out_OBUF[4]_inst_i_3 
       (.I0(a_IBUF[6]),
        .I1(a_IBUF[4]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .I4(\out_OBUF[5]_inst_i_5_n_0 ),
        .I5(\out_OBUF[4]_inst_i_5_n_0 ),
        .O(\out_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5550444E50000AA0)) 
    \out_OBUF[4]_inst_i_4 
       (.I0(\out_OBUF[7]_inst_i_4_n_0 ),
        .I1(data0[4]),
        .I2(a_IBUF[4]),
        .I3(b_IBUF[4]),
        .I4(\out_OBUF[7]_inst_i_5_n_0 ),
        .I5(\out_OBUF[7]_inst_i_6_n_0 ),
        .O(\out_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7B3C480)) 
    \out_OBUF[4]_inst_i_5 
       (.I0(b_IBUF[0]),
        .I1(\out_OBUF[1]_inst_i_5_n_0 ),
        .I2(\out_OBUF[5]_inst_i_8_n_0 ),
        .I3(\out_OBUF[4]_inst_i_6_n_0 ),
        .I4(a_IBUF[7]),
        .I5(\out_OBUF[7]_inst_i_6_n_0 ),
        .O(\out_OBUF[4]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \out_OBUF[4]_inst_i_6 
       (.I0(a_IBUF[6]),
        .I1(b_IBUF[1]),
        .I2(a_IBUF[4]),
        .I3(a_IBUF[7]),
        .I4(b_IBUF[2]),
        .O(\out_OBUF[4]_inst_i_6_n_0 ));
  OBUF \out_OBUF[5]_inst 
       (.I(out_OBUF[5]),
        .O(out[5]));
  LUT6 #(
    .INIT(64'h00000000FFFFAA80)) 
    \out_OBUF[5]_inst_i_1 
       (.I0(\out_OBUF[6]_inst_i_2_n_0 ),
        .I1(\out_OBUF[6]_inst_i_3_n_0 ),
        .I2(\out_OBUF[5]_inst_i_2_n_0 ),
        .I3(\out_OBUF[5]_inst_i_3_n_0 ),
        .I4(\out_OBUF[5]_inst_i_4_n_0 ),
        .I5(p_0_in),
        .O(out_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \out_OBUF[5]_inst_i_2 
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(a_IBUF[6]),
        .O(\out_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00AC0000)) 
    \out_OBUF[5]_inst_i_3 
       (.I0(a_IBUF[7]),
        .I1(a_IBUF[5]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .I4(\out_OBUF[5]_inst_i_5_n_0 ),
        .I5(\out_OBUF[5]_inst_i_6_n_0 ),
        .O(\out_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5550444E50000AA0)) 
    \out_OBUF[5]_inst_i_4 
       (.I0(\out_OBUF[7]_inst_i_4_n_0 ),
        .I1(data0[5]),
        .I2(a_IBUF[5]),
        .I3(b_IBUF[5]),
        .I4(\out_OBUF[7]_inst_i_5_n_0 ),
        .I5(\out_OBUF[7]_inst_i_6_n_0 ),
        .O(\out_OBUF[5]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_OBUF[5]_inst_i_5 
       (.I0(\out_OBUF[7]_inst_i_6_n_0 ),
        .I1(\out_OBUF[7]_inst_i_8_n_0 ),
        .O(\out_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7B3C480)) 
    \out_OBUF[5]_inst_i_6 
       (.I0(b_IBUF[0]),
        .I1(\out_OBUF[1]_inst_i_5_n_0 ),
        .I2(\out_OBUF[5]_inst_i_7_n_0 ),
        .I3(\out_OBUF[5]_inst_i_8_n_0 ),
        .I4(a_IBUF[7]),
        .I5(\out_OBUF[7]_inst_i_6_n_0 ),
        .O(\out_OBUF[5]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF0E4)) 
    \out_OBUF[5]_inst_i_7 
       (.I0(b_IBUF[1]),
        .I1(a_IBUF[6]),
        .I2(a_IBUF[7]),
        .I3(b_IBUF[2]),
        .O(\out_OBUF[5]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF0E4)) 
    \out_OBUF[5]_inst_i_8 
       (.I0(b_IBUF[1]),
        .I1(a_IBUF[5]),
        .I2(a_IBUF[7]),
        .I3(b_IBUF[2]),
        .O(\out_OBUF[5]_inst_i_8_n_0 ));
  OBUF \out_OBUF[6]_inst 
       (.I(out_OBUF[6]),
        .O(out[6]));
  LUT6 #(
    .INIT(64'h00000000FFFFAA80)) 
    \out_OBUF[6]_inst_i_1 
       (.I0(\out_OBUF[6]_inst_i_2_n_0 ),
        .I1(\out_OBUF[6]_inst_i_3_n_0 ),
        .I2(\out_OBUF[6]_inst_i_4_n_0 ),
        .I3(\out_OBUF[6]_inst_i_5_n_0 ),
        .I4(\out_OBUF[6]_inst_i_6_n_0 ),
        .I5(p_0_in),
        .O(out_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \out_OBUF[6]_inst_i_2 
       (.I0(op_IBUF[1]),
        .I1(op_IBUF[2]),
        .I2(op_IBUF[5]),
        .I3(op_IBUF[4]),
        .I4(op_IBUF[3]),
        .O(\out_OBUF[6]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_OBUF[6]_inst_i_3 
       (.I0(\out_OBUF[6]_inst_i_8_n_0 ),
        .I1(\out_OBUF[7]_inst_i_6_n_0 ),
        .O(\out_OBUF[6]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \out_OBUF[6]_inst_i_4 
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(a_IBUF[7]),
        .O(\out_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555000057540300)) 
    \out_OBUF[6]_inst_i_5 
       (.I0(\out_OBUF[7]_inst_i_6_n_0 ),
        .I1(\out_OBUF[7]_inst_i_8_n_0 ),
        .I2(b_IBUF[1]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[7]),
        .I5(b_IBUF[2]),
        .O(\out_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5550444E50000AA0)) 
    \out_OBUF[6]_inst_i_6 
       (.I0(\out_OBUF[7]_inst_i_4_n_0 ),
        .I1(data0[6]),
        .I2(a_IBUF[6]),
        .I3(b_IBUF[6]),
        .I4(\out_OBUF[7]_inst_i_5_n_0 ),
        .I5(\out_OBUF[7]_inst_i_6_n_0 ),
        .O(\out_OBUF[6]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \out_OBUF[6]_inst_i_7 
       (.I0(op_IBUF[7]),
        .I1(op_IBUF[6]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \out_OBUF[6]_inst_i_8 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[7]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .I4(b_IBUF[3]),
        .I5(b_IBUF[0]),
        .O(\out_OBUF[6]_inst_i_8_n_0 ));
  OBUF \out_OBUF[7]_inst 
       (.I(out_OBUF[7]),
        .O(out[7]));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \out_OBUF[7]_inst_i_1 
       (.I0(\out_OBUF[7]_inst_i_2_n_0 ),
        .I1(\out_OBUF[7]_inst_i_3_n_0 ),
        .I2(\out_OBUF[7]_inst_i_4_n_0 ),
        .I3(op_IBUF[6]),
        .I4(op_IBUF[7]),
        .O(out_OBUF[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[7]_inst_i_10 
       (.I0(b_IBUF[7]),
        .I1(op_IBUF[1]),
        .I2(a_IBUF[7]),
        .O(\out_OBUF[7]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[7]_inst_i_11 
       (.I0(b_IBUF[6]),
        .I1(op_IBUF[1]),
        .I2(a_IBUF[6]),
        .O(\out_OBUF[7]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[7]_inst_i_12 
       (.I0(b_IBUF[5]),
        .I1(op_IBUF[1]),
        .I2(a_IBUF[5]),
        .O(\out_OBUF[7]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[7]_inst_i_13 
       (.I0(b_IBUF[4]),
        .I1(op_IBUF[1]),
        .I2(a_IBUF[4]),
        .O(\out_OBUF[7]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0D120D12CD120D12)) 
    \out_OBUF[7]_inst_i_2 
       (.I0(b_IBUF[7]),
        .I1(\out_OBUF[7]_inst_i_5_n_0 ),
        .I2(\out_OBUF[7]_inst_i_6_n_0 ),
        .I3(a_IBUF[7]),
        .I4(\out_OBUF[7]_inst_i_7_n_0 ),
        .I5(\out_OBUF[7]_inst_i_8_n_0 ),
        .O(\out_OBUF[7]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCAAC000)) 
    \out_OBUF[7]_inst_i_3 
       (.I0(data0[7]),
        .I1(a_IBUF[7]),
        .I2(b_IBUF[7]),
        .I3(\out_OBUF[7]_inst_i_5_n_0 ),
        .I4(\out_OBUF[7]_inst_i_6_n_0 ),
        .O(\out_OBUF[7]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h10000010)) 
    \out_OBUF[7]_inst_i_4 
       (.I0(op_IBUF[4]),
        .I1(op_IBUF[3]),
        .I2(op_IBUF[1]),
        .I3(op_IBUF[2]),
        .I4(op_IBUF[5]),
        .O(\out_OBUF[7]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00011000)) 
    \out_OBUF[7]_inst_i_5 
       (.I0(op_IBUF[3]),
        .I1(op_IBUF[4]),
        .I2(op_IBUF[5]),
        .I3(op_IBUF[2]),
        .I4(op_IBUF[1]),
        .O(\out_OBUF[7]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000A00000000000E)) 
    \out_OBUF[7]_inst_i_6 
       (.I0(op_IBUF[5]),
        .I1(op_IBUF[1]),
        .I2(op_IBUF[4]),
        .I3(op_IBUF[3]),
        .I4(op_IBUF[0]),
        .I5(op_IBUF[2]),
        .O(\out_OBUF[7]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \out_OBUF[7]_inst_i_7 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[2]),
        .O(\out_OBUF[7]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \out_OBUF[7]_inst_i_8 
       (.I0(b_IBUF[0]),
        .I1(b_IBUF[6]),
        .I2(b_IBUF[7]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[3]),
        .O(\out_OBUF[7]_inst_i_8_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \out_OBUF[7]_inst_i_9 
       (.CI(\out_OBUF[3]_inst_i_8_n_0 ),
        .CO(\NLW_out_OBUF[7]_inst_i_9_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,a_IBUF[6:4]}),
        .O(data0[7:4]),
        .S({\out_OBUF[7]_inst_i_10_n_0 ,\out_OBUF[7]_inst_i_11_n_0 ,\out_OBUF[7]_inst_i_12_n_0 ,\out_OBUF[7]_inst_i_13_n_0 }));
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
