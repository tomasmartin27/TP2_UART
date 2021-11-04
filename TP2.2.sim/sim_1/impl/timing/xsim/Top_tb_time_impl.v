// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Nov  3 19:04:28 2021
// Host        : DESKTOP-98G2N7A running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/TomasMartin/TP2.2/TP2.2.sim/sim_1/impl/timing/xsim/Top_tb_time_impl.v
// Design      : Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD29
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module ALU
   (data0,
    Q,
    \out[0]_i_3 ,
    S,
    \out[4]_i_5 );
  output [5:0]data0;
  input [4:0]Q;
  input [0:0]\out[0]_i_3 ;
  input [3:0]S;
  input [1:0]\out[4]_i_5 ;

  wire [4:0]Q;
  wire [3:0]S;
  wire \_inferred__0/i__carry_n_0 ;
  wire [5:0]data0;
  wire [0:0]\out[0]_i_3 ;
  wire [1:0]\out[4]_i_5 ;
  wire [2:0]\NLW__inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__0/i__carry__0_O_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\NLW__inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\out[0]_i_3 }),
        .O(data0[3:0]),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO(\NLW__inferred__0/i__carry__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[4]}),
        .O({\NLW__inferred__0/i__carry__0_O_UNCONNECTED [3:2],data0[5:4]}),
        .S({1'b0,1'b0,\out[4]_i_5 }));
endmodule

module BaudrateGen
   (\count_reg[10]_0 ,
    reset_IBUF,
    clock_IBUF_BUFG);
  output \count_reg[10]_0 ;
  input reset_IBUF;
  input clock_IBUF_BUFG;

  wire clock_IBUF_BUFG;
  wire [11:0]count;
  wire [11:1]count1;
  wire count10_carry__0_n_0;
  wire count10_carry__0_n_4;
  wire count10_carry__0_n_5;
  wire count10_carry__0_n_6;
  wire count10_carry__0_n_7;
  wire count10_carry__1_n_5;
  wire count10_carry__1_n_6;
  wire count10_carry__1_n_7;
  wire count10_carry_n_0;
  wire count10_carry_n_4;
  wire count10_carry_n_5;
  wire count10_carry_n_6;
  wire count10_carry_n_7;
  wire \count[0]_i_1_n_0 ;
  wire \count_reg[10]_0 ;
  wire \r_state[2]_i_4_n_0 ;
  wire \r_state[2]_i_5_n_0 ;
  wire reset_IBUF;
  wire [2:0]NLW_count10_carry_CO_UNCONNECTED;
  wire [2:0]NLW_count10_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_count10_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_count10_carry__1_O_UNCONNECTED;

  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count10_carry
       (.CI(1'b0),
        .CO({count10_carry_n_0,NLW_count10_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count10_carry_n_4,count10_carry_n_5,count10_carry_n_6,count10_carry_n_7}),
        .S(count[4:1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count10_carry__0
       (.CI(count10_carry_n_0),
        .CO({count10_carry__0_n_0,NLW_count10_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count10_carry__0_n_4,count10_carry__0_n_5,count10_carry__0_n_6,count10_carry__0_n_7}),
        .S(count[8:5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 count10_carry__1
       (.CI(count10_carry__0_n_0),
        .CO(NLW_count10_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count10_carry__1_O_UNCONNECTED[3],count10_carry__1_n_5,count10_carry__1_n_6,count10_carry__1_n_7}),
        .S({1'b0,count[11:9]}));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_1 
       (.I0(\count_reg[10]_0 ),
        .I1(count[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[10]_i_1 
       (.I0(count10_carry__1_n_6),
        .I1(\count_reg[10]_0 ),
        .O(count1[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[11]_i_1 
       (.I0(count10_carry__1_n_5),
        .I1(\count_reg[10]_0 ),
        .O(count1[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \count[1]_i_1 
       (.I0(count10_carry_n_7),
        .I1(\count_reg[10]_0 ),
        .O(count1[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[2]_i_1 
       (.I0(count10_carry_n_6),
        .I1(\count_reg[10]_0 ),
        .O(count1[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[3]_i_1 
       (.I0(count10_carry_n_5),
        .I1(\count_reg[10]_0 ),
        .O(count1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_1 
       (.I0(count10_carry_n_4),
        .I1(\count_reg[10]_0 ),
        .O(count1[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[5]_i_1 
       (.I0(count10_carry__0_n_7),
        .I1(\count_reg[10]_0 ),
        .O(count1[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[6]_i_1 
       (.I0(count10_carry__0_n_6),
        .I1(\count_reg[10]_0 ),
        .O(count1[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[7]_i_1 
       (.I0(count10_carry__0_n_5),
        .I1(\count_reg[10]_0 ),
        .O(count1[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_1 
       (.I0(count10_carry__0_n_4),
        .I1(\count_reg[10]_0 ),
        .O(count1[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[9]_i_1 
       (.I0(count10_carry__1_n_7),
        .I1(\count_reg[10]_0 ),
        .O(count1[9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
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
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \r_state[2]_i_2 
       (.I0(count[10]),
        .I1(count[1]),
        .I2(count[5]),
        .I3(count[2]),
        .I4(\r_state[2]_i_4_n_0 ),
        .I5(\r_state[2]_i_5_n_0 ),
        .O(\count_reg[10]_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \r_state[2]_i_4 
       (.I0(count[7]),
        .I1(count[4]),
        .I2(count[8]),
        .I3(count[11]),
        .O(\r_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_state[2]_i_5 
       (.I0(count[9]),
        .I1(count[0]),
        .I2(count[6]),
        .I3(count[3]),
        .O(\r_state[2]_i_5_n_0 ));
endmodule

module FIFO
   (D,
    datosALU,
    tx_start_UART,
    tx_full_int,
    rx_empty_int,
    r_full_reg_0,
    t_full_reg_0,
    r_empty_reg_0,
    clock_IBUF_BUFG,
    t_write_enable,
    Q,
    \a_reg[1] ,
    \a_reg[1]_0 ,
    reset_IBUF,
    \state_reg[0] ,
    tx_read,
    tx_write_int,
    rx_read_int,
    rx_write);
  output [5:0]D;
  output [5:0]datosALU;
  output tx_start_UART;
  output tx_full_int;
  output rx_empty_int;
  output r_full_reg_0;
  output [0:0]t_full_reg_0;
  output [5:0]r_empty_reg_0;
  input clock_IBUF_BUFG;
  input t_write_enable;
  input [5:0]Q;
  input \a_reg[1] ;
  input [5:0]\a_reg[1]_0 ;
  input reset_IBUF;
  input [1:0]\state_reg[0] ;
  input tx_read;
  input tx_write_int;
  input rx_read_int;
  input rx_write;

  wire [5:0]D;
  wire [5:0]Q;
  wire \a_reg[1] ;
  wire [5:0]\a_reg[1]_0 ;
  wire clock_IBUF_BUFG;
  wire [5:0]datosALU;
  wire \i[0]_i_1_n_0 ;
  wire \i_reg_n_0_[0] ;
  wire r_empty_i_1_n_0;
  wire r_empty_next0__2;
  wire [5:0]r_empty_reg_0;
  wire r_full_i_1_n_0;
  wire r_full_next0__2;
  wire r_full_reg_0;
  wire [1:0]r_read_ptr;
  wire \r_read_ptr[0]_i_1_n_0 ;
  wire \r_read_ptr[1]_i_1_n_0 ;
  wire [1:0]r_write_ptr;
  wire \r_write_ptr[0]_i_1_n_0 ;
  wire \r_write_ptr[1]_i_1_n_0 ;
  wire reset_IBUF;
  wire rx_empty_int;
  wire rx_read_int;
  wire rx_write;
  wire [1:0]\state_reg[0] ;
  wire t_empty;
  wire t_empty_i_1_n_0;
  wire t_empty_next0__2;
  wire t_full_i_1_n_0;
  wire t_full_next0__2;
  wire [0:0]t_full_reg_0;
  wire [1:0]t_read_ptr;
  wire \t_read_ptr[0]_i_1_n_0 ;
  wire \t_read_ptr[1]_i_1_n_0 ;
  wire t_start_i_1_n_0;
  wire t_write_enable;
  wire [1:0]t_write_ptr;
  wire \t_write_ptr[0]_i_1_n_0 ;
  wire \t_write_ptr[1]_i_1_n_0 ;
  wire tx_full_int;
  wire tx_read;
  wire tx_start_UART;
  wire tx_write_int;
  wire [1:0]NLW_r_memoria_reg_0_3_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_t_memoria_reg_0_3_0_5_DOD_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \a[0]_i_1 
       (.I0(datosALU[0]),
        .I1(rx_empty_int),
        .O(r_empty_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \a[1]_i_1 
       (.I0(datosALU[1]),
        .I1(rx_empty_int),
        .O(r_empty_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \a[2]_i_1 
       (.I0(datosALU[2]),
        .I1(rx_empty_int),
        .O(r_empty_reg_0[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \a[3]_i_1 
       (.I0(datosALU[3]),
        .I1(rx_empty_int),
        .O(r_empty_reg_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \a[4]_i_1 
       (.I0(datosALU[4]),
        .I1(rx_empty_int),
        .O(r_empty_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \a[5]_i_2 
       (.I0(datosALU[5]),
        .I1(rx_empty_int),
        .O(r_empty_reg_0[5]));
  LUT3 #(
    .INIT(8'h0B)) 
    \i[0]_i_1 
       (.I0(\i_reg_n_0_[0] ),
        .I1(tx_start_UART),
        .I2(t_empty),
        .O(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\i[0]_i_1_n_0 ),
        .Q(\i_reg_n_0_[0] ),
        .R(reset_IBUF));
  LUT5 #(
    .INIT(32'hCCECC0EC)) 
    r_empty_i_1
       (.I0(r_empty_next0__2),
        .I1(rx_empty_int),
        .I2(rx_read_int),
        .I3(rx_write),
        .I4(r_full_reg_0),
        .O(r_empty_i_1_n_0));
  LUT4 #(
    .INIT(16'h4218)) 
    r_empty_i_2
       (.I0(r_read_ptr[0]),
        .I1(r_read_ptr[1]),
        .I2(r_write_ptr[0]),
        .I3(r_write_ptr[1]),
        .O(r_empty_next0__2));
  FDSE #(
    .INIT(1'b1)) 
    r_empty_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(r_empty_i_1_n_0),
        .Q(rx_empty_int),
        .S(reset_IBUF));
  LUT5 #(
    .INIT(32'hCECCCE0C)) 
    r_full_i_1
       (.I0(r_full_next0__2),
        .I1(r_full_reg_0),
        .I2(rx_read_int),
        .I3(rx_write),
        .I4(rx_empty_int),
        .O(r_full_i_1_n_0));
  LUT4 #(
    .INIT(16'h2442)) 
    r_full_i_2
       (.I0(r_read_ptr[0]),
        .I1(r_write_ptr[0]),
        .I2(r_write_ptr[1]),
        .I3(r_read_ptr[1]),
        .O(r_full_next0__2));
  FDRE #(
    .INIT(1'b0)) 
    r_full_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(r_full_i_1_n_0),
        .Q(r_full_reg_0),
        .R(reset_IBUF));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "24" *) 
  (* RTL_RAM_NAME = "fifo/r_memoria" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ r_memoria_reg_0_3_0_5
       (.ADDRA({1'b0,1'b0,1'b0,r_read_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,r_read_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,r_read_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,r_write_ptr}),
        .DIA(\a_reg[1]_0 [1:0]),
        .DIB(\a_reg[1]_0 [3:2]),
        .DIC(\a_reg[1]_0 [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(datosALU[1:0]),
        .DOB(datosALU[3:2]),
        .DOC(datosALU[5:4]),
        .DOD(NLW_r_memoria_reg_0_3_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock_IBUF_BUFG),
        .WE(\a_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h758A)) 
    \r_read_ptr[0]_i_1 
       (.I0(rx_read_int),
        .I1(rx_write),
        .I2(rx_empty_int),
        .I3(r_read_ptr[0]),
        .O(\r_read_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h5DFFA200)) 
    \r_read_ptr[1]_i_1 
       (.I0(r_read_ptr[0]),
        .I1(rx_empty_int),
        .I2(rx_write),
        .I3(rx_read_int),
        .I4(r_read_ptr[1]),
        .O(\r_read_ptr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_read_ptr_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_read_ptr[0]_i_1_n_0 ),
        .Q(r_read_ptr[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_read_ptr_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_read_ptr[1]_i_1_n_0 ),
        .Q(r_read_ptr[1]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h758A)) 
    \r_write_ptr[0]_i_1 
       (.I0(rx_write),
        .I1(rx_read_int),
        .I2(r_full_reg_0),
        .I3(r_write_ptr[0]),
        .O(\r_write_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h5DFFA200)) 
    \r_write_ptr[1]_i_1 
       (.I0(r_write_ptr[0]),
        .I1(r_full_reg_0),
        .I2(rx_read_int),
        .I3(rx_write),
        .I4(r_write_ptr[1]),
        .O(\r_write_ptr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_write_ptr_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_write_ptr[0]_i_1_n_0 ),
        .Q(r_write_ptr[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_write_ptr_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_write_ptr[1]_i_1_n_0 ),
        .Q(r_write_ptr[1]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \state[0]_i_1 
       (.I0(tx_full_int),
        .I1(\state_reg[0] [1]),
        .I2(rx_empty_int),
        .I3(\state_reg[0] [0]),
        .O(t_full_reg_0));
  LUT5 #(
    .INIT(32'hF0FCA0F0)) 
    t_empty_i_1
       (.I0(tx_full_int),
        .I1(t_empty_next0__2),
        .I2(t_empty),
        .I3(tx_write_int),
        .I4(tx_read),
        .O(t_empty_i_1_n_0));
  LUT4 #(
    .INIT(16'h4218)) 
    t_empty_i_2
       (.I0(t_read_ptr[0]),
        .I1(t_read_ptr[1]),
        .I2(t_write_ptr[0]),
        .I3(t_write_ptr[1]),
        .O(t_empty_next0__2));
  FDSE #(
    .INIT(1'b1)) 
    t_empty_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(t_empty_i_1_n_0),
        .Q(t_empty),
        .S(reset_IBUF));
  LUT5 #(
    .INIT(32'hCECCCE0C)) 
    t_full_i_1
       (.I0(t_full_next0__2),
        .I1(tx_full_int),
        .I2(tx_read),
        .I3(tx_write_int),
        .I4(t_empty),
        .O(t_full_i_1_n_0));
  LUT4 #(
    .INIT(16'h2442)) 
    t_full_i_2
       (.I0(t_read_ptr[0]),
        .I1(t_write_ptr[0]),
        .I2(t_write_ptr[1]),
        .I3(t_read_ptr[1]),
        .O(t_full_next0__2));
  FDRE #(
    .INIT(1'b0)) 
    t_full_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(t_full_i_1_n_0),
        .Q(tx_full_int),
        .R(reset_IBUF));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "24" *) 
  (* RTL_RAM_NAME = "fifo/t_memoria" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_HD29 t_memoria_reg_0_3_0_5
       (.ADDRA({1'b0,1'b0,1'b0,t_read_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,t_read_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,t_read_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,t_write_ptr}),
        .DIA(Q[1:0]),
        .DIB(Q[3:2]),
        .DIC(Q[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(D[1:0]),
        .DOB(D[3:2]),
        .DOC(D[5:4]),
        .DOD(NLW_t_memoria_reg_0_3_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock_IBUF_BUFG),
        .WE(t_write_enable));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h758A)) 
    \t_read_ptr[0]_i_1 
       (.I0(tx_read),
        .I1(tx_write_int),
        .I2(t_empty),
        .I3(t_read_ptr[0]),
        .O(\t_read_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h5DFFA200)) 
    \t_read_ptr[1]_i_1 
       (.I0(t_read_ptr[0]),
        .I1(t_empty),
        .I2(tx_write_int),
        .I3(tx_read),
        .I4(t_read_ptr[1]),
        .O(\t_read_ptr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_read_ptr_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\t_read_ptr[0]_i_1_n_0 ),
        .Q(t_read_ptr[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_read_ptr_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\t_read_ptr[1]_i_1_n_0 ),
        .Q(t_read_ptr[1]),
        .R(reset_IBUF));
  LUT4 #(
    .INIT(16'h0001)) 
    t_start_i_1
       (.I0(t_empty),
        .I1(reset_IBUF),
        .I2(tx_start_UART),
        .I3(\i_reg_n_0_[0] ),
        .O(t_start_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    t_start_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(t_start_i_1_n_0),
        .Q(tx_start_UART),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h5DA2)) 
    \t_write_ptr[0]_i_1 
       (.I0(tx_write_int),
        .I1(tx_full_int),
        .I2(tx_read),
        .I3(t_write_ptr[0]),
        .O(\t_write_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h75FF8A00)) 
    \t_write_ptr[1]_i_1 
       (.I0(t_write_ptr[0]),
        .I1(tx_read),
        .I2(tx_full_int),
        .I3(tx_write_int),
        .I4(t_write_ptr[1]),
        .O(\t_write_ptr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_write_ptr_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\t_write_ptr[0]_i_1_n_0 ),
        .Q(t_write_ptr[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_write_ptr_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\t_write_ptr[1]_i_1_n_0 ),
        .Q(t_write_ptr[1]),
        .R(reset_IBUF));
endmodule

module Interfaz
   (tx_write_int,
    Q,
    rx_read_int,
    t_write_enable,
    \a_reg[4]_0 ,
    \op_reg[1]_0 ,
    S,
    \b_reg[5]_0 ,
    \out_reg[5]_0 ,
    reset_IBUF,
    clock_IBUF_BUFG,
    tx_full_int,
    rx_empty_int,
    D,
    data0,
    datosALU,
    \a_reg[5]_0 );
  output tx_write_int;
  output [1:0]Q;
  output rx_read_int;
  output t_write_enable;
  output [4:0]\a_reg[4]_0 ;
  output [0:0]\op_reg[1]_0 ;
  output [3:0]S;
  output [1:0]\b_reg[5]_0 ;
  output [5:0]\out_reg[5]_0 ;
  input reset_IBUF;
  input clock_IBUF_BUFG;
  input tx_full_int;
  input rx_empty_int;
  input [0:0]D;
  input [5:0]data0;
  input [5:0]datosALU;
  input [5:0]\a_reg[5]_0 ;

  wire [0:0]D;
  wire [1:0]Q;
  wire [3:0]\^S ;
  wire [5:5]a;
  wire \a[5]_i_1_n_0 ;
  wire [4:0]\a_reg[4]_0 ;
  wire [5:0]\a_reg[5]_0 ;
  wire [5:0]b;
  wire \b[0]_i_1_n_0 ;
  wire \b[1]_i_1_n_0 ;
  wire \b[2]_i_1_n_0 ;
  wire \b[3]_i_1_n_0 ;
  wire \b[4]_i_1_n_0 ;
  wire \b[5]_i_2_n_0 ;
  wire b_next;
  wire [1:0]\b_reg[5]_0 ;
  wire clock_IBUF_BUFG;
  wire [5:0]data0;
  wire [2:1]data5;
  wire [5:0]datosALU;
  wire [2:0]i;
  wire \i[0]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \i[2]_i_2_n_0 ;
  wire [4:1]next_state;
  wire \op[0]_i_1_n_0 ;
  wire \op[1]_i_1_n_0 ;
  wire \op[2]_i_1_n_0 ;
  wire \op[3]_i_1_n_0 ;
  wire \op[4]_i_1_n_0 ;
  wire \op[5]_i_2_n_0 ;
  wire op_next;
  wire [0:0]\op_reg[1]_0 ;
  wire \op_reg_n_0_[0] ;
  wire \op_reg_n_0_[2] ;
  wire \op_reg_n_0_[3] ;
  wire \op_reg_n_0_[4] ;
  wire \op_reg_n_0_[5] ;
  wire \out[0]_i_1_n_0 ;
  wire \out[0]_i_2_n_0 ;
  wire \out[0]_i_3_n_0 ;
  wire \out[0]_i_4_n_0 ;
  wire \out[0]_i_5_n_0 ;
  wire \out[0]_i_6_n_0 ;
  wire \out[0]_i_7_n_0 ;
  wire \out[1]_i_1_n_0 ;
  wire \out[1]_i_2_n_0 ;
  wire \out[1]_i_3_n_0 ;
  wire \out[1]_i_4_n_0 ;
  wire \out[1]_i_6_n_0 ;
  wire \out[2]_i_1_n_0 ;
  wire \out[2]_i_2_n_0 ;
  wire \out[2]_i_3_n_0 ;
  wire \out[2]_i_4_n_0 ;
  wire \out[2]_i_6_n_0 ;
  wire \out[3]_i_1_n_0 ;
  wire \out[3]_i_2_n_0 ;
  wire \out[3]_i_3_n_0 ;
  wire \out[3]_i_4_n_0 ;
  wire \out[3]_i_5_n_0 ;
  wire \out[3]_i_6_n_0 ;
  wire \out[3]_i_7_n_0 ;
  wire \out[3]_i_8_n_0 ;
  wire \out[3]_i_9_n_0 ;
  wire \out[4]_i_1_n_0 ;
  wire \out[4]_i_2_n_0 ;
  wire \out[4]_i_3_n_0 ;
  wire \out[4]_i_4_n_0 ;
  wire \out[4]_i_5_n_0 ;
  wire \out[4]_i_6_n_0 ;
  wire \out[5]_i_2_n_0 ;
  wire \out[5]_i_3_n_0 ;
  wire \out[5]_i_4_n_0 ;
  wire \out[5]_i_5_n_0 ;
  wire \out[5]_i_6_n_0 ;
  wire \out[5]_i_7_n_0 ;
  wire \out[5]_i_8_n_0 ;
  wire \out[5]_i_9_n_0 ;
  wire [5:0]\out_reg[5]_0 ;
  wire read_i_1_n_0;
  wire read_next;
  wire reset_IBUF;
  wire rx_empty_int;
  wire rx_read_int;
  wire [4:1]state;
  wire \state[4]_i_1_n_0 ;
  wire t_write_enable;
  wire tx_full_int;
  wire tx_write_int;
  wire write_next;

  assign S[3:1] = \^S [3:1];
  assign S[0] = b[0];
  LUT5 #(
    .INIT(32'h00000010)) 
    \a[5]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(Q[0]),
        .I3(state[4]),
        .I4(Q[1]),
        .O(\a[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\a[5]_i_1_n_0 ),
        .D(\a_reg[5]_0 [0]),
        .Q(\a_reg[4]_0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\a[5]_i_1_n_0 ),
        .D(\a_reg[5]_0 [1]),
        .Q(\a_reg[4]_0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\a[5]_i_1_n_0 ),
        .D(\a_reg[5]_0 [2]),
        .Q(\a_reg[4]_0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\a[5]_i_1_n_0 ),
        .D(\a_reg[5]_0 [3]),
        .Q(\a_reg[4]_0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\a[5]_i_1_n_0 ),
        .D(\a_reg[5]_0 [4]),
        .Q(\a_reg[4]_0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\a[5]_i_1_n_0 ),
        .D(\a_reg[5]_0 [5]),
        .Q(a),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[0]_i_1 
       (.I0(state[1]),
        .I1(datosALU[0]),
        .O(\b[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[1]_i_1 
       (.I0(state[1]),
        .I1(datosALU[1]),
        .O(\b[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[2]_i_1 
       (.I0(state[1]),
        .I1(datosALU[2]),
        .O(\b[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[3]_i_1 
       (.I0(state[1]),
        .I1(datosALU[3]),
        .O(\b[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[4]_i_1 
       (.I0(state[1]),
        .I1(datosALU[4]),
        .O(\b[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100030000)) 
    \b[5]_i_1 
       (.I0(rx_empty_int),
        .I1(state[4]),
        .I2(Q[1]),
        .I3(state[2]),
        .I4(Q[0]),
        .I5(state[1]),
        .O(b_next));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[5]_i_2 
       (.I0(state[1]),
        .I1(datosALU[5]),
        .O(\b[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(b_next),
        .D(\b[0]_i_1_n_0 ),
        .Q(b[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(b_next),
        .D(\b[1]_i_1_n_0 ),
        .Q(b[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(b_next),
        .D(\b[2]_i_1_n_0 ),
        .Q(b[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(b_next),
        .D(\b[3]_i_1_n_0 ),
        .Q(b[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(b_next),
        .D(\b[4]_i_1_n_0 ),
        .Q(b[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(b_next),
        .D(\b[5]_i_2_n_0 ),
        .Q(b[5]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'hFFFFFBBF00040000)) 
    \i[0]_i_1 
       (.I0(rx_empty_int),
        .I1(\i[2]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(Q[0]),
        .I5(i[0]),
        .O(\i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFBFF00000040)) 
    \i[1]_i_1 
       (.I0(rx_empty_int),
        .I1(\i[2]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(Q[0]),
        .I5(i[1]),
        .O(\i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFBBF00000000)) 
    \i[2]_i_1 
       (.I0(rx_empty_int),
        .I1(\i[2]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(Q[0]),
        .I5(i[2]),
        .O(\i[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[2]_i_2 
       (.I0(Q[1]),
        .I1(state[4]),
        .O(\i[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_1
       (.I0(b[5]),
        .I1(\op_reg[1]_0 ),
        .I2(a),
        .O(\b_reg[5]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_2
       (.I0(b[4]),
        .I1(\op_reg[1]_0 ),
        .I2(\a_reg[4]_0 [4]),
        .O(\b_reg[5]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_1
       (.I0(b[3]),
        .I1(\op_reg[1]_0 ),
        .I2(\a_reg[4]_0 [3]),
        .O(\^S [3]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2
       (.I0(b[2]),
        .I1(\op_reg[1]_0 ),
        .I2(\a_reg[4]_0 [2]),
        .O(\^S [2]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_3
       (.I0(b[1]),
        .I1(\op_reg[1]_0 ),
        .I2(\a_reg[4]_0 [1]),
        .O(\^S [1]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\i[0]_i_1_n_0 ),
        .Q(i[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\i[1]_i_1_n_0 ),
        .Q(i[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\i[2]_i_1_n_0 ),
        .Q(i[2]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op[0]_i_1 
       (.I0(state[2]),
        .I1(datosALU[0]),
        .O(\op[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op[1]_i_1 
       (.I0(state[2]),
        .I1(datosALU[1]),
        .O(\op[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op[2]_i_1 
       (.I0(state[2]),
        .I1(datosALU[2]),
        .O(\op[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op[3]_i_1 
       (.I0(state[2]),
        .I1(datosALU[3]),
        .O(\op[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op[4]_i_1 
       (.I0(state[2]),
        .I1(datosALU[4]),
        .O(\op[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000010100)) 
    \op[5]_i_1 
       (.I0(state[1]),
        .I1(Q[1]),
        .I2(state[4]),
        .I3(Q[0]),
        .I4(state[2]),
        .I5(rx_empty_int),
        .O(op_next));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op[5]_i_2 
       (.I0(state[2]),
        .I1(datosALU[5]),
        .O(\op[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(op_next),
        .D(\op[0]_i_1_n_0 ),
        .Q(\op_reg_n_0_[0] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(op_next),
        .D(\op[1]_i_1_n_0 ),
        .Q(\op_reg[1]_0 ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(op_next),
        .D(\op[2]_i_1_n_0 ),
        .Q(\op_reg_n_0_[2] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(op_next),
        .D(\op[3]_i_1_n_0 ),
        .Q(\op_reg_n_0_[3] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(op_next),
        .D(\op[4]_i_1_n_0 ),
        .Q(\op_reg_n_0_[4] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(op_next),
        .D(\op[5]_i_2_n_0 ),
        .Q(\op_reg_n_0_[5] ),
        .R(reset_IBUF));
  LUT3 #(
    .INIT(8'hA8)) 
    \out[0]_i_1 
       (.I0(Q[1]),
        .I1(\out[0]_i_2_n_0 ),
        .I2(\out[0]_i_3_n_0 ),
        .O(\out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A0A820288088000)) 
    \out[0]_i_2 
       (.I0(\out[4]_i_2_n_0 ),
        .I1(\out[4]_i_6_n_0 ),
        .I2(\out[5]_i_9_n_0 ),
        .I3(\out[0]_i_4_n_0 ),
        .I4(\out[0]_i_5_n_0 ),
        .I5(a),
        .O(\out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    \out[0]_i_3 
       (.I0(data0[0]),
        .I1(\a_reg[4]_0 [0]),
        .I2(b[0]),
        .I3(\out[5]_i_9_n_0 ),
        .I4(\out[5]_i_5_n_0 ),
        .I5(\out[5]_i_8_n_0 ),
        .O(\out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \out[0]_i_4 
       (.I0(\out[0]_i_6_n_0 ),
        .I1(b[1]),
        .I2(b[2]),
        .I3(\a_reg[4]_0 [2]),
        .I4(b[0]),
        .I5(\out[1]_i_4_n_0 ),
        .O(\out[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \out[0]_i_5 
       (.I0(\out[0]_i_6_n_0 ),
        .I1(b[1]),
        .I2(\out[0]_i_7_n_0 ),
        .I3(b[0]),
        .I4(\out[1]_i_6_n_0 ),
        .O(\out[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h11100010)) 
    \out[0]_i_6 
       (.I0(b[1]),
        .I1(b[0]),
        .I2(\a_reg[4]_0 [0]),
        .I3(b[2]),
        .I4(\a_reg[4]_0 [4]),
        .O(\out[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out[0]_i_7 
       (.I0(a),
        .I1(b[2]),
        .I2(\a_reg[4]_0 [2]),
        .O(\out[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAA80)) 
    \out[1]_i_1 
       (.I0(Q[1]),
        .I1(\out[4]_i_2_n_0 ),
        .I2(\out[1]_i_2_n_0 ),
        .I3(\out[1]_i_3_n_0 ),
        .O(\out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC840FFFFC8400000)) 
    \out[1]_i_2 
       (.I0(b[0]),
        .I1(\out[4]_i_6_n_0 ),
        .I2(\out[1]_i_4_n_0 ),
        .I3(\out[2]_i_4_n_0 ),
        .I4(\out[5]_i_9_n_0 ),
        .I5(data5[1]),
        .O(\out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    \out[1]_i_3 
       (.I0(data0[1]),
        .I1(\a_reg[4]_0 [1]),
        .I2(b[1]),
        .I3(\out[5]_i_9_n_0 ),
        .I4(\out[5]_i_5_n_0 ),
        .I5(\out[5]_i_8_n_0 ),
        .O(\out[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3300B8B8)) 
    \out[1]_i_4 
       (.I0(\a_reg[4]_0 [3]),
        .I1(b[1]),
        .I2(\a_reg[4]_0 [1]),
        .I3(a),
        .I4(b[2]),
        .O(\out[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[1]_i_5 
       (.I0(a),
        .I1(\out[1]_i_6_n_0 ),
        .I2(\out[2]_i_6_n_0 ),
        .I3(\out[4]_i_6_n_0 ),
        .I4(b[0]),
        .O(data5[1]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \out[1]_i_6 
       (.I0(\a_reg[4]_0 [3]),
        .I1(b[1]),
        .I2(\a_reg[4]_0 [1]),
        .I3(a),
        .I4(b[2]),
        .O(\out[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAA80)) 
    \out[2]_i_1 
       (.I0(Q[1]),
        .I1(\out[4]_i_2_n_0 ),
        .I2(\out[2]_i_2_n_0 ),
        .I3(\out[2]_i_3_n_0 ),
        .O(\out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC840FFFFC8400000)) 
    \out[2]_i_2 
       (.I0(b[0]),
        .I1(\out[4]_i_6_n_0 ),
        .I2(\out[2]_i_4_n_0 ),
        .I3(\out[3]_i_8_n_0 ),
        .I4(\out[5]_i_9_n_0 ),
        .I5(data5[2]),
        .O(\out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    \out[2]_i_3 
       (.I0(data0[2]),
        .I1(\a_reg[4]_0 [2]),
        .I2(b[2]),
        .I3(\out[5]_i_9_n_0 ),
        .I4(\out[5]_i_5_n_0 ),
        .I5(\out[5]_i_8_n_0 ),
        .O(\out[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \out[2]_i_4 
       (.I0(\a_reg[4]_0 [4]),
        .I1(b[1]),
        .I2(\a_reg[4]_0 [2]),
        .I3(b[2]),
        .O(\out[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[2]_i_5 
       (.I0(a),
        .I1(\out[2]_i_6_n_0 ),
        .I2(\out[3]_i_6_n_0 ),
        .I3(\out[4]_i_6_n_0 ),
        .I4(b[0]),
        .O(data5[2]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \out[2]_i_6 
       (.I0(\a_reg[4]_0 [4]),
        .I1(b[1]),
        .I2(a),
        .I3(b[2]),
        .I4(\a_reg[4]_0 [2]),
        .O(\out[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8880)) 
    \out[3]_i_1 
       (.I0(Q[1]),
        .I1(\out[4]_i_2_n_0 ),
        .I2(\out[3]_i_2_n_0 ),
        .I3(\out[3]_i_3_n_0 ),
        .I4(\out[3]_i_4_n_0 ),
        .O(\out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7B3C480)) 
    \out[3]_i_2 
       (.I0(b[0]),
        .I1(\out[4]_i_6_n_0 ),
        .I2(\out[3]_i_5_n_0 ),
        .I3(\out[3]_i_6_n_0 ),
        .I4(a),
        .I5(\out[5]_i_9_n_0 ),
        .O(\out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \out[3]_i_3 
       (.I0(b[2]),
        .I1(b[1]),
        .I2(\a_reg[4]_0 [4]),
        .I3(\out[3]_i_7_n_0 ),
        .I4(\out[3]_i_8_n_0 ),
        .I5(\out[3]_i_9_n_0 ),
        .O(\out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    \out[3]_i_4 
       (.I0(data0[3]),
        .I1(\a_reg[4]_0 [3]),
        .I2(b[3]),
        .I3(\out[5]_i_9_n_0 ),
        .I4(\out[5]_i_5_n_0 ),
        .I5(\out[5]_i_8_n_0 ),
        .O(\out[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF0E4)) 
    \out[3]_i_5 
       (.I0(b[1]),
        .I1(\a_reg[4]_0 [4]),
        .I2(a),
        .I3(b[2]),
        .O(\out[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF0E4)) 
    \out[3]_i_6 
       (.I0(b[1]),
        .I1(\a_reg[4]_0 [3]),
        .I2(a),
        .I3(b[2]),
        .O(\out[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out[3]_i_7 
       (.I0(b[0]),
        .I1(b[5]),
        .I2(b[4]),
        .I3(b[3]),
        .I4(\out[5]_i_9_n_0 ),
        .O(\out[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \out[3]_i_8 
       (.I0(a),
        .I1(b[1]),
        .I2(\a_reg[4]_0 [3]),
        .I3(b[2]),
        .O(\out[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \out[3]_i_9 
       (.I0(\out[5]_i_9_n_0 ),
        .I1(b[5]),
        .I2(b[4]),
        .I3(b[3]),
        .I4(b[0]),
        .O(\out[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8880)) 
    \out[4]_i_1 
       (.I0(Q[1]),
        .I1(\out[4]_i_2_n_0 ),
        .I2(\out[4]_i_3_n_0 ),
        .I3(\out[4]_i_4_n_0 ),
        .I4(\out[4]_i_5_n_0 ),
        .O(\out[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \out[4]_i_2 
       (.I0(\op_reg[1]_0 ),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[5] ),
        .I3(\op_reg_n_0_[4] ),
        .I4(\op_reg_n_0_[3] ),
        .O(\out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000300ABA8)) 
    \out[4]_i_3 
       (.I0(a),
        .I1(b[2]),
        .I2(b[1]),
        .I3(\a_reg[4]_0 [4]),
        .I4(\out[5]_i_9_n_0 ),
        .I5(\out[5]_i_6_n_0 ),
        .O(\out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h10000000F000F0F0)) 
    \out[4]_i_4 
       (.I0(b[2]),
        .I1(b[1]),
        .I2(a),
        .I3(b[0]),
        .I4(\out[4]_i_6_n_0 ),
        .I5(\out[5]_i_9_n_0 ),
        .O(\out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    \out[4]_i_5 
       (.I0(data0[4]),
        .I1(\a_reg[4]_0 [4]),
        .I2(b[4]),
        .I3(\out[5]_i_9_n_0 ),
        .I4(\out[5]_i_5_n_0 ),
        .I5(\out[5]_i_8_n_0 ),
        .O(\out[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \out[4]_i_6 
       (.I0(b[5]),
        .I1(b[4]),
        .I2(b[3]),
        .O(\out[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000300010000)) 
    \out[5]_i_1 
       (.I0(tx_full_int),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[4]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_next));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \out[5]_i_2 
       (.I0(\out[5]_i_3_n_0 ),
        .I1(\out[5]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(\out[5]_i_5_n_0 ),
        .O(\out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4040404FF00FFF00)) 
    \out[5]_i_3 
       (.I0(\out[5]_i_6_n_0 ),
        .I1(\out[5]_i_7_n_0 ),
        .I2(\out[5]_i_8_n_0 ),
        .I3(a),
        .I4(b[5]),
        .I5(\out[5]_i_9_n_0 ),
        .O(\out[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hECE0E020)) 
    \out[5]_i_4 
       (.I0(data0[5]),
        .I1(\out[5]_i_8_n_0 ),
        .I2(\out[5]_i_9_n_0 ),
        .I3(a),
        .I4(b[5]),
        .O(\out[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h10000010)) 
    \out[5]_i_5 
       (.I0(\op_reg_n_0_[4] ),
        .I1(\op_reg_n_0_[3] ),
        .I2(\op_reg[1]_0 ),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[5] ),
        .O(\out[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[5]_i_6 
       (.I0(b[0]),
        .I1(b[3]),
        .I2(b[4]),
        .I3(b[5]),
        .O(\out[5]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \out[5]_i_7 
       (.I0(b[2]),
        .I1(b[1]),
        .I2(a),
        .O(\out[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00011000)) 
    \out[5]_i_8 
       (.I0(\op_reg_n_0_[3] ),
        .I1(\op_reg_n_0_[4] ),
        .I2(\op_reg_n_0_[5] ),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg[1]_0 ),
        .O(\out[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000A00000000000E)) 
    \out[5]_i_9 
       (.I0(\op_reg_n_0_[5] ),
        .I1(\op_reg[1]_0 ),
        .I2(\op_reg_n_0_[4] ),
        .I3(\op_reg_n_0_[3] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(\op_reg_n_0_[2] ),
        .O(\out[5]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(write_next),
        .D(\out[0]_i_1_n_0 ),
        .Q(\out_reg[5]_0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(write_next),
        .D(\out[1]_i_1_n_0 ),
        .Q(\out_reg[5]_0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(write_next),
        .D(\out[2]_i_1_n_0 ),
        .Q(\out_reg[5]_0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(write_next),
        .D(\out[3]_i_1_n_0 ),
        .Q(\out_reg[5]_0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(write_next),
        .D(\out[4]_i_1_n_0 ),
        .Q(\out_reg[5]_0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(write_next),
        .D(\out[5]_i_2_n_0 ),
        .Q(\out_reg[5]_0 [5]),
        .R(reset_IBUF));
  LUT5 #(
    .INIT(32'h47FF4700)) 
    read_i_1
       (.I0(rx_empty_int),
        .I1(Q[0]),
        .I2(state[4]),
        .I3(read_next),
        .I4(rx_read_int),
        .O(read_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000300000314)) 
    read_i_2
       (.I0(rx_empty_int),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[4]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(read_next));
  FDRE #(
    .INIT(1'b0)) 
    read_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(read_i_1_n_0),
        .Q(rx_read_int),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \state[1]_i_1 
       (.I0(state[4]),
        .I1(i[2]),
        .I2(i[0]),
        .I3(i[1]),
        .I4(rx_empty_int),
        .I5(state[1]),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \state[2]_i_1 
       (.I0(state[4]),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .I4(rx_empty_int),
        .I5(state[2]),
        .O(next_state[2]));
  LUT6 #(
    .INIT(64'hFFFFF88F88888888)) 
    \state[3]_i_1 
       (.I0(tx_full_int),
        .I1(Q[1]),
        .I2(i[1]),
        .I3(i[0]),
        .I4(i[2]),
        .I5(state[4]),
        .O(next_state[3]));
  LUT5 #(
    .INIT(32'h00010116)) 
    \state[4]_i_1 
       (.I0(state[4]),
        .I1(Q[1]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(Q[0]),
        .O(\state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00FE)) 
    \state[4]_i_2 
       (.I0(Q[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(rx_empty_int),
        .O(next_state[4]));
  (* FSM_ENCODED_STATES = "ESPERA:10000,DATO_OP:00100,DATO_B:00010,RESULTADO:01000,DATO_A:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .D(D),
        .Q(Q[0]),
        .S(reset_IBUF));
  (* FSM_ENCODED_STATES = "ESPERA:10000,DATO_OP:00100,DATO_B:00010,RESULTADO:01000,DATO_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .D(next_state[1]),
        .Q(state[1]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "ESPERA:10000,DATO_OP:00100,DATO_B:00010,RESULTADO:01000,DATO_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .D(next_state[2]),
        .Q(state[2]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "ESPERA:10000,DATO_OP:00100,DATO_B:00010,RESULTADO:01000,DATO_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .D(next_state[3]),
        .Q(Q[1]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "ESPERA:10000,DATO_OP:00100,DATO_B:00010,RESULTADO:01000,DATO_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .D(next_state[4]),
        .Q(state[4]),
        .R(reset_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    t_memoria_reg_0_3_0_5_i_1
       (.I0(tx_write_int),
        .I1(tx_full_int),
        .O(t_write_enable));
  FDRE #(
    .INIT(1'b0)) 
    write_reg
       (.C(clock_IBUF_BUFG),
        .CE(write_next),
        .D(Q[1]),
        .Q(tx_write_int),
        .R(reset_IBUF));
endmodule

module RX
   (rx_write,
    Q,
    r_done_reg_0,
    reset_IBUF,
    clock_IBUF_BUFG,
    rx_IBUF,
    r_done_reg_1,
    r_memoria_reg_0_3_0_5);
  output rx_write;
  output [5:0]Q;
  output r_done_reg_0;
  input reset_IBUF;
  input clock_IBUF_BUFG;
  input rx_IBUF;
  input r_done_reg_1;
  input r_memoria_reg_0_3_0_5;

  wire [5:0]Q;
  wire clock_IBUF_BUFG;
  wire [2:0]r_bits;
  wire \r_bits[0]_i_1_n_0 ;
  wire \r_bits[1]_i_1_n_0 ;
  wire \r_bits[2]_i_1_n_0 ;
  wire \r_bits[2]_i_3_n_0 ;
  wire r_bits_next;
  wire \r_data[0]_i_1_n_0 ;
  wire \r_data[1]_i_1_n_0 ;
  wire \r_data[2]_i_1_n_0 ;
  wire \r_data[3]_i_1_n_0 ;
  wire \r_data[4]_i_1_n_0 ;
  wire \r_data[5]_i_2_n_0 ;
  wire r_data_next;
  wire r_done_i_1_n_0;
  wire r_done_i_2_n_0;
  wire r_done_i_3_n_0;
  wire r_done_reg_0;
  wire r_done_reg_1;
  wire r_memoria_reg_0_3_0_5;
  wire [4:0]r_next_state;
  wire [4:0]r_state;
  wire \r_state[0]_i_2_n_0 ;
  wire \r_state[2]_i_3_n_0 ;
  wire \r_state[4]_i_1_n_0 ;
  wire \r_state[4]_i_3_n_0 ;
  wire \r_state[4]_i_4_n_0 ;
  wire \r_state[4]_i_5_n_0 ;
  wire [1:0]r_stop_bits;
  wire \r_stop_bits[0]_i_1_n_0 ;
  wire \r_stop_bits[1]_i_1_n_0 ;
  wire \r_stop_bits[1]_i_2_n_0 ;
  wire \r_stop_bits[1]_i_3_n_0 ;
  wire [3:0]r_ticks;
  wire \r_ticks[0]_i_1_n_0 ;
  wire \r_ticks[1]_i_1_n_0 ;
  wire \r_ticks[2]_i_1_n_0 ;
  wire \r_ticks[3]_i_2_n_0 ;
  wire \r_ticks[3]_i_3_n_0 ;
  wire \r_ticks[3]_i_4_n_0 ;
  wire \r_ticks[3]_i_5_n_0 ;
  wire r_ticks_next;
  wire \r_ticks_next_inferred__6/i__n_0 ;
  wire reset_IBUF;
  wire rx_IBUF;
  wire rx_write;

  LUT3 #(
    .INIT(8'h38)) 
    \r_bits[0]_i_1 
       (.I0(r_state[2]),
        .I1(r_bits_next),
        .I2(r_bits[0]),
        .O(\r_bits[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \r_bits[1]_i_1 
       (.I0(r_bits[0]),
        .I1(r_state[2]),
        .I2(r_bits_next),
        .I3(r_bits[1]),
        .O(\r_bits[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \r_bits[2]_i_1 
       (.I0(r_state[2]),
        .I1(r_bits[0]),
        .I2(r_bits[1]),
        .I3(r_bits_next),
        .I4(r_bits[2]),
        .O(\r_bits[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0003001000030000)) 
    \r_bits[2]_i_2 
       (.I0(\r_bits[2]_i_3_n_0 ),
        .I1(r_state[4]),
        .I2(r_state[2]),
        .I3(r_state[1]),
        .I4(r_state[0]),
        .I5(r_done_reg_1),
        .O(r_bits_next));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \r_bits[2]_i_3 
       (.I0(\r_state[4]_i_5_n_0 ),
        .I1(r_bits[0]),
        .I2(r_bits[1]),
        .I3(r_bits[2]),
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
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[0]_i_1 
       (.I0(r_state[2]),
        .I1(Q[1]),
        .O(\r_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[1]_i_1 
       (.I0(r_state[2]),
        .I1(Q[2]),
        .O(\r_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[2]_i_1 
       (.I0(r_state[2]),
        .I1(Q[3]),
        .O(\r_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[3]_i_1 
       (.I0(r_state[2]),
        .I1(Q[4]),
        .O(\r_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[4]_i_1 
       (.I0(r_state[2]),
        .I1(Q[5]),
        .O(\r_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    \r_data[5]_i_1 
       (.I0(r_bits_next),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .I3(r_state[2]),
        .I4(r_state[4]),
        .I5(\r_state[4]_i_4_n_0 ),
        .O(r_data_next));
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[5]_i_2 
       (.I0(rx_IBUF),
        .I1(r_state[2]),
        .O(\r_data[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(\r_data[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(\r_data[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(\r_data[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(\r_data[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(\r_data[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(\r_data[5]_i_2_n_0 ),
        .Q(Q[5]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'hFFFFF0FF0000F080)) 
    r_done_i_1
       (.I0(r_done_i_2_n_0),
        .I1(r_done_reg_1),
        .I2(r_done_i_3_n_0),
        .I3(r_state[0]),
        .I4(\r_stop_bits[1]_i_3_n_0 ),
        .I5(rx_write),
        .O(r_done_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    r_done_i_2
       (.I0(r_stop_bits[0]),
        .I1(r_stop_bits[1]),
        .O(r_done_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    r_done_i_3
       (.I0(r_state[4]),
        .I1(rx_IBUF),
        .I2(r_ticks[2]),
        .I3(r_ticks[0]),
        .I4(r_ticks[1]),
        .I5(r_ticks[3]),
        .O(r_done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_done_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(r_done_i_1_n_0),
        .Q(rx_write),
        .R(reset_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    r_memoria_reg_0_3_0_5_i_1
       (.I0(rx_write),
        .I1(r_memoria_reg_0_3_0_5),
        .O(r_done_reg_0));
  LUT6 #(
    .INIT(64'hF2F22222F2FF2222)) 
    \r_state[0]_i_1 
       (.I0(r_state[4]),
        .I1(\r_state[4]_i_3_n_0 ),
        .I2(r_state[0]),
        .I3(\r_state[0]_i_2_n_0 ),
        .I4(rx_IBUF),
        .I5(\r_state[2]_i_3_n_0 ),
        .O(r_next_state[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \r_state[0]_i_2 
       (.I0(r_state[1]),
        .I1(r_done_reg_1),
        .O(\r_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD0FFD0D0)) 
    \r_state[1]_i_1 
       (.I0(r_done_reg_1),
        .I1(\r_state[2]_i_3_n_0 ),
        .I2(r_state[1]),
        .I3(rx_IBUF),
        .I4(r_state[0]),
        .O(r_next_state[1]));
  LUT6 #(
    .INIT(64'h444444444444F444)) 
    \r_state[2]_i_1 
       (.I0(\r_state[4]_i_4_n_0 ),
        .I1(r_state[2]),
        .I2(r_state[1]),
        .I3(r_done_reg_1),
        .I4(rx_IBUF),
        .I5(\r_state[2]_i_3_n_0 ),
        .O(r_next_state[2]));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \r_state[2]_i_3 
       (.I0(r_ticks[3]),
        .I1(r_ticks[2]),
        .I2(r_ticks[0]),
        .I3(r_ticks[1]),
        .O(\r_state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0116)) 
    \r_state[4]_i_1 
       (.I0(r_state[0]),
        .I1(r_state[1]),
        .I2(r_state[4]),
        .I3(r_state[2]),
        .O(\r_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \r_state[4]_i_2 
       (.I0(r_state[4]),
        .I1(\r_state[4]_i_3_n_0 ),
        .I2(r_state[2]),
        .I3(\r_state[4]_i_4_n_0 ),
        .O(r_next_state[4]));
  LUT5 #(
    .INIT(32'hFFA8FFFF)) 
    \r_state[4]_i_3 
       (.I0(rx_IBUF),
        .I1(r_stop_bits[1]),
        .I2(r_stop_bits[0]),
        .I3(\r_state[4]_i_5_n_0 ),
        .I4(r_done_reg_1),
        .O(\r_state[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \r_state[4]_i_4 
       (.I0(r_done_reg_1),
        .I1(r_bits[0]),
        .I2(r_bits[1]),
        .I3(r_bits[2]),
        .I4(\r_state[4]_i_5_n_0 ),
        .O(\r_state[4]_i_4_n_0 ));
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
    \r_state_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\r_state[4]_i_1_n_0 ),
        .D(r_next_state[4]),
        .Q(r_state[4]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'hF0F0F0F00A0AF008)) 
    \r_stop_bits[0]_i_1 
       (.I0(r_state[4]),
        .I1(r_stop_bits[1]),
        .I2(r_stop_bits[0]),
        .I3(\r_stop_bits[1]_i_2_n_0 ),
        .I4(r_state[0]),
        .I5(\r_stop_bits[1]_i_3_n_0 ),
        .O(\r_stop_bits[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC2828CC28)) 
    \r_stop_bits[1]_i_1 
       (.I0(r_state[4]),
        .I1(r_stop_bits[1]),
        .I2(r_stop_bits[0]),
        .I3(\r_stop_bits[1]_i_2_n_0 ),
        .I4(r_state[0]),
        .I5(\r_stop_bits[1]_i_3_n_0 ),
        .O(\r_stop_bits[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \r_stop_bits[1]_i_2 
       (.I0(\r_state[4]_i_5_n_0 ),
        .I1(rx_IBUF),
        .I2(r_state[4]),
        .I3(r_done_reg_1),
        .O(\r_stop_bits[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEC)) 
    \r_stop_bits[1]_i_3 
       (.I0(r_state[0]),
        .I1(r_state[1]),
        .I2(r_state[4]),
        .I3(r_state[2]),
        .O(\r_stop_bits[1]_i_3_n_0 ));
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
  (* \PinAttr:I2:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0F0E)) 
    \r_ticks[0]_i_1 
       (.I0(r_state[4]),
        .I1(r_state[1]),
        .I2(r_ticks[0]),
        .I3(r_state[2]),
        .O(\r_ticks[0]_i_1_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h0FF00EE0)) 
    \r_ticks[1]_i_1 
       (.I0(r_state[4]),
        .I1(r_state[1]),
        .I2(r_ticks[1]),
        .I3(r_ticks[0]),
        .I4(r_state[2]),
        .O(\r_ticks[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7878787878787800)) 
    \r_ticks[2]_i_1 
       (.I0(r_ticks[0]),
        .I1(r_ticks[1]),
        .I2(r_ticks[2]),
        .I3(r_state[1]),
        .I4(r_state[4]),
        .I5(r_state[2]),
        .O(\r_ticks[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8888888AAAAAAAA)) 
    \r_ticks[3]_i_1 
       (.I0(\r_ticks_next_inferred__6/i__n_0 ),
        .I1(r_state[0]),
        .I2(r_state[4]),
        .I3(\r_ticks[3]_i_3_n_0 ),
        .I4(r_done_reg_1),
        .I5(\r_ticks[3]_i_4_n_0 ),
        .O(r_ticks_next));
  LUT6 #(
    .INIT(64'hFEFE00000000FEEE)) 
    \r_ticks[3]_i_2 
       (.I0(r_state[4]),
        .I1(r_state[2]),
        .I2(r_state[1]),
        .I3(rx_IBUF),
        .I4(\r_ticks[3]_i_5_n_0 ),
        .I5(r_ticks[3]),
        .O(\r_ticks[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \r_ticks[3]_i_3 
       (.I0(\r_state[4]_i_5_n_0 ),
        .I1(r_stop_bits[0]),
        .I2(r_stop_bits[1]),
        .I3(rx_IBUF),
        .O(\r_ticks[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F2FFF)) 
    \r_ticks[3]_i_4 
       (.I0(rx_IBUF),
        .I1(\r_state[2]_i_3_n_0 ),
        .I2(r_done_reg_1),
        .I3(r_state[1]),
        .I4(r_state[2]),
        .O(\r_ticks[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \r_ticks[3]_i_5 
       (.I0(r_ticks[1]),
        .I1(r_ticks[0]),
        .I2(r_ticks[2]),
        .O(\r_ticks[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0116)) 
    \r_ticks_next_inferred__6/i_ 
       (.I0(r_state[0]),
        .I1(r_state[1]),
        .I2(r_state[2]),
        .I3(r_state[4]),
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

module TX
   (tx_OBUF,
    tx_read,
    reset_IBUF,
    clock_IBUF_BUFG,
    t_done_reg_0,
    tx_start_UART,
    D);
  output tx_OBUF;
  output tx_read;
  input reset_IBUF;
  input clock_IBUF_BUFG;
  input t_done_reg_0;
  input tx_start_UART;
  input [5:0]D;

  wire [5:0]D;
  wire clock_IBUF_BUFG;
  wire reset_IBUF;
  wire [2:0]t_bits;
  wire \t_bits[0]_i_1_n_0 ;
  wire \t_bits[0]_i_2_n_0 ;
  wire \t_bits[0]_i_3_n_0 ;
  wire \t_bits[1]_i_1_n_0 ;
  wire \t_bits[2]_i_1_n_0 ;
  wire \t_bits[2]_i_2_n_0 ;
  wire \t_bits[2]_i_3_n_0 ;
  wire \t_bits[2]_i_4_n_0 ;
  wire t_data_i_10_n_0;
  wire t_data_i_2_n_0;
  wire t_data_i_3_n_0;
  wire t_data_i_4_n_0;
  wire t_data_i_5_n_0;
  wire t_data_i_6_n_0;
  wire t_data_i_7_n_0;
  wire t_data_i_8_n_0;
  wire t_data_i_9_n_0;
  wire t_data_next;
  wire [5:0]t_din;
  wire t_din_next;
  wire t_done_i_1_n_0;
  wire t_done_reg_0;
  wire [4:0]t_next_state;
  wire [4:0]t_state;
  wire \t_state[1]_i_2_n_0 ;
  wire \t_state[2]_i_2_n_0 ;
  wire \t_state[4]_i_1_n_0 ;
  wire \t_state[4]_i_3_n_0 ;
  wire \t_state[4]_i_4_n_0 ;
  wire [1:0]t_stop_bits;
  wire \t_stop_bits[0]_i_1_n_0 ;
  wire \t_stop_bits[1]_i_1_n_0 ;
  wire \t_stop_bits[1]_i_2_n_0 ;
  wire [3:0]t_ticks;
  wire \t_ticks[0]_i_1_n_0 ;
  wire \t_ticks[1]_i_1_n_0 ;
  wire \t_ticks[2]_i_1_n_0 ;
  wire \t_ticks[3]_i_2_n_0 ;
  wire \t_ticks[3]_i_3_n_0 ;
  wire t_ticks_next;
  wire tx_OBUF;
  wire tx_read;
  wire tx_start_UART;

  LUT6 #(
    .INIT(64'hCBFFCFFF04000000)) 
    \t_bits[0]_i_1 
       (.I0(\t_bits[0]_i_2_n_0 ),
        .I1(t_state[2]),
        .I2(t_state[0]),
        .I3(\t_bits[0]_i_3_n_0 ),
        .I4(\t_state[1]_i_2_n_0 ),
        .I5(t_bits[0]),
        .O(\t_bits[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \t_bits[0]_i_2 
       (.I0(t_bits[2]),
        .I1(t_bits[1]),
        .I2(t_bits[0]),
        .O(\t_bits[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \t_bits[0]_i_3 
       (.I0(t_state[4]),
        .I1(t_state[1]),
        .O(\t_bits[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F80888080)) 
    \t_bits[1]_i_1 
       (.I0(t_bits[0]),
        .I1(t_state[2]),
        .I2(\t_bits[2]_i_3_n_0 ),
        .I3(\t_bits[2]_i_4_n_0 ),
        .I4(\t_state[1]_i_2_n_0 ),
        .I5(t_bits[1]),
        .O(\t_bits[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \t_bits[2]_i_1 
       (.I0(\t_bits[2]_i_2_n_0 ),
        .I1(t_state[2]),
        .I2(\t_bits[2]_i_3_n_0 ),
        .I3(\t_bits[2]_i_4_n_0 ),
        .I4(\t_state[1]_i_2_n_0 ),
        .I5(t_bits[2]),
        .O(\t_bits[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \t_bits[2]_i_2 
       (.I0(t_bits[2]),
        .I1(t_bits[1]),
        .I2(t_bits[0]),
        .O(\t_bits[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \t_bits[2]_i_3 
       (.I0(t_state[1]),
        .I1(t_state[4]),
        .I2(t_state[0]),
        .I3(t_state[2]),
        .O(\t_bits[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE0FFFFFFFFFF)) 
    \t_bits[2]_i_4 
       (.I0(t_bits[0]),
        .I1(t_bits[1]),
        .I2(t_bits[2]),
        .I3(t_state[2]),
        .I4(t_state[0]),
        .I5(\t_bits[0]_i_3_n_0 ),
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
  LUT4 #(
    .INIT(16'hFFAE)) 
    t_data_i_1
       (.I0(t_data_i_3_n_0),
        .I1(t_data_i_4_n_0),
        .I2(\t_state[4]_i_3_n_0 ),
        .I3(\t_bits[2]_i_3_n_0 ),
        .O(t_data_next));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    t_data_i_10
       (.I0(t_din[2]),
        .I1(t_din[3]),
        .I2(t_bits[0]),
        .I3(t_bits[1]),
        .I4(t_din[0]),
        .I5(t_din[1]),
        .O(t_data_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFBABABAFFFFFFFF)) 
    t_data_i_2
       (.I0(t_data_i_5_n_0),
        .I1(tx_start_UART),
        .I2(t_state[0]),
        .I3(t_din[0]),
        .I4(t_state[1]),
        .I5(t_data_i_6_n_0),
        .O(t_data_i_2_n_0));
  LUT6 #(
    .INIT(64'h000020000A002000)) 
    t_data_i_3
       (.I0(t_data_i_7_n_0),
        .I1(\t_state[4]_i_3_n_0 ),
        .I2(t_state[4]),
        .I3(t_done_reg_0),
        .I4(t_state[2]),
        .I5(t_data_i_8_n_0),
        .O(t_data_i_3_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    t_data_i_4
       (.I0(t_done_reg_0),
        .I1(t_state[4]),
        .I2(t_state[0]),
        .I3(t_state[2]),
        .I4(t_state[1]),
        .O(t_data_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000008A80888)) 
    t_data_i_5
       (.I0(t_state[2]),
        .I1(t_data_i_9_n_0),
        .I2(t_bits[2]),
        .I3(t_bits[1]),
        .I4(t_bits[0]),
        .I5(\t_state[4]_i_3_n_0 ),
        .O(t_data_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    t_data_i_6
       (.I0(t_state[4]),
        .I1(t_done_reg_0),
        .O(t_data_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t_data_i_7
       (.I0(t_state[0]),
        .I1(t_state[1]),
        .O(t_data_i_7_n_0));
  LUT3 #(
    .INIT(8'hF8)) 
    t_data_i_8
       (.I0(t_bits[2]),
        .I1(t_bits[1]),
        .I2(\t_state[4]_i_3_n_0 ),
        .O(t_data_i_8_n_0));
  LUT6 #(
    .INIT(64'hFAAFCFCF0AA0C0C0)) 
    t_data_i_9
       (.I0(t_din[4]),
        .I1(t_din[5]),
        .I2(t_bits[2]),
        .I3(t_bits[1]),
        .I4(t_bits[0]),
        .I5(t_data_i_10_n_0),
        .O(t_data_i_9_n_0));
  FDSE #(
    .INIT(1'b1)) 
    t_data_reg
       (.C(clock_IBUF_BUFG),
        .CE(t_data_next),
        .D(t_data_i_2_n_0),
        .Q(tx_OBUF),
        .S(reset_IBUF));
  LUT5 #(
    .INIT(32'h00000020)) 
    \t_din[5]_i_1 
       (.I0(tx_start_UART),
        .I1(t_state[2]),
        .I2(t_state[0]),
        .I3(t_state[4]),
        .I4(t_state[1]),
        .O(t_din_next));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(D[0]),
        .Q(t_din[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(D[1]),
        .Q(t_din[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(D[2]),
        .Q(t_din[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(D[3]),
        .Q(t_din[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(D[4]),
        .Q(t_din[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(t_din_next),
        .D(D[5]),
        .Q(t_din[5]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'hF555FFFFA0002000)) 
    t_done_i_1
       (.I0(\t_stop_bits[1]_i_2_n_0 ),
        .I1(\t_ticks[3]_i_3_n_0 ),
        .I2(t_state[4]),
        .I3(t_done_reg_0),
        .I4(t_state[0]),
        .I5(tx_read),
        .O(t_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    t_done_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(t_done_i_1_n_0),
        .Q(tx_read),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h0100FFFF01000100)) 
    \t_state[0]_i_1 
       (.I0(\t_state[4]_i_3_n_0 ),
        .I1(t_stop_bits[0]),
        .I2(t_stop_bits[1]),
        .I3(t_state[4]),
        .I4(tx_start_UART),
        .I5(t_state[0]),
        .O(t_next_state[0]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \t_state[1]_i_1 
       (.I0(t_state[0]),
        .I1(tx_start_UART),
        .I2(\t_state[1]_i_2_n_0 ),
        .I3(t_state[1]),
        .O(t_next_state[1]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \t_state[1]_i_2 
       (.I0(t_done_reg_0),
        .I1(t_ticks[3]),
        .I2(t_ticks[1]),
        .I3(t_ticks[0]),
        .I4(t_ticks[2]),
        .O(\t_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8CFC8C8C)) 
    \t_state[2]_i_1 
       (.I0(\t_state[2]_i_2_n_0 ),
        .I1(t_state[2]),
        .I2(t_done_reg_0),
        .I3(\t_state[4]_i_3_n_0 ),
        .I4(t_state[1]),
        .O(t_next_state[2]));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \t_state[2]_i_2 
       (.I0(\t_state[4]_i_3_n_0 ),
        .I1(t_bits[0]),
        .I2(t_bits[1]),
        .I3(t_bits[2]),
        .O(\t_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0002033C)) 
    \t_state[4]_i_1 
       (.I0(t_done_reg_0),
        .I1(t_state[1]),
        .I2(t_state[2]),
        .I3(t_state[0]),
        .I4(t_state[4]),
        .O(\t_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAA8AAA8AAA8)) 
    \t_state[4]_i_2 
       (.I0(t_state[4]),
        .I1(\t_state[4]_i_3_n_0 ),
        .I2(t_stop_bits[0]),
        .I3(t_stop_bits[1]),
        .I4(t_state[2]),
        .I5(\t_state[4]_i_4_n_0 ),
        .O(t_next_state[4]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \t_state[4]_i_3 
       (.I0(t_ticks[2]),
        .I1(t_ticks[0]),
        .I2(t_ticks[1]),
        .I3(t_ticks[3]),
        .O(\t_state[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \t_state[4]_i_4 
       (.I0(t_done_reg_0),
        .I1(t_bits[2]),
        .I2(t_bits[1]),
        .I3(t_bits[0]),
        .I4(\t_state[4]_i_3_n_0 ),
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
    \t_state_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\t_state[4]_i_1_n_0 ),
        .D(t_next_state[4]),
        .Q(t_state[4]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h55AA55007780FF00)) 
    \t_stop_bits[0]_i_1 
       (.I0(\t_stop_bits[1]_i_2_n_0 ),
        .I1(\t_state[1]_i_2_n_0 ),
        .I2(t_stop_bits[1]),
        .I3(t_stop_bits[0]),
        .I4(t_state[4]),
        .I5(t_state[0]),
        .O(\t_stop_bits[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5AF0505078F0F0F0)) 
    \t_stop_bits[1]_i_1 
       (.I0(\t_stop_bits[1]_i_2_n_0 ),
        .I1(\t_state[1]_i_2_n_0 ),
        .I2(t_stop_bits[1]),
        .I3(t_stop_bits[0]),
        .I4(t_state[4]),
        .I5(t_state[0]),
        .O(\t_stop_bits[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0105)) 
    \t_stop_bits[1]_i_2 
       (.I0(t_state[2]),
        .I1(t_state[4]),
        .I2(t_state[1]),
        .I3(t_state[0]),
        .O(\t_stop_bits[1]_i_2_n_0 ));
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
  (* \PinAttr:I0:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \t_ticks[0]_i_1 
       (.I0(t_ticks[0]),
        .I1(t_state[0]),
        .O(\t_ticks[0]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \t_ticks[1]_i_1 
       (.I0(t_ticks[1]),
        .I1(t_ticks[0]),
        .I2(t_state[0]),
        .O(\t_ticks[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \t_ticks[2]_i_1 
       (.I0(t_state[0]),
        .I1(t_ticks[0]),
        .I2(t_ticks[1]),
        .I3(t_ticks[2]),
        .O(\t_ticks[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C000C0F80)) 
    \t_ticks[3]_i_1 
       (.I0(\t_ticks[3]_i_3_n_0 ),
        .I1(t_done_reg_0),
        .I2(t_state[4]),
        .I3(t_state[0]),
        .I4(t_state[2]),
        .I5(t_state[1]),
        .O(t_ticks_next));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
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
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \t_ticks[3]_i_3 
       (.I0(t_ticks[3]),
        .I1(t_ticks[1]),
        .I2(t_ticks[0]),
        .I3(t_ticks[2]),
        .I4(t_stop_bits[0]),
        .I5(t_stop_bits[1]),
        .O(\t_ticks[3]_i_3_n_0 ));
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

(* CLK_POR_TICK = "163" *) (* D_BITS = "6" *) (* ECO_CHECKSUM = "d3fc10f9" *) 
(* PARITY = "0" *) (* SIZE_FIFO = "2" *) (* STOP_BITS = "1" *) 
(* NotValidForBitStream *)
module Top
   (clock,
    reset,
    rx,
    tx);
  input clock;
  input reset;
  input rx;
  output tx;

  wire \0 ;
  wire [4:0]a;
  wire baugen_n_0;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [5:0]data0;
  wire [5:0]datosALU;
  wire fifo_n_15;
  wire fifo_n_17;
  wire fifo_n_18;
  wire fifo_n_19;
  wire fifo_n_20;
  wire fifo_n_21;
  wire fifo_n_22;
  wire interf_n_1;
  wire interf_n_11;
  wire interf_n_12;
  wire interf_n_13;
  wire interf_n_14;
  wire interf_n_15;
  wire interf_n_16;
  wire my_rx_n_6;
  wire my_rx_n_7;
  wire [0:0]next_state;
  wire [5:0]out;
  wire reset;
  wire reset_IBUF;
  wire rx;
  wire rx_IBUF;
  wire [5:1]rx_data_write;
  wire rx_empty_int;
  wire rx_read_int;
  wire rx_write;
  wire [0:0]state;
  wire t_write_enable;
  wire tx;
  wire tx_OBUF;
  wire [5:0]tx_data_read;
  wire tx_full_int;
  wire tx_read;
  wire tx_start_UART;
  wire tx_write_int;

initial begin
 $sdf_annotate("Top_tb_time_impl.sdf",,,,"tool_control");
end
  ALU alu
       (.Q(a),
        .S({interf_n_11,interf_n_12,interf_n_13,interf_n_14}),
        .data0(data0),
        .\out[0]_i_3 (\0 ),
        .\out[4]_i_5 ({interf_n_15,interf_n_16}));
  BaudrateGen baugen
       (.clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\count_reg[10]_0 (baugen_n_0),
        .reset_IBUF(reset_IBUF));
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  FIFO fifo
       (.D(tx_data_read),
        .Q(out),
        .\a_reg[1] (my_rx_n_7),
        .\a_reg[1]_0 ({rx_data_write,my_rx_n_6}),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .datosALU(datosALU),
        .r_empty_reg_0({fifo_n_17,fifo_n_18,fifo_n_19,fifo_n_20,fifo_n_21,fifo_n_22}),
        .r_full_reg_0(fifo_n_15),
        .reset_IBUF(reset_IBUF),
        .rx_empty_int(rx_empty_int),
        .rx_read_int(rx_read_int),
        .rx_write(rx_write),
        .\state_reg[0] ({interf_n_1,state}),
        .t_full_reg_0(next_state),
        .t_write_enable(t_write_enable),
        .tx_full_int(tx_full_int),
        .tx_read(tx_read),
        .tx_start_UART(tx_start_UART),
        .tx_write_int(tx_write_int));
  Interfaz interf
       (.D(next_state),
        .Q({interf_n_1,state}),
        .S({interf_n_11,interf_n_12,interf_n_13,interf_n_14}),
        .\a_reg[4]_0 (a),
        .\a_reg[5]_0 ({fifo_n_17,fifo_n_18,fifo_n_19,fifo_n_20,fifo_n_21,fifo_n_22}),
        .\b_reg[5]_0 ({interf_n_15,interf_n_16}),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .data0(data0),
        .datosALU(datosALU),
        .\op_reg[1]_0 (\0 ),
        .\out_reg[5]_0 (out),
        .reset_IBUF(reset_IBUF),
        .rx_empty_int(rx_empty_int),
        .rx_read_int(rx_read_int),
        .t_write_enable(t_write_enable),
        .tx_full_int(tx_full_int),
        .tx_write_int(tx_write_int));
  RX my_rx
       (.Q({rx_data_write,my_rx_n_6}),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .r_done_reg_0(my_rx_n_7),
        .r_done_reg_1(baugen_n_0),
        .r_memoria_reg_0_3_0_5(fifo_n_15),
        .reset_IBUF(reset_IBUF),
        .rx_IBUF(rx_IBUF),
        .rx_write(rx_write));
  TX my_tx
       (.D(tx_data_read),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .reset_IBUF(reset_IBUF),
        .t_done_reg_0(baugen_n_0),
        .tx_OBUF(tx_OBUF),
        .tx_read(tx_read),
        .tx_start_UART(tx_start_UART));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
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
