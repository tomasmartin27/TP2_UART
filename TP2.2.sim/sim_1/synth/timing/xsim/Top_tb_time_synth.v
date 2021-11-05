// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Nov  4 19:27:41 2021
// Host        : DESKTOP-98G2N7A running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/TomasMartin/TP2.2/TP2.2.sim/sim_1/synth/timing/xsim/Top_tb_time_synth.v
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

module RAM32M_HD7
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

module RAM32M_HD8
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

module RAM32M_HD9
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
   (O,
    \a_reg[6] ,
    Q,
    \out[0]_i_3 ,
    S,
    \out[4]_i_3 );
  output [3:0]O;
  output [3:0]\a_reg[6] ;
  input [6:0]Q;
  input [0:0]\out[0]_i_3 ;
  input [3:0]S;
  input [3:0]\out[4]_i_3 ;

  wire [3:0]O;
  wire [6:0]Q;
  wire [3:0]S;
  wire \_inferred__1/i__carry__0_n_1 ;
  wire \_inferred__1/i__carry__0_n_2 ;
  wire \_inferred__1/i__carry__0_n_3 ;
  wire \_inferred__1/i__carry_n_0 ;
  wire \_inferred__1/i__carry_n_1 ;
  wire \_inferred__1/i__carry_n_2 ;
  wire \_inferred__1/i__carry_n_3 ;
  wire [3:0]\a_reg[6] ;
  wire [0:0]\out[0]_i_3 ;
  wire [3:0]\out[4]_i_3 ;
  wire [3:3]\NLW__inferred__1/i__carry__0_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__1/i__carry_n_0 ,\_inferred__1/i__carry_n_1 ,\_inferred__1/i__carry_n_2 ,\_inferred__1/i__carry_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\out[0]_i_3 }),
        .O(O),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__0 
       (.CI(\_inferred__1/i__carry_n_0 ),
        .CO({\NLW__inferred__1/i__carry__0_CO_UNCONNECTED [3],\_inferred__1/i__carry__0_n_1 ,\_inferred__1/i__carry__0_n_2 ,\_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(\a_reg[6] ),
        .S(\out[4]_i_3 ));
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
  wire [11:1]data0;
  wire \r_state[4]_i_7_n_0 ;
  wire \r_state[4]_i_8_n_0 ;
  wire reset_IBUF;
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .I1(\count_reg[10]_0 ),
        .O(count1[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[10]_i_1 
       (.I0(data0[10]),
        .I1(\count_reg[10]_0 ),
        .O(count1[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[11]_i_1 
       (.I0(data0[11]),
        .I1(\count_reg[10]_0 ),
        .O(count1[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \count[1]_i_1 
       (.I0(data0[1]),
        .I1(\count_reg[10]_0 ),
        .O(count1[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[2]_i_1 
       (.I0(data0[2]),
        .I1(\count_reg[10]_0 ),
        .O(count1[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[3]_i_1 
       (.I0(data0[3]),
        .I1(\count_reg[10]_0 ),
        .O(count1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_1 
       (.I0(data0[4]),
        .I1(\count_reg[10]_0 ),
        .O(count1[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[5]_i_1 
       (.I0(data0[5]),
        .I1(\count_reg[10]_0 ),
        .O(count1[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[6]_i_1 
       (.I0(data0[6]),
        .I1(\count_reg[10]_0 ),
        .O(count1[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[7]_i_1 
       (.I0(data0[7]),
        .I1(\count_reg[10]_0 ),
        .O(count1[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_1 
       (.I0(data0[8]),
        .I1(\count_reg[10]_0 ),
        .O(count1[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \r_state[4]_i_3 
       (.I0(count[10]),
        .I1(count[1]),
        .I2(count[5]),
        .I3(count[2]),
        .I4(\r_state[4]_i_7_n_0 ),
        .I5(\r_state[4]_i_8_n_0 ),
        .O(\count_reg[10]_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \r_state[4]_i_7 
       (.I0(count[7]),
        .I1(count[4]),
        .I2(count[8]),
        .I3(count[11]),
        .O(\r_state[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_state[4]_i_8 
       (.I0(count[9]),
        .I1(count[0]),
        .I2(count[6]),
        .I3(count[3]),
        .O(\r_state[4]_i_8_n_0 ));
endmodule

module FIFO
   (rx_data_read,
    D,
    tx_full_int,
    rx_empty_int,
    r_full_reg_0,
    tx_start_UART,
    t_full_reg_0,
    r_empty_reg_0,
    clock_IBUF_BUFG,
    r_write_enable,
    Q,
    t_write_enable,
    \t_din_reg[7] ,
    reset_IBUF,
    \state_reg[0] ,
    tx_read,
    tx_write_int,
    rx_write,
    rx_read_int);
  output [7:0]rx_data_read;
  output [7:0]D;
  output tx_full_int;
  output rx_empty_int;
  output r_full_reg_0;
  output tx_start_UART;
  output [0:0]t_full_reg_0;
  output [7:0]r_empty_reg_0;
  input clock_IBUF_BUFG;
  input r_write_enable;
  input [7:0]Q;
  input t_write_enable;
  input [7:0]\t_din_reg[7] ;
  input reset_IBUF;
  input [1:0]\state_reg[0] ;
  input tx_read;
  input tx_write_int;
  input rx_write;
  input rx_read_int;

  wire [7:0]D;
  wire [7:0]Q;
  wire clock_IBUF_BUFG;
  wire \i[0]_i_1_n_0 ;
  wire \i_reg_n_0_[0] ;
  wire r_empty_i_1_n_0;
  wire r_empty_next0__4;
  wire [7:0]r_empty_reg_0;
  wire r_full_i_1_n_0;
  wire r_full_next0__4;
  wire r_full_reg_0;
  wire [2:0]r_read_ptr;
  wire \r_read_ptr[0]_i_1_n_0 ;
  wire \r_read_ptr[1]_i_1_n_0 ;
  wire \r_read_ptr[2]_i_1_n_0 ;
  wire r_write_enable;
  wire [2:0]r_write_ptr;
  wire \r_write_ptr[0]_i_1_n_0 ;
  wire \r_write_ptr[1]_i_1_n_0 ;
  wire \r_write_ptr[2]_i_1_n_0 ;
  wire reset_IBUF;
  wire [7:0]rx_data_read;
  wire rx_empty_int;
  wire rx_read_int;
  wire rx_write;
  wire [1:0]\state_reg[0] ;
  wire [7:0]\t_din_reg[7] ;
  wire t_empty;
  wire t_empty_i_1_n_0;
  wire t_empty_next0__4;
  wire t_full_i_1_n_0;
  wire t_full_next0__4;
  wire [0:0]t_full_reg_0;
  wire [2:0]t_read_ptr;
  wire \t_read_ptr[0]_i_1_n_0 ;
  wire \t_read_ptr[1]_i_1_n_0 ;
  wire \t_read_ptr[2]_i_1_n_0 ;
  wire t_start_i_1_n_0;
  wire t_write_enable;
  wire [2:0]t_write_ptr;
  wire \t_write_ptr[0]_i_1_n_0 ;
  wire \t_write_ptr[1]_i_1_n_0 ;
  wire \t_write_ptr[2]_i_1_n_0 ;
  wire tx_full_int;
  wire tx_read;
  wire tx_start_UART;
  wire tx_write_int;
  wire [1:0]NLW_r_memoria_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_r_memoria_reg_0_7_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_r_memoria_reg_0_7_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_r_memoria_reg_0_7_6_7_DOD_UNCONNECTED;
  wire [1:0]NLW_t_memoria_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_t_memoria_reg_0_7_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_t_memoria_reg_0_7_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_t_memoria_reg_0_7_6_7_DOD_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \a[0]_i_1 
       (.I0(rx_data_read[0]),
        .I1(rx_empty_int),
        .O(r_empty_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \a[1]_i_1 
       (.I0(rx_data_read[1]),
        .I1(rx_empty_int),
        .O(r_empty_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \a[2]_i_1 
       (.I0(rx_data_read[2]),
        .I1(rx_empty_int),
        .O(r_empty_reg_0[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \a[3]_i_1 
       (.I0(rx_data_read[3]),
        .I1(rx_empty_int),
        .O(r_empty_reg_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \a[4]_i_1 
       (.I0(rx_data_read[4]),
        .I1(rx_empty_int),
        .O(r_empty_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \a[5]_i_1 
       (.I0(rx_data_read[5]),
        .I1(rx_empty_int),
        .O(r_empty_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \a[6]_i_1 
       (.I0(rx_data_read[6]),
        .I1(rx_empty_int),
        .O(r_empty_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \a[7]_i_2 
       (.I0(rx_data_read[7]),
        .I1(rx_empty_int),
        .O(r_empty_reg_0[7]));
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
    .INIT(32'hF0FCA0F0)) 
    r_empty_i_1
       (.I0(r_full_reg_0),
        .I1(r_empty_next0__4),
        .I2(rx_empty_int),
        .I3(rx_write),
        .I4(rx_read_int),
        .O(r_empty_i_1_n_0));
  LUT6 #(
    .INIT(64'h4210000800084210)) 
    r_empty_i_2
       (.I0(r_read_ptr[0]),
        .I1(r_read_ptr[1]),
        .I2(r_write_ptr[0]),
        .I3(r_write_ptr[1]),
        .I4(r_read_ptr[2]),
        .I5(r_write_ptr[2]),
        .O(r_empty_next0__4));
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
       (.I0(r_full_next0__4),
        .I1(r_full_reg_0),
        .I2(rx_read_int),
        .I3(rx_write),
        .I4(rx_empty_int),
        .O(r_full_i_1_n_0));
  LUT6 #(
    .INIT(64'h2402004000402402)) 
    r_full_i_2
       (.I0(r_read_ptr[0]),
        .I1(r_write_ptr[0]),
        .I2(r_write_ptr[1]),
        .I3(r_read_ptr[1]),
        .I4(r_write_ptr[2]),
        .I5(r_read_ptr[2]),
        .O(r_full_next0__4));
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
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "fifo/r_memoria" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ r_memoria_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,r_read_ptr}),
        .ADDRB({1'b0,1'b0,r_read_ptr}),
        .ADDRC({1'b0,1'b0,r_read_ptr}),
        .ADDRD({1'b0,1'b0,r_write_ptr}),
        .DIA(Q[1:0]),
        .DIB(Q[3:2]),
        .DIC(Q[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rx_data_read[1:0]),
        .DOB(rx_data_read[3:2]),
        .DOC(rx_data_read[5:4]),
        .DOD(NLW_r_memoria_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock_IBUF_BUFG),
        .WE(r_write_enable));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "fifo/r_memoria" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32M_HD7 r_memoria_reg_0_7_6_7
       (.ADDRA({1'b0,1'b0,r_read_ptr}),
        .ADDRB({1'b0,1'b0,r_read_ptr}),
        .ADDRC({1'b0,1'b0,r_read_ptr}),
        .ADDRD({1'b0,1'b0,r_write_ptr}),
        .DIA(Q[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rx_data_read[7:6]),
        .DOB(NLW_r_memoria_reg_0_7_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_r_memoria_reg_0_7_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_r_memoria_reg_0_7_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clock_IBUF_BUFG),
        .WE(r_write_enable));
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
  LUT6 #(
    .INIT(64'h77F7FFFF88080000)) 
    \r_read_ptr[2]_i_1 
       (.I0(r_read_ptr[0]),
        .I1(r_read_ptr[1]),
        .I2(rx_empty_int),
        .I3(rx_write),
        .I4(rx_read_int),
        .I5(r_read_ptr[2]),
        .O(\r_read_ptr[2]_i_1_n_0 ));
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
  FDRE #(
    .INIT(1'b0)) 
    \r_read_ptr_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_read_ptr[2]_i_1_n_0 ),
        .Q(r_read_ptr[2]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5DA2)) 
    \r_write_ptr[0]_i_1 
       (.I0(rx_write),
        .I1(r_full_reg_0),
        .I2(rx_read_int),
        .I3(r_write_ptr[0]),
        .O(\r_write_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h75FF8A00)) 
    \r_write_ptr[1]_i_1 
       (.I0(r_write_ptr[0]),
        .I1(rx_read_int),
        .I2(r_full_reg_0),
        .I3(rx_write),
        .I4(r_write_ptr[1]),
        .O(\r_write_ptr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F77FFFF80880000)) 
    \r_write_ptr[2]_i_1 
       (.I0(r_write_ptr[0]),
        .I1(r_write_ptr[1]),
        .I2(rx_read_int),
        .I3(r_full_reg_0),
        .I4(rx_write),
        .I5(r_write_ptr[2]),
        .O(\r_write_ptr[2]_i_1_n_0 ));
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
  FDRE #(
    .INIT(1'b0)) 
    \r_write_ptr_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\r_write_ptr[2]_i_1_n_0 ),
        .Q(r_write_ptr[2]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
        .I1(t_empty_next0__4),
        .I2(t_empty),
        .I3(tx_write_int),
        .I4(tx_read),
        .O(t_empty_i_1_n_0));
  LUT6 #(
    .INIT(64'h4210000800084210)) 
    t_empty_i_2
       (.I0(t_read_ptr[0]),
        .I1(t_read_ptr[1]),
        .I2(t_write_ptr[0]),
        .I3(t_write_ptr[1]),
        .I4(t_read_ptr[2]),
        .I5(t_write_ptr[2]),
        .O(t_empty_next0__4));
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
       (.I0(t_full_next0__4),
        .I1(tx_full_int),
        .I2(tx_read),
        .I3(tx_write_int),
        .I4(t_empty),
        .O(t_full_i_1_n_0));
  LUT6 #(
    .INIT(64'h2402004000402402)) 
    t_full_i_2
       (.I0(t_read_ptr[0]),
        .I1(t_write_ptr[0]),
        .I2(t_write_ptr[1]),
        .I3(t_read_ptr[1]),
        .I4(t_write_ptr[2]),
        .I5(t_read_ptr[2]),
        .O(t_full_next0__4));
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
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "fifo/t_memoria" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_HD8 t_memoria_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,t_read_ptr}),
        .ADDRB({1'b0,1'b0,t_read_ptr}),
        .ADDRC({1'b0,1'b0,t_read_ptr}),
        .ADDRD({1'b0,1'b0,t_write_ptr}),
        .DIA(\t_din_reg[7] [1:0]),
        .DIB(\t_din_reg[7] [3:2]),
        .DIC(\t_din_reg[7] [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(D[1:0]),
        .DOB(D[3:2]),
        .DOC(D[5:4]),
        .DOD(NLW_t_memoria_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock_IBUF_BUFG),
        .WE(t_write_enable));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "fifo/t_memoria" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32M_HD9 t_memoria_reg_0_7_6_7
       (.ADDRA({1'b0,1'b0,t_read_ptr}),
        .ADDRB({1'b0,1'b0,t_read_ptr}),
        .ADDRC({1'b0,1'b0,t_read_ptr}),
        .ADDRD({1'b0,1'b0,t_write_ptr}),
        .DIA(\t_din_reg[7] [7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(D[7:6]),
        .DOB(NLW_t_memoria_reg_0_7_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_t_memoria_reg_0_7_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_t_memoria_reg_0_7_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clock_IBUF_BUFG),
        .WE(t_write_enable));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h758A)) 
    \t_read_ptr[0]_i_1 
       (.I0(tx_read),
        .I1(tx_write_int),
        .I2(t_empty),
        .I3(t_read_ptr[0]),
        .O(\t_read_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h5DFFA200)) 
    \t_read_ptr[1]_i_1 
       (.I0(t_read_ptr[0]),
        .I1(t_empty),
        .I2(tx_write_int),
        .I3(tx_read),
        .I4(t_read_ptr[1]),
        .O(\t_read_ptr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h77F7FFFF88080000)) 
    \t_read_ptr[2]_i_1 
       (.I0(t_read_ptr[0]),
        .I1(t_read_ptr[1]),
        .I2(t_empty),
        .I3(tx_write_int),
        .I4(tx_read),
        .I5(t_read_ptr[2]),
        .O(\t_read_ptr[2]_i_1_n_0 ));
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
  FDRE #(
    .INIT(1'b0)) 
    \t_read_ptr_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\t_read_ptr[2]_i_1_n_0 ),
        .Q(t_read_ptr[2]),
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
  LUT6 #(
    .INIT(64'h7F77FFFF80880000)) 
    \t_write_ptr[2]_i_1 
       (.I0(t_write_ptr[0]),
        .I1(t_write_ptr[1]),
        .I2(tx_read),
        .I3(tx_full_int),
        .I4(tx_write_int),
        .I5(t_write_ptr[2]),
        .O(\t_write_ptr[2]_i_1_n_0 ));
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
  FDRE #(
    .INIT(1'b0)) 
    \t_write_ptr_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\t_write_ptr[2]_i_1_n_0 ),
        .Q(t_write_ptr[2]),
        .R(reset_IBUF));
endmodule

module Interfaz
   (tx_write_int,
    Q,
    rx_read_int,
    t_write_enable,
    \a_reg[6]_0 ,
    \op_reg[1]_0 ,
    S,
    \b_reg[7]_0 ,
    \out_reg[7]_0 ,
    reset_IBUF,
    clock_IBUF_BUFG,
    rx_data_read,
    tx_full_int,
    rx_empty_int,
    D,
    O,
    \out_reg[7]_1 ,
    \a_reg[7]_0 );
  output tx_write_int;
  output [1:0]Q;
  output rx_read_int;
  output t_write_enable;
  output [6:0]\a_reg[6]_0 ;
  output [0:0]\op_reg[1]_0 ;
  output [3:0]S;
  output [3:0]\b_reg[7]_0 ;
  output [7:0]\out_reg[7]_0 ;
  input reset_IBUF;
  input clock_IBUF_BUFG;
  input [7:0]rx_data_read;
  input tx_full_int;
  input rx_empty_int;
  input [0:0]D;
  input [3:0]O;
  input [3:0]\out_reg[7]_1 ;
  input [7:0]\a_reg[7]_0 ;

  wire [0:0]D;
  wire [3:0]O;
  wire [1:0]Q;
  wire [3:0]S;
  wire [7:7]a;
  wire \a[7]_i_1_n_0 ;
  wire [6:0]\a_reg[6]_0 ;
  wire [7:0]\a_reg[7]_0 ;
  wire [7:0]b;
  wire b_next;
  wire [7:0]b_next0_in;
  wire [3:0]\b_reg[7]_0 ;
  wire clock_IBUF_BUFG;
  wire [4:2]data5;
  wire [2:0]i;
  wire \i[0]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \i[2]_i_2_n_0 ;
  wire [4:1]next_state;
  wire op_next;
  wire [7:0]op_next0_in;
  wire [0:0]\op_reg[1]_0 ;
  wire \op_reg_n_0_[0] ;
  wire \op_reg_n_0_[2] ;
  wire \op_reg_n_0_[3] ;
  wire \op_reg_n_0_[4] ;
  wire \op_reg_n_0_[5] ;
  wire \op_reg_n_0_[6] ;
  wire \op_reg_n_0_[7] ;
  wire \out[0]_i_2_n_0 ;
  wire \out[0]_i_3_n_0 ;
  wire \out[0]_i_4_n_0 ;
  wire \out[0]_i_5_n_0 ;
  wire \out[0]_i_6_n_0 ;
  wire \out[1]_i_2_n_0 ;
  wire \out[1]_i_3_n_0 ;
  wire \out[1]_i_4_n_0 ;
  wire \out[1]_i_5_n_0 ;
  wire \out[2]_i_2_n_0 ;
  wire \out[2]_i_3_n_0 ;
  wire \out[2]_i_4_n_0 ;
  wire \out[2]_i_6_n_0 ;
  wire \out[3]_i_2_n_0 ;
  wire \out[3]_i_3_n_0 ;
  wire \out[3]_i_4_n_0 ;
  wire \out[3]_i_6_n_0 ;
  wire \out[4]_i_2_n_0 ;
  wire \out[4]_i_3_n_0 ;
  wire \out[4]_i_4_n_0 ;
  wire \out[4]_i_6_n_0 ;
  wire \out[5]_i_10_n_0 ;
  wire \out[5]_i_2_n_0 ;
  wire \out[5]_i_3_n_0 ;
  wire \out[5]_i_4_n_0 ;
  wire \out[5]_i_5_n_0 ;
  wire \out[5]_i_6_n_0 ;
  wire \out[5]_i_7_n_0 ;
  wire \out[5]_i_8_n_0 ;
  wire \out[5]_i_9_n_0 ;
  wire \out[6]_i_2_n_0 ;
  wire \out[6]_i_3_n_0 ;
  wire \out[6]_i_4_n_0 ;
  wire \out[6]_i_5_n_0 ;
  wire \out[6]_i_6_n_0 ;
  wire \out[6]_i_7_n_0 ;
  wire \out[7]_i_3_n_0 ;
  wire \out[7]_i_4_n_0 ;
  wire \out[7]_i_5_n_0 ;
  wire \out[7]_i_6_n_0 ;
  wire \out[7]_i_7_n_0 ;
  wire \out[7]_i_8_n_0 ;
  wire \out[7]_i_9_n_0 ;
  wire [7:0]out_next0_in;
  wire [7:0]\out_reg[7]_0 ;
  wire [3:0]\out_reg[7]_1 ;
  wire read_i_1_n_0;
  wire read_next;
  wire reset_IBUF;
  wire [7:0]rx_data_read;
  wire rx_empty_int;
  wire rx_read_int;
  wire [4:1]state;
  wire \state[4]_i_1_n_0 ;
  wire t_write_enable;
  wire tx_full_int;
  wire tx_write_int;
  wire write_next;

  LUT5 #(
    .INIT(32'h00000010)) 
    \a[7]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(Q[0]),
        .I3(state[4]),
        .I4(Q[1]),
        .O(\a[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\a[7]_i_1_n_0 ),
        .D(\a_reg[7]_0 [0]),
        .Q(\a_reg[6]_0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\a[7]_i_1_n_0 ),
        .D(\a_reg[7]_0 [1]),
        .Q(\a_reg[6]_0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\a[7]_i_1_n_0 ),
        .D(\a_reg[7]_0 [2]),
        .Q(\a_reg[6]_0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\a[7]_i_1_n_0 ),
        .D(\a_reg[7]_0 [3]),
        .Q(\a_reg[6]_0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\a[7]_i_1_n_0 ),
        .D(\a_reg[7]_0 [4]),
        .Q(\a_reg[6]_0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\a[7]_i_1_n_0 ),
        .D(\a_reg[7]_0 [5]),
        .Q(\a_reg[6]_0 [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\a[7]_i_1_n_0 ),
        .D(\a_reg[7]_0 [6]),
        .Q(\a_reg[6]_0 [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\a[7]_i_1_n_0 ),
        .D(\a_reg[7]_0 [7]),
        .Q(a),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[0]_i_1 
       (.I0(state[1]),
        .I1(rx_data_read[0]),
        .O(b_next0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[1]_i_1 
       (.I0(state[1]),
        .I1(rx_data_read[1]),
        .O(b_next0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[2]_i_1 
       (.I0(state[1]),
        .I1(rx_data_read[2]),
        .O(b_next0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[3]_i_1 
       (.I0(state[1]),
        .I1(rx_data_read[3]),
        .O(b_next0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[4]_i_1 
       (.I0(state[1]),
        .I1(rx_data_read[4]),
        .O(b_next0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[5]_i_1 
       (.I0(state[1]),
        .I1(rx_data_read[5]),
        .O(b_next0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[6]_i_1 
       (.I0(state[1]),
        .I1(rx_data_read[6]),
        .O(b_next0_in[6]));
  LUT6 #(
    .INIT(64'h0000000100030000)) 
    \b[7]_i_1 
       (.I0(rx_empty_int),
        .I1(state[4]),
        .I2(Q[1]),
        .I3(state[2]),
        .I4(Q[0]),
        .I5(state[1]),
        .O(b_next));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[7]_i_2 
       (.I0(state[1]),
        .I1(rx_data_read[7]),
        .O(b_next0_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(b_next),
        .D(b_next0_in[0]),
        .Q(b[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(b_next),
        .D(b_next0_in[1]),
        .Q(b[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(b_next),
        .D(b_next0_in[2]),
        .Q(b[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(b_next),
        .D(b_next0_in[3]),
        .Q(b[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(b_next),
        .D(b_next0_in[4]),
        .Q(b[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(b_next),
        .D(b_next0_in[5]),
        .Q(b[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(b_next),
        .D(b_next0_in[6]),
        .Q(b[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(b_next),
        .D(b_next0_in[7]),
        .Q(b[7]),
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
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \i[2]_i_2 
       (.I0(Q[1]),
        .I1(state[4]),
        .O(\i[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_1
       (.I0(b[7]),
        .I1(\op_reg[1]_0 ),
        .I2(a),
        .O(\b_reg[7]_0 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_2
       (.I0(b[6]),
        .I1(\op_reg[1]_0 ),
        .I2(\a_reg[6]_0 [6]),
        .O(\b_reg[7]_0 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_3
       (.I0(b[5]),
        .I1(\op_reg[1]_0 ),
        .I2(\a_reg[6]_0 [5]),
        .O(\b_reg[7]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_4
       (.I0(b[4]),
        .I1(\op_reg[1]_0 ),
        .I2(\a_reg[6]_0 [4]),
        .O(\b_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_1
       (.I0(b[3]),
        .I1(\op_reg[1]_0 ),
        .I2(\a_reg[6]_0 [3]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2
       (.I0(b[2]),
        .I1(\op_reg[1]_0 ),
        .I2(\a_reg[6]_0 [2]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_3
       (.I0(b[1]),
        .I1(\op_reg[1]_0 ),
        .I2(\a_reg[6]_0 [1]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4
       (.I0(b[0]),
        .O(S[0]));
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
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op[0]_i_1 
       (.I0(state[2]),
        .I1(rx_data_read[0]),
        .O(op_next0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op[1]_i_1 
       (.I0(state[2]),
        .I1(rx_data_read[1]),
        .O(op_next0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op[2]_i_1 
       (.I0(state[2]),
        .I1(rx_data_read[2]),
        .O(op_next0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op[3]_i_1 
       (.I0(state[2]),
        .I1(rx_data_read[3]),
        .O(op_next0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op[4]_i_1 
       (.I0(state[2]),
        .I1(rx_data_read[4]),
        .O(op_next0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op[5]_i_1 
       (.I0(state[2]),
        .I1(rx_data_read[5]),
        .O(op_next0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op[6]_i_1 
       (.I0(state[2]),
        .I1(rx_data_read[6]),
        .O(op_next0_in[6]));
  LUT6 #(
    .INIT(64'h0000010000010100)) 
    \op[7]_i_1 
       (.I0(state[1]),
        .I1(Q[1]),
        .I2(state[4]),
        .I3(Q[0]),
        .I4(state[2]),
        .I5(rx_empty_int),
        .O(op_next));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \op[7]_i_2 
       (.I0(state[2]),
        .I1(rx_data_read[7]),
        .O(op_next0_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(op_next),
        .D(op_next0_in[0]),
        .Q(\op_reg_n_0_[0] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(op_next),
        .D(op_next0_in[1]),
        .Q(\op_reg[1]_0 ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(op_next),
        .D(op_next0_in[2]),
        .Q(\op_reg_n_0_[2] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(op_next),
        .D(op_next0_in[3]),
        .Q(\op_reg_n_0_[3] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(op_next),
        .D(op_next0_in[4]),
        .Q(\op_reg_n_0_[4] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(op_next),
        .D(op_next0_in[5]),
        .Q(\op_reg_n_0_[5] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(op_next),
        .D(op_next0_in[6]),
        .Q(\op_reg_n_0_[6] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(op_next),
        .D(op_next0_in[7]),
        .Q(\op_reg_n_0_[7] ),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \out[0]_i_1 
       (.I0(\out[0]_i_2_n_0 ),
        .I1(\out[0]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\op_reg_n_0_[6] ),
        .I4(\op_reg_n_0_[7] ),
        .I5(\out[7]_i_5_n_0 ),
        .O(out_next0_in[0]));
  LUT6 #(
    .INIT(64'hFFFF161655001616)) 
    \out[0]_i_2 
       (.I0(\out[7]_i_9_n_0 ),
        .I1(b[0]),
        .I2(\a_reg[6]_0 [0]),
        .I3(\out[0]_i_4_n_0 ),
        .I4(\out[7]_i_8_n_0 ),
        .I5(\out[0]_i_5_n_0 ),
        .O(\out[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hECE0E020)) 
    \out[0]_i_3 
       (.I0(O[0]),
        .I1(\out[7]_i_8_n_0 ),
        .I2(\out[7]_i_9_n_0 ),
        .I3(\a_reg[6]_0 [0]),
        .I4(b[0]),
        .O(\out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \out[0]_i_4 
       (.I0(a),
        .I1(b[6]),
        .I2(b[7]),
        .I3(b[5]),
        .I4(b[4]),
        .I5(b[3]),
        .O(\out[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \out[0]_i_5 
       (.I0(\out[0]_i_6_n_0 ),
        .I1(b[0]),
        .I2(\out[1]_i_5_n_0 ),
        .I3(\out[6]_i_7_n_0 ),
        .O(\out[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \out[0]_i_6 
       (.I0(\a_reg[6]_0 [4]),
        .I1(\a_reg[6]_0 [0]),
        .I2(b[1]),
        .I3(\a_reg[6]_0 [6]),
        .I4(b[2]),
        .I5(\a_reg[6]_0 [2]),
        .O(\out[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0202020202000000)) 
    \out[1]_i_1 
       (.I0(Q[1]),
        .I1(\op_reg_n_0_[6] ),
        .I2(\op_reg_n_0_[7] ),
        .I3(\out[6]_i_3_n_0 ),
        .I4(\out[1]_i_2_n_0 ),
        .I5(\out[1]_i_3_n_0 ),
        .O(out_next0_in[1]));
  LUT6 #(
    .INIT(64'hB8FF3030B8303030)) 
    \out[1]_i_2 
       (.I0(\out[2]_i_4_n_0 ),
        .I1(\out[7]_i_9_n_0 ),
        .I2(\out[1]_i_4_n_0 ),
        .I3(b[0]),
        .I4(\out[6]_i_7_n_0 ),
        .I5(\out[1]_i_5_n_0 ),
        .O(\out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    \out[1]_i_3 
       (.I0(O[1]),
        .I1(\a_reg[6]_0 [1]),
        .I2(b[1]),
        .I3(\out[7]_i_9_n_0 ),
        .I4(\out[7]_i_5_n_0 ),
        .I5(\out[7]_i_8_n_0 ),
        .O(\out[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \out[1]_i_4 
       (.I0(\out[2]_i_6_n_0 ),
        .I1(b[0]),
        .I2(\out[6]_i_7_n_0 ),
        .I3(a),
        .O(\out[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFAFA0A0AFC0CFC0C)) 
    \out[1]_i_5 
       (.I0(\a_reg[6]_0 [5]),
        .I1(\a_reg[6]_0 [1]),
        .I2(b[1]),
        .I3(\a_reg[6]_0 [3]),
        .I4(a),
        .I5(b[2]),
        .O(\out[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0202020202000000)) 
    \out[2]_i_1 
       (.I0(Q[1]),
        .I1(\op_reg_n_0_[6] ),
        .I2(\op_reg_n_0_[7] ),
        .I3(\out[6]_i_3_n_0 ),
        .I4(\out[2]_i_2_n_0 ),
        .I5(\out[2]_i_3_n_0 ),
        .O(out_next0_in[2]));
  LUT6 #(
    .INIT(64'hC840FFFFC8400000)) 
    \out[2]_i_2 
       (.I0(b[0]),
        .I1(\out[6]_i_7_n_0 ),
        .I2(\out[2]_i_4_n_0 ),
        .I3(\out[3]_i_4_n_0 ),
        .I4(\out[7]_i_9_n_0 ),
        .I5(data5[2]),
        .O(\out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    \out[2]_i_3 
       (.I0(O[2]),
        .I1(\a_reg[6]_0 [2]),
        .I2(b[2]),
        .I3(\out[7]_i_9_n_0 ),
        .I4(\out[7]_i_5_n_0 ),
        .I5(\out[7]_i_8_n_0 ),
        .O(\out[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \out[2]_i_4 
       (.I0(\a_reg[6]_0 [6]),
        .I1(\a_reg[6]_0 [2]),
        .I2(\a_reg[6]_0 [4]),
        .I3(b[1]),
        .I4(b[2]),
        .O(\out[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[2]_i_5 
       (.I0(a),
        .I1(\out[2]_i_6_n_0 ),
        .I2(\out[3]_i_6_n_0 ),
        .I3(\out[6]_i_7_n_0 ),
        .I4(b[0]),
        .O(data5[2]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \out[2]_i_6 
       (.I0(\a_reg[6]_0 [4]),
        .I1(a),
        .I2(b[1]),
        .I3(\a_reg[6]_0 [6]),
        .I4(b[2]),
        .I5(\a_reg[6]_0 [2]),
        .O(\out[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0202020202000000)) 
    \out[3]_i_1 
       (.I0(Q[1]),
        .I1(\op_reg_n_0_[6] ),
        .I2(\op_reg_n_0_[7] ),
        .I3(\out[6]_i_3_n_0 ),
        .I4(\out[3]_i_2_n_0 ),
        .I5(\out[3]_i_3_n_0 ),
        .O(out_next0_in[3]));
  LUT6 #(
    .INIT(64'hC840FFFFC8400000)) 
    \out[3]_i_2 
       (.I0(b[0]),
        .I1(\out[6]_i_7_n_0 ),
        .I2(\out[3]_i_4_n_0 ),
        .I3(\out[4]_i_4_n_0 ),
        .I4(\out[7]_i_9_n_0 ),
        .I5(data5[3]),
        .O(\out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    \out[3]_i_3 
       (.I0(O[3]),
        .I1(\a_reg[6]_0 [3]),
        .I2(b[3]),
        .I3(\out[7]_i_9_n_0 ),
        .I4(\out[7]_i_5_n_0 ),
        .I5(\out[7]_i_8_n_0 ),
        .O(\out[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \out[3]_i_4 
       (.I0(\a_reg[6]_0 [3]),
        .I1(a),
        .I2(\a_reg[6]_0 [5]),
        .I3(b[1]),
        .I4(b[2]),
        .O(\out[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[3]_i_5 
       (.I0(a),
        .I1(\out[3]_i_6_n_0 ),
        .I2(\out[4]_i_6_n_0 ),
        .I3(\out[6]_i_7_n_0 ),
        .I4(b[0]),
        .O(data5[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \out[3]_i_6 
       (.I0(\a_reg[6]_0 [5]),
        .I1(b[1]),
        .I2(\a_reg[6]_0 [3]),
        .I3(a),
        .I4(b[2]),
        .O(\out[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0202020202000000)) 
    \out[4]_i_1 
       (.I0(Q[1]),
        .I1(\op_reg_n_0_[6] ),
        .I2(\op_reg_n_0_[7] ),
        .I3(\out[6]_i_3_n_0 ),
        .I4(\out[4]_i_2_n_0 ),
        .I5(\out[4]_i_3_n_0 ),
        .O(out_next0_in[4]));
  LUT6 #(
    .INIT(64'hC840FFFFC8400000)) 
    \out[4]_i_2 
       (.I0(b[0]),
        .I1(\out[6]_i_7_n_0 ),
        .I2(\out[4]_i_4_n_0 ),
        .I3(\out[5]_i_8_n_0 ),
        .I4(\out[7]_i_9_n_0 ),
        .I5(data5[4]),
        .O(\out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    \out[4]_i_3 
       (.I0(\out_reg[7]_1 [0]),
        .I1(\a_reg[6]_0 [4]),
        .I2(b[4]),
        .I3(\out[7]_i_9_n_0 ),
        .I4(\out[7]_i_5_n_0 ),
        .I5(\out[7]_i_8_n_0 ),
        .O(\out[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \out[4]_i_4 
       (.I0(\a_reg[6]_0 [4]),
        .I1(\a_reg[6]_0 [6]),
        .I2(b[1]),
        .I3(b[2]),
        .O(\out[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[4]_i_5 
       (.I0(a),
        .I1(\out[4]_i_6_n_0 ),
        .I2(\out[5]_i_6_n_0 ),
        .I3(\out[6]_i_7_n_0 ),
        .I4(b[0]),
        .O(data5[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \out[4]_i_6 
       (.I0(\a_reg[6]_0 [6]),
        .I1(b[1]),
        .I2(\a_reg[6]_0 [4]),
        .I3(a),
        .I4(b[2]),
        .O(\out[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8880)) 
    \out[5]_i_1 
       (.I0(\out[6]_i_2_n_0 ),
        .I1(\out[6]_i_3_n_0 ),
        .I2(\out[5]_i_2_n_0 ),
        .I3(\out[5]_i_3_n_0 ),
        .I4(\out[5]_i_4_n_0 ),
        .O(out_next0_in[5]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \out[5]_i_10 
       (.I0(b[6]),
        .I1(b[7]),
        .I2(b[5]),
        .I3(b[4]),
        .I4(b[3]),
        .I5(b[0]),
        .O(\out[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7B3C480)) 
    \out[5]_i_2 
       (.I0(b[0]),
        .I1(\out[6]_i_7_n_0 ),
        .I2(\out[5]_i_5_n_0 ),
        .I3(\out[5]_i_6_n_0 ),
        .I4(a),
        .I5(\out[7]_i_9_n_0 ),
        .O(\out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF020002000200)) 
    \out[5]_i_3 
       (.I0(\out[5]_i_7_n_0 ),
        .I1(b[2]),
        .I2(b[1]),
        .I3(\a_reg[6]_0 [6]),
        .I4(\out[5]_i_8_n_0 ),
        .I5(\out[5]_i_9_n_0 ),
        .O(\out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    \out[5]_i_4 
       (.I0(\out_reg[7]_1 [1]),
        .I1(\a_reg[6]_0 [5]),
        .I2(b[5]),
        .I3(\out[7]_i_9_n_0 ),
        .I4(\out[7]_i_5_n_0 ),
        .I5(\out[7]_i_8_n_0 ),
        .O(\out[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF0E4)) 
    \out[5]_i_5 
       (.I0(b[1]),
        .I1(\a_reg[6]_0 [6]),
        .I2(a),
        .I3(b[2]),
        .O(\out[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF0E4)) 
    \out[5]_i_6 
       (.I0(b[1]),
        .I1(\a_reg[6]_0 [5]),
        .I2(a),
        .I3(b[2]),
        .O(\out[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out[5]_i_7 
       (.I0(\out[5]_i_10_n_0 ),
        .I1(\out[7]_i_9_n_0 ),
        .O(\out[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \out[5]_i_8 
       (.I0(\a_reg[6]_0 [5]),
        .I1(a),
        .I2(b[1]),
        .I3(b[2]),
        .O(\out[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out[5]_i_9 
       (.I0(\out[7]_i_9_n_0 ),
        .I1(\out[7]_i_6_n_0 ),
        .O(\out[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8880)) 
    \out[6]_i_1 
       (.I0(\out[6]_i_2_n_0 ),
        .I1(\out[6]_i_3_n_0 ),
        .I2(\out[6]_i_4_n_0 ),
        .I3(\out[6]_i_5_n_0 ),
        .I4(\out[6]_i_6_n_0 ),
        .O(out_next0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \out[6]_i_2 
       (.I0(\op_reg_n_0_[7] ),
        .I1(\op_reg_n_0_[6] ),
        .I2(Q[1]),
        .O(\out[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \out[6]_i_3 
       (.I0(\op_reg[1]_0 ),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[5] ),
        .I3(\op_reg_n_0_[4] ),
        .I4(\op_reg_n_0_[3] ),
        .O(\out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000050507340)) 
    \out[6]_i_4 
       (.I0(\out[7]_i_9_n_0 ),
        .I1(b[2]),
        .I2(a),
        .I3(\a_reg[6]_0 [6]),
        .I4(b[1]),
        .I5(\out[7]_i_6_n_0 ),
        .O(\out[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0B0B0B8B00000000)) 
    \out[6]_i_5 
       (.I0(b[0]),
        .I1(\out[6]_i_7_n_0 ),
        .I2(\out[7]_i_9_n_0 ),
        .I3(b[2]),
        .I4(b[1]),
        .I5(a),
        .O(\out[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    \out[6]_i_6 
       (.I0(\out_reg[7]_1 [2]),
        .I1(\a_reg[6]_0 [6]),
        .I2(b[6]),
        .I3(\out[7]_i_9_n_0 ),
        .I4(\out[7]_i_5_n_0 ),
        .I5(\out[7]_i_8_n_0 ),
        .O(\out[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \out[6]_i_7 
       (.I0(b[3]),
        .I1(b[4]),
        .I2(b[5]),
        .I3(b[7]),
        .I4(b[6]),
        .O(\out[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000300010000)) 
    \out[7]_i_1 
       (.I0(tx_full_int),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[4]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_next));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \out[7]_i_2 
       (.I0(\out[7]_i_3_n_0 ),
        .I1(\out[7]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(\op_reg_n_0_[6] ),
        .I4(\op_reg_n_0_[7] ),
        .I5(\out[7]_i_5_n_0 ),
        .O(out_next0_in[7]));
  LUT6 #(
    .INIT(64'h4000400FF00FFF00)) 
    \out[7]_i_3 
       (.I0(\out[7]_i_6_n_0 ),
        .I1(\out[7]_i_7_n_0 ),
        .I2(\out[7]_i_8_n_0 ),
        .I3(a),
        .I4(b[7]),
        .I5(\out[7]_i_9_n_0 ),
        .O(\out[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hECE0E020)) 
    \out[7]_i_4 
       (.I0(\out_reg[7]_1 [3]),
        .I1(\out[7]_i_8_n_0 ),
        .I2(\out[7]_i_9_n_0 ),
        .I3(a),
        .I4(b[7]),
        .O(\out[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h10000010)) 
    \out[7]_i_5 
       (.I0(\op_reg_n_0_[4] ),
        .I1(\op_reg_n_0_[3] ),
        .I2(\op_reg[1]_0 ),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg_n_0_[5] ),
        .O(\out[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \out[7]_i_6 
       (.I0(b[0]),
        .I1(b[6]),
        .I2(b[7]),
        .I3(b[5]),
        .I4(b[4]),
        .I5(b[3]),
        .O(\out[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \out[7]_i_7 
       (.I0(b[1]),
        .I1(b[2]),
        .O(\out[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00011000)) 
    \out[7]_i_8 
       (.I0(\op_reg_n_0_[3] ),
        .I1(\op_reg_n_0_[4] ),
        .I2(\op_reg_n_0_[5] ),
        .I3(\op_reg_n_0_[2] ),
        .I4(\op_reg[1]_0 ),
        .O(\out[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000A00000000000E)) 
    \out[7]_i_9 
       (.I0(\op_reg_n_0_[5] ),
        .I1(\op_reg[1]_0 ),
        .I2(\op_reg_n_0_[4] ),
        .I3(\op_reg_n_0_[3] ),
        .I4(\op_reg_n_0_[0] ),
        .I5(\op_reg_n_0_[2] ),
        .O(\out[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(write_next),
        .D(out_next0_in[0]),
        .Q(\out_reg[7]_0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(write_next),
        .D(out_next0_in[1]),
        .Q(\out_reg[7]_0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(write_next),
        .D(out_next0_in[2]),
        .Q(\out_reg[7]_0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(write_next),
        .D(out_next0_in[3]),
        .Q(\out_reg[7]_0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(write_next),
        .D(out_next0_in[4]),
        .Q(\out_reg[7]_0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(write_next),
        .D(out_next0_in[5]),
        .Q(\out_reg[7]_0 [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(write_next),
        .D(out_next0_in[6]),
        .Q(\out_reg[7]_0 [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(write_next),
        .D(out_next0_in[7]),
        .Q(\out_reg[7]_0 [7]),
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
    t_memoria_reg_0_7_0_5_i_1
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
    r_write_enable,
    reset_IBUF,
    clock_IBUF_BUFG,
    rx_IBUF,
    \r_state_reg[4]_0 ,
    r_memoria_reg_0_7_0_5);
  output rx_write;
  output [7:0]Q;
  output r_write_enable;
  input reset_IBUF;
  input clock_IBUF_BUFG;
  input rx_IBUF;
  input \r_state_reg[4]_0 ;
  input r_memoria_reg_0_7_0_5;

  wire [7:0]Q;
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
  wire r_done_i_1_n_0;
  wire r_done_i_2_n_0;
  wire r_done_i_3_n_0;
  wire r_memoria_reg_0_7_0_5;
  wire [4:0]r_next_state;
  wire [4:0]r_state;
  wire \r_state[0]_i_2_n_0 ;
  wire \r_state[0]_i_3_n_0 ;
  wire \r_state[0]_i_4_n_0 ;
  wire \r_state[1]_i_2_n_0 ;
  wire \r_state[2]_i_2_n_0 ;
  wire \r_state[2]_i_3_n_0 ;
  wire \r_state[4]_i_1_n_0 ;
  wire \r_state[4]_i_4_n_0 ;
  wire \r_state[4]_i_5_n_0 ;
  wire \r_state[4]_i_6_n_0 ;
  wire \r_state[4]_i_9_n_0 ;
  wire \r_state_reg[4]_0 ;
  wire [1:0]r_stop_bits;
  wire \r_stop_bits[0]_i_1_n_0 ;
  wire \r_stop_bits[1]_i_1_n_0 ;
  wire \r_stop_bits[1]_i_3_n_0 ;
  wire r_stop_bits_next;
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
  wire r_ticks_next;
  wire \r_ticks_next_inferred__6/i__n_0 ;
  wire r_write_enable;
  wire reset_IBUF;
  wire rx_IBUF;
  wire rx_write;
  wire [3:2]\NLW_r_cont_unos_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_cont_unos_reg[31]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0FFF0FBFC000C040)) 
    \r_bits[0]_i_1 
       (.I0(\r_state[4]_i_6_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h4555)) 
    \r_bits[1]_i_2 
       (.I0(r_state[0]),
        .I1(\r_state[4]_i_9_n_0 ),
        .I2(\r_state_reg[4]_0 ),
        .I3(r_state[2]),
        .O(\r_bits[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
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
       (.I0(\r_state[4]_i_6_n_0 ),
        .I1(r_state[2]),
        .I2(\r_bits[2]_i_2_n_0 ),
        .I3(r_state[0]),
        .I4(\r_bits[2]_i_3_n_0 ),
        .I5(r_bits[2]),
        .O(\r_bits[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_cont_unos[0]_i_1 
       (.I0(r_state[2]),
        .I1(r_cont_unos[0]),
        .O(r_cont_unos_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[10]_i_1 
       (.I0(r_state[2]),
        .I1(in13[10]),
        .O(r_cont_unos_next[10]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[11]_i_1 
       (.I0(r_state[2]),
        .I1(in13[11]),
        .O(r_cont_unos_next[11]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[12]_i_1 
       (.I0(r_state[2]),
        .I1(in13[12]),
        .O(r_cont_unos_next[12]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[13]_i_1 
       (.I0(r_state[2]),
        .I1(in13[13]),
        .O(r_cont_unos_next[13]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[14]_i_1 
       (.I0(r_state[2]),
        .I1(in13[14]),
        .O(r_cont_unos_next[14]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[15]_i_1 
       (.I0(r_state[2]),
        .I1(in13[15]),
        .O(r_cont_unos_next[15]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[16]_i_1 
       (.I0(r_state[2]),
        .I1(in13[16]),
        .O(r_cont_unos_next[16]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[17]_i_1 
       (.I0(r_state[2]),
        .I1(in13[17]),
        .O(r_cont_unos_next[17]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[18]_i_1 
       (.I0(r_state[2]),
        .I1(in13[18]),
        .O(r_cont_unos_next[18]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[19]_i_1 
       (.I0(r_state[2]),
        .I1(in13[19]),
        .O(r_cont_unos_next[19]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[1]_i_1 
       (.I0(r_state[2]),
        .I1(in13[1]),
        .O(r_cont_unos_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[20]_i_1 
       (.I0(r_state[2]),
        .I1(in13[20]),
        .O(r_cont_unos_next[20]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[21]_i_1 
       (.I0(r_state[2]),
        .I1(in13[21]),
        .O(r_cont_unos_next[21]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[22]_i_1 
       (.I0(r_state[2]),
        .I1(in13[22]),
        .O(r_cont_unos_next[22]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[23]_i_1 
       (.I0(r_state[2]),
        .I1(in13[23]),
        .O(r_cont_unos_next[23]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[24]_i_1 
       (.I0(r_state[2]),
        .I1(in13[24]),
        .O(r_cont_unos_next[24]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[25]_i_1 
       (.I0(r_state[2]),
        .I1(in13[25]),
        .O(r_cont_unos_next[25]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[26]_i_1 
       (.I0(r_state[2]),
        .I1(in13[26]),
        .O(r_cont_unos_next[26]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[27]_i_1 
       (.I0(r_state[2]),
        .I1(in13[27]),
        .O(r_cont_unos_next[27]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[28]_i_1 
       (.I0(r_state[2]),
        .I1(in13[28]),
        .O(r_cont_unos_next[28]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[29]_i_1 
       (.I0(r_state[2]),
        .I1(in13[29]),
        .O(r_cont_unos_next[29]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[2]_i_1 
       (.I0(r_state[2]),
        .I1(in13[2]),
        .O(r_cont_unos_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[30]_i_1 
       (.I0(r_state[2]),
        .I1(in13[30]),
        .O(r_cont_unos_next[30]));
  LUT5 #(
    .INIT(32'hAAAA0080)) 
    \r_cont_unos[31]_i_1 
       (.I0(\r_bits[2]_i_2_n_0 ),
        .I1(r_state[2]),
        .I2(rx_IBUF),
        .I3(\r_state[4]_i_6_n_0 ),
        .I4(r_state[0]),
        .O(r_cont_unos_next_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[31]_i_2 
       (.I0(r_state[2]),
        .I1(in13[31]),
        .O(r_cont_unos_next[31]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[3]_i_1 
       (.I0(r_state[2]),
        .I1(in13[3]),
        .O(r_cont_unos_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[4]_i_1 
       (.I0(r_state[2]),
        .I1(in13[4]),
        .O(r_cont_unos_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[5]_i_1 
       (.I0(r_state[2]),
        .I1(in13[5]),
        .O(r_cont_unos_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[6]_i_1 
       (.I0(r_state[2]),
        .I1(in13[6]),
        .O(r_cont_unos_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[7]_i_1 
       (.I0(r_state[2]),
        .I1(in13[7]),
        .O(r_cont_unos_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[8]_i_1 
       (.I0(r_state[2]),
        .I1(in13[8]),
        .O(r_cont_unos_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[0]_i_1 
       (.I0(r_state[2]),
        .I1(Q[1]),
        .O(r_data_next0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[1]_i_1 
       (.I0(r_state[2]),
        .I1(Q[2]),
        .O(r_data_next0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[2]_i_1 
       (.I0(r_state[2]),
        .I1(Q[3]),
        .O(r_data_next0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[3]_i_1 
       (.I0(r_state[2]),
        .I1(Q[4]),
        .O(r_data_next0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[4]_i_1 
       (.I0(r_state[2]),
        .I1(Q[5]),
        .O(r_data_next0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[5]_i_1 
       (.I0(r_state[2]),
        .I1(Q[6]),
        .O(r_data_next0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[6]_i_1 
       (.I0(r_state[2]),
        .I1(Q[7]),
        .O(r_data_next0_in[6]));
  LUT6 #(
    .INIT(64'h0001000100000100)) 
    \r_data[7]_i_1 
       (.I0(r_state[1]),
        .I1(r_state[4]),
        .I2(r_state[3]),
        .I3(r_state[2]),
        .I4(\r_state[4]_i_6_n_0 ),
        .I5(r_state[0]),
        .O(r_data_next));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
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
        .Q(Q[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[1]),
        .Q(Q[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[2]),
        .Q(Q[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[3]),
        .Q(Q[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[4]),
        .Q(Q[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[5]),
        .Q(Q[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[6]),
        .Q(Q[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(r_data_next),
        .D(r_data_next0_in[7]),
        .Q(Q[7]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'hFFFFFFC400000004)) 
    r_done_i_1
       (.I0(\r_ticks[0]_i_2_n_0 ),
        .I1(r_state[4]),
        .I2(r_state[0]),
        .I3(r_done_i_2_n_0),
        .I4(r_done_i_3_n_0),
        .I5(rx_write),
        .O(r_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    r_done_i_2
       (.I0(r_state[1]),
        .I1(r_state[3]),
        .I2(r_state[2]),
        .O(r_done_i_2_n_0));
  LUT6 #(
    .INIT(64'h5555555555155555)) 
    r_done_i_3
       (.I0(r_state[0]),
        .I1(r_state[4]),
        .I2(\r_state_reg[4]_0 ),
        .I3(r_stop_bits[1]),
        .I4(r_stop_bits[0]),
        .I5(\r_ticks[0]_i_2_n_0 ),
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
    r_memoria_reg_0_7_0_5_i_1
       (.I0(rx_write),
        .I1(r_memoria_reg_0_7_0_5),
        .O(r_write_enable));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4F4F4)) 
    \r_state[0]_i_1 
       (.I0(\r_state[4]_i_5_n_0 ),
        .I1(\r_state[0]_i_2_n_0 ),
        .I2(\r_state[0]_i_3_n_0 ),
        .I3(r_state[0]),
        .I4(rx_IBUF),
        .I5(\r_state[0]_i_4_n_0 ),
        .O(r_next_state[0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_state[0]_i_2 
       (.I0(r_state[3]),
        .I1(\r_state_reg[4]_0 ),
        .I2(r_ticks[2]),
        .I3(r_ticks[0]),
        .I4(r_ticks[1]),
        .I5(r_ticks[3]),
        .O(\r_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \r_state[0]_i_3 
       (.I0(\r_state[1]_i_2_n_0 ),
        .I1(rx_IBUF),
        .I2(\r_state_reg[4]_0 ),
        .I3(r_state[1]),
        .O(\r_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0075000000000000)) 
    \r_state[0]_i_4 
       (.I0(rx_IBUF),
        .I1(r_stop_bits[1]),
        .I2(r_stop_bits[0]),
        .I3(\r_state[4]_i_9_n_0 ),
        .I4(\r_state_reg[4]_0 ),
        .I5(r_state[4]),
        .O(\r_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hD0FFD0D0)) 
    \r_state[1]_i_1 
       (.I0(\r_state_reg[4]_0 ),
        .I1(\r_state[1]_i_2_n_0 ),
        .I2(r_state[1]),
        .I3(rx_IBUF),
        .I4(r_state[0]),
        .O(r_next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \r_state[1]_i_2 
       (.I0(r_ticks[3]),
        .I1(r_ticks[2]),
        .I2(r_ticks[0]),
        .I3(r_ticks[1]),
        .O(\r_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFD0D0D0D0D0D0D0)) 
    \r_state[2]_i_1 
       (.I0(\r_state[2]_i_2_n_0 ),
        .I1(\r_state[4]_i_6_n_0 ),
        .I2(r_state[2]),
        .I3(r_state[1]),
        .I4(\r_state_reg[4]_0 ),
        .I5(\r_state[2]_i_3_n_0 ),
        .O(r_next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r_state[2]_i_2 
       (.I0(r_bits[1]),
        .I1(r_bits[0]),
        .I2(r_bits[2]),
        .O(\r_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
        .I4(\r_state[4]_i_6_n_0 ),
        .I5(r_state[2]),
        .O(r_next_state[3]));
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
    .INIT(64'hD0D0D0D0FFD0D0D0)) 
    \r_state[4]_i_2 
       (.I0(\r_state_reg[4]_0 ),
        .I1(\r_state[4]_i_4_n_0 ),
        .I2(r_state[4]),
        .I3(\r_state[4]_i_5_n_0 ),
        .I4(r_state[3]),
        .I5(\r_state[4]_i_6_n_0 ),
        .O(r_next_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFBAA)) 
    \r_state[4]_i_4 
       (.I0(\r_state[4]_i_9_n_0 ),
        .I1(r_stop_bits[0]),
        .I2(r_stop_bits[1]),
        .I3(rx_IBUF),
        .O(\r_state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h101F)) 
    \r_state[4]_i_5 
       (.I0(r_cont_unos[31]),
        .I1(\r_ticks[0]_i_2_n_0 ),
        .I2(r_cont_unos[0]),
        .I3(rx_IBUF),
        .O(\r_state[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \r_state[4]_i_6 
       (.I0(r_ticks[3]),
        .I1(r_ticks[1]),
        .I2(r_ticks[0]),
        .I3(r_ticks[2]),
        .I4(\r_state_reg[4]_0 ),
        .O(\r_state[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_state[4]_i_9 
       (.I0(r_ticks[2]),
        .I1(r_ticks[0]),
        .I2(r_ticks[1]),
        .I3(r_ticks[3]),
        .O(\r_state[4]_i_9_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \r_stop_bits[0]_i_1 
       (.I0(r_state[4]),
        .I1(r_stop_bits_next),
        .I2(r_stop_bits[0]),
        .O(\r_stop_bits[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \r_stop_bits[1]_i_1 
       (.I0(r_stop_bits[0]),
        .I1(r_state[4]),
        .I2(r_stop_bits_next),
        .I3(r_stop_bits[1]),
        .O(\r_stop_bits[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000555510000000)) 
    \r_stop_bits[1]_i_2 
       (.I0(r_done_i_2_n_0),
        .I1(\r_state[4]_i_9_n_0 ),
        .I2(\r_stop_bits[1]_i_3_n_0 ),
        .I3(\r_state_reg[4]_0 ),
        .I4(r_state[4]),
        .I5(r_state[0]),
        .O(r_stop_bits_next));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \r_stop_bits[1]_i_3 
       (.I0(rx_IBUF),
        .I1(r_stop_bits[1]),
        .I2(r_stop_bits[0]),
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
  LUT6 #(
    .INIT(64'h5554545455555555)) 
    \r_ticks[0]_i_1 
       (.I0(r_ticks[0]),
        .I1(r_state[3]),
        .I2(r_state[2]),
        .I3(r_state[4]),
        .I4(\r_ticks[0]_i_2_n_0 ),
        .I5(\r_ticks[0]_i_3_n_0 ),
        .O(\r_ticks[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
    .INIT(64'h0000000004005557)) 
    \r_ticks[1]_i_2 
       (.I0(r_state[1]),
        .I1(rx_IBUF),
        .I2(\r_ticks[3]_i_5_n_0 ),
        .I3(r_ticks[3]),
        .I4(r_state[4]),
        .I5(\r_ticks[3]_i_4_n_0 ),
        .O(\r_ticks[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7878787878787800)) 
    \r_ticks[2]_i_1 
       (.I0(r_ticks[0]),
        .I1(r_ticks[1]),
        .I2(r_ticks[2]),
        .I3(r_state[1]),
        .I4(\r_ticks[3]_i_4_n_0 ),
        .I5(r_state[4]),
        .O(\r_ticks[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8888888AAAAAAAA)) 
    \r_ticks[3]_i_1 
       (.I0(\r_ticks_next_inferred__6/i__n_0 ),
        .I1(r_state[0]),
        .I2(r_state[4]),
        .I3(\r_state_reg[4]_0 ),
        .I4(\r_state[4]_i_4_n_0 ),
        .I5(\r_ticks[3]_i_3_n_0 ),
        .O(r_ticks_next));
  LUT6 #(
    .INIT(64'hFFFC00000000FFF8)) 
    \r_ticks[3]_i_2 
       (.I0(rx_IBUF),
        .I1(r_state[1]),
        .I2(r_state[4]),
        .I3(\r_ticks[3]_i_4_n_0 ),
        .I4(\r_ticks[3]_i_5_n_0 ),
        .I5(r_ticks[3]),
        .O(\r_ticks[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002FFFFFFFFF)) 
    \r_ticks[3]_i_3 
       (.I0(rx_IBUF),
        .I1(\r_state[1]_i_2_n_0 ),
        .I2(r_state[1]),
        .I3(r_state[3]),
        .I4(r_state[2]),
        .I5(\r_state_reg[4]_0 ),
        .O(\r_ticks[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_ticks[3]_i_4 
       (.I0(r_state[2]),
        .I1(r_state[3]),
        .O(\r_ticks[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \r_ticks[3]_i_5 
       (.I0(r_ticks[1]),
        .I1(r_ticks[0]),
        .I2(r_ticks[2]),
        .O(\r_ticks[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \r_ticks_next_inferred__6/i_ 
       (.I0(r_state[0]),
        .I1(r_state[1]),
        .I2(r_state[2]),
        .I3(r_state[3]),
        .I4(r_state[4]),
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
    \t_stop_bits_reg[0]_0 ,
    tx_start_UART,
    D);
  output tx_OBUF;
  output tx_read;
  input reset_IBUF;
  input clock_IBUF_BUFG;
  input \t_stop_bits_reg[0]_0 ;
  input tx_start_UART;
  input [7:0]D;

  wire [7:0]D;
  wire clock_IBUF_BUFG;
  wire [31:1]in10;
  wire p_1_in;
  wire reset_IBUF;
  wire [2:0]t_bits;
  wire \t_bits[0]_i_1_n_0 ;
  wire \t_bits[1]_i_1_n_0 ;
  wire \t_bits[2]_i_1_n_0 ;
  wire \t_bits[2]_i_2_n_0 ;
  wire \t_bits[2]_i_3_n_0 ;
  wire \t_bits[2]_i_4_n_0 ;
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
  wire t_data_i_2_n_0;
  wire t_data_i_3_n_0;
  wire t_data_i_4_n_0;
  wire t_data_i_6_n_0;
  wire t_data_i_7_n_0;
  wire t_data_next;
  wire t_data_reg_i_5_n_0;
  wire t_din_next;
  wire \t_din_reg_n_0_[1] ;
  wire \t_din_reg_n_0_[2] ;
  wire \t_din_reg_n_0_[3] ;
  wire \t_din_reg_n_0_[4] ;
  wire \t_din_reg_n_0_[5] ;
  wire \t_din_reg_n_0_[6] ;
  wire \t_din_reg_n_0_[7] ;
  wire t_done_i_1_n_0;
  wire t_done_i_2_n_0;
  wire [4:0]t_next_state;
  wire [4:0]t_state;
  wire \t_state[3]_i_2_n_0 ;
  wire \t_state[4]_i_1_n_0 ;
  wire \t_state[4]_i_3_n_0 ;
  wire [1:0]t_stop_bits;
  wire \t_stop_bits[0]_i_1_n_0 ;
  wire \t_stop_bits[0]_i_2_n_0 ;
  wire \t_stop_bits[1]_i_1_n_0 ;
  wire \t_stop_bits[1]_i_2_n_0 ;
  wire \t_stop_bits[1]_i_3_n_0 ;
  wire \t_stop_bits_reg[0]_0 ;
  wire [3:0]t_ticks;
  wire \t_ticks[0]_i_1_n_0 ;
  wire \t_ticks[1]_i_1_n_0 ;
  wire \t_ticks[2]_i_1_n_0 ;
  wire \t_ticks[3]_i_2_n_0 ;
  wire \t_ticks[3]_i_3_n_0 ;
  wire \t_ticks[3]_i_4_n_0 ;
  wire t_ticks_next;
  wire tx_OBUF;
  wire tx_read;
  wire tx_start_UART;
  wire [3:2]NLW_t_cont_unos_next0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_t_cont_unos_next0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFCFFDD00000020)) 
    \t_bits[0]_i_1 
       (.I0(\t_bits[2]_i_3_n_0 ),
        .I1(\t_ticks[3]_i_4_n_0 ),
        .I2(t_state[2]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .I5(t_bits[0]),
        .O(\t_bits[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF444F00008880)) 
    \t_bits[1]_i_1 
       (.I0(t_bits[0]),
        .I1(t_state[2]),
        .I2(\t_bits[2]_i_3_n_0 ),
        .I3(t_state[0]),
        .I4(\t_bits[2]_i_4_n_0 ),
        .I5(t_bits[1]),
        .O(\t_bits[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF888F00008880)) 
    \t_bits[2]_i_1 
       (.I0(\t_bits[2]_i_2_n_0 ),
        .I1(t_state[2]),
        .I2(\t_bits[2]_i_3_n_0 ),
        .I3(t_state[0]),
        .I4(\t_bits[2]_i_4_n_0 ),
        .I5(t_bits[2]),
        .O(\t_bits[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \t_bits[2]_i_2 
       (.I0(t_bits[1]),
        .I1(t_bits[0]),
        .I2(t_bits[2]),
        .O(\t_bits[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0888888800000000)) 
    \t_bits[2]_i_3 
       (.I0(\t_stop_bits_reg[0]_0 ),
        .I1(t_state[2]),
        .I2(t_bits[1]),
        .I3(t_bits[0]),
        .I4(t_bits[2]),
        .I5(\t_state[4]_i_3_n_0 ),
        .O(\t_bits[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEC)) 
    \t_bits[2]_i_4 
       (.I0(t_state[0]),
        .I1(t_state[1]),
        .I2(t_state[2]),
        .I3(t_state[4]),
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
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \t_cont_unos[0]_i_1 
       (.I0(t_cont_unos[0]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[10]_i_1 
       (.I0(in10[10]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[10]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[11]_i_1 
       (.I0(in10[11]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[11]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[12]_i_1 
       (.I0(in10[12]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[12]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[13]_i_1 
       (.I0(in10[13]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[13]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[14]_i_1 
       (.I0(in10[14]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[14]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[15]_i_1 
       (.I0(in10[15]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[15]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[16]_i_1 
       (.I0(in10[16]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[16]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[17]_i_1 
       (.I0(in10[17]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[17]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[18]_i_1 
       (.I0(in10[18]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[18]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[19]_i_1 
       (.I0(in10[19]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[19]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[1]_i_1 
       (.I0(in10[1]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[20]_i_1 
       (.I0(in10[20]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[20]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[21]_i_1 
       (.I0(in10[21]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[21]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[22]_i_1 
       (.I0(in10[22]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[22]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[23]_i_1 
       (.I0(in10[23]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[23]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[24]_i_1 
       (.I0(in10[24]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[24]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[25]_i_1 
       (.I0(in10[25]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[25]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[26]_i_1 
       (.I0(in10[26]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[26]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[27]_i_1 
       (.I0(in10[27]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[27]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[28]_i_1 
       (.I0(in10[28]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[28]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[29]_i_1 
       (.I0(in10[29]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[29]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[2]_i_1 
       (.I0(in10[2]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
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
        .I2(\t_bits[2]_i_3_n_0 ),
        .I3(\t_cont_unos[31]_i_5_n_0 ),
        .I4(\t_state[3]_i_2_n_0 ),
        .I5(\t_cont_unos[31]_i_6_n_0 ),
        .O(t_cont_unos_next_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[31]_i_2 
       (.I0(in10[31]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[31]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
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
    .INIT(64'h00000000BEEE8222)) 
    \t_cont_unos[31]_i_4 
       (.I0(\t_cont_unos[31]_i_7_n_0 ),
        .I1(t_bits[2]),
        .I2(t_bits[0]),
        .I3(t_bits[1]),
        .I4(\t_cont_unos[31]_i_8_n_0 ),
        .I5(t_state[1]),
        .O(\t_cont_unos[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \t_cont_unos[31]_i_5 
       (.I0(t_state[2]),
        .I1(p_1_in),
        .I2(t_state[1]),
        .O(\t_cont_unos[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \t_cont_unos[31]_i_6 
       (.I0(t_state[0]),
        .I1(t_state[3]),
        .I2(t_state[4]),
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
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[3]_i_1 
       (.I0(in10[3]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[4]_i_1 
       (.I0(in10[4]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[5]_i_1 
       (.I0(in10[5]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[6]_i_1 
       (.I0(in10[6]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[7]_i_1 
       (.I0(in10[7]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[8]_i_1 
       (.I0(in10[8]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
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
        .I1(t_state[2]),
        .I2(t_state[1]),
        .I3(t_state[0]),
        .I4(\t_ticks[3]_i_4_n_0 ),
        .I5(\t_state[3]_i_2_n_0 ),
        .O(t_data_next));
  LUT6 #(
    .INIT(64'hFFFFFFFF40CC4000)) 
    t_data_i_2
       (.I0(t_cont_unos[31]),
        .I1(t_state[2]),
        .I2(t_cont_unos[0]),
        .I3(t_data_i_4_n_0),
        .I4(t_data_reg_i_5_n_0),
        .I5(t_data_i_6_n_0),
        .O(t_data_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000FF00FF7F00)) 
    t_data_i_3
       (.I0(t_cont_unos[31]),
        .I1(t_cont_unos[0]),
        .I2(t_data_i_7_n_0),
        .I3(t_state[2]),
        .I4(t_state[3]),
        .I5(t_state[4]),
        .O(t_data_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    t_data_i_4
       (.I0(t_bits[1]),
        .I1(t_bits[0]),
        .I2(t_bits[2]),
        .I3(\t_state[4]_i_3_n_0 ),
        .O(t_data_i_4_n_0));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    t_data_i_6
       (.I0(\t_ticks[3]_i_4_n_0 ),
        .I1(\t_stop_bits_reg[0]_0 ),
        .I2(t_state[1]),
        .I3(p_1_in),
        .I4(t_state[0]),
        .I5(tx_start_UART),
        .O(t_data_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h80)) 
    t_data_i_7
       (.I0(t_bits[2]),
        .I1(t_bits[0]),
        .I2(t_bits[1]),
        .O(t_data_i_7_n_0));
  FDSE #(
    .INIT(1'b1)) 
    t_data_reg
       (.C(clock_IBUF_BUFG),
        .CE(t_data_next),
        .D(t_data_i_2_n_0),
        .Q(tx_OBUF),
        .S(reset_IBUF));
  MUXF7 t_data_reg_i_5
       (.I0(\t_cont_unos[31]_i_7_n_0 ),
        .I1(\t_cont_unos[31]_i_8_n_0 ),
        .O(t_data_reg_i_5_n_0),
        .S(\t_bits[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \t_din[7]_i_1 
       (.I0(t_state[1]),
        .I1(t_state[2]),
        .I2(t_state[4]),
        .I3(t_state[3]),
        .I4(t_state[0]),
        .I5(tx_start_UART),
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
  LUT6 #(
    .INIT(64'hB3B3FFBF80800080)) 
    t_done_i_1
       (.I0(t_state[4]),
        .I1(\t_stop_bits[1]_i_2_n_0 ),
        .I2(\t_stop_bits_reg[0]_0 ),
        .I3(t_done_i_2_n_0),
        .I4(t_state[0]),
        .I5(tx_read),
        .O(t_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    t_done_i_2
       (.I0(\t_state[4]_i_3_n_0 ),
        .I1(t_stop_bits[1]),
        .I2(t_stop_bits[0]),
        .I3(t_state[4]),
        .O(t_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    t_done_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(t_done_i_1_n_0),
        .Q(tx_read),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h4444F44444444444)) 
    \t_state[0]_i_1 
       (.I0(tx_start_UART),
        .I1(t_state[0]),
        .I2(t_state[4]),
        .I3(t_stop_bits[0]),
        .I4(t_stop_bits[1]),
        .I5(\t_state[4]_i_3_n_0 ),
        .O(t_next_state[0]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \t_state[1]_i_1 
       (.I0(t_state[0]),
        .I1(tx_start_UART),
        .I2(\t_state[3]_i_2_n_0 ),
        .I3(t_state[1]),
        .O(t_next_state[1]));
  LUT6 #(
    .INIT(64'hFFFFFF007F00FF00)) 
    \t_state[2]_i_1 
       (.I0(t_bits[1]),
        .I1(t_bits[0]),
        .I2(t_bits[2]),
        .I3(t_state[2]),
        .I4(\t_state[3]_i_2_n_0 ),
        .I5(t_state[1]),
        .O(t_next_state[2]));
  LUT6 #(
    .INIT(64'hC0000000AAAAAAAA)) 
    \t_state[3]_i_1 
       (.I0(t_state[3]),
        .I1(t_state[2]),
        .I2(t_bits[1]),
        .I3(t_bits[0]),
        .I4(t_bits[2]),
        .I5(\t_state[3]_i_2_n_0 ),
        .O(t_next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \t_state[3]_i_2 
       (.I0(\t_stop_bits_reg[0]_0 ),
        .I1(t_ticks[0]),
        .I2(t_ticks[3]),
        .I3(t_ticks[1]),
        .I4(t_ticks[2]),
        .O(\t_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000001100111162)) 
    \t_state[4]_i_1 
       (.I0(t_state[3]),
        .I1(t_state[4]),
        .I2(\t_stop_bits_reg[0]_0 ),
        .I3(t_state[2]),
        .I4(t_state[0]),
        .I5(t_state[1]),
        .O(\t_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFA2A2A2AAAAAAAA)) 
    \t_state[4]_i_2 
       (.I0(t_state[4]),
        .I1(t_stop_bits[0]),
        .I2(t_stop_bits[1]),
        .I3(t_state[3]),
        .I4(\t_stop_bits_reg[0]_0 ),
        .I5(\t_state[4]_i_3_n_0 ),
        .O(t_next_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \t_state[4]_i_3 
       (.I0(t_ticks[2]),
        .I1(t_ticks[1]),
        .I2(t_ticks[3]),
        .I3(t_ticks[0]),
        .O(\t_state[4]_i_3_n_0 ));
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
    .INIT(64'h5555FF7F88880080)) 
    \t_stop_bits[0]_i_1 
       (.I0(\t_stop_bits[1]_i_2_n_0 ),
        .I1(t_state[4]),
        .I2(\t_stop_bits_reg[0]_0 ),
        .I3(\t_stop_bits[0]_i_2_n_0 ),
        .I4(t_state[0]),
        .I5(t_stop_bits[0]),
        .O(\t_stop_bits[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFFFFFF7FFF)) 
    \t_stop_bits[0]_i_2 
       (.I0(t_ticks[0]),
        .I1(t_ticks[3]),
        .I2(t_ticks[1]),
        .I3(t_ticks[2]),
        .I4(t_stop_bits[0]),
        .I5(t_stop_bits[1]),
        .O(\t_stop_bits[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF4F0080)) 
    \t_stop_bits[1]_i_1 
       (.I0(t_stop_bits[0]),
        .I1(t_state[4]),
        .I2(\t_stop_bits[1]_i_2_n_0 ),
        .I3(\t_stop_bits[1]_i_3_n_0 ),
        .I4(t_stop_bits[1]),
        .O(\t_stop_bits[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \t_stop_bits[1]_i_2 
       (.I0(t_state[3]),
        .I1(t_state[0]),
        .I2(t_state[4]),
        .I3(t_state[1]),
        .I4(t_state[2]),
        .O(\t_stop_bits[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1151555555555555)) 
    \t_stop_bits[1]_i_3 
       (.I0(t_state[0]),
        .I1(\t_state[4]_i_3_n_0 ),
        .I2(t_stop_bits[0]),
        .I3(t_stop_bits[1]),
        .I4(\t_stop_bits_reg[0]_0 ),
        .I5(t_state[4]),
        .O(\t_stop_bits[1]_i_3_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \t_ticks[0]_i_1 
       (.I0(t_ticks[0]),
        .I1(t_state[0]),
        .O(\t_ticks[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \t_ticks[1]_i_1 
       (.I0(t_ticks[1]),
        .I1(t_ticks[0]),
        .I2(t_state[0]),
        .O(\t_ticks[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
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
        .I1(t_state[2]),
        .I2(t_state[1]),
        .I3(t_state[0]),
        .I4(\t_ticks[3]_i_4_n_0 ),
        .I5(\t_stop_bits_reg[0]_0 ),
        .O(t_ticks_next));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
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
       (.I0(t_state[4]),
        .I1(t_state[3]),
        .I2(t_state[2]),
        .I3(\t_state[4]_i_3_n_0 ),
        .I4(t_stop_bits[1]),
        .I5(t_stop_bits[0]),
        .O(\t_ticks[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
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
endmodule

(* CLK_POR_TICK = "163" *) (* D_BITS = "8" *) (* PARITY = "1" *) 
(* SIZE_FIFO = "3" *) (* STOP_BITS = "2" *) 
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
  wire [6:0]a;
  wire alu_n_0;
  wire alu_n_1;
  wire alu_n_2;
  wire alu_n_3;
  wire alu_n_4;
  wire alu_n_5;
  wire alu_n_6;
  wire alu_n_7;
  wire baudrategen_n_0;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire fifo_n_18;
  wire fifo_n_21;
  wire fifo_n_22;
  wire fifo_n_23;
  wire fifo_n_24;
  wire fifo_n_25;
  wire fifo_n_26;
  wire fifo_n_27;
  wire fifo_n_28;
  wire interfaz_n_1;
  wire interfaz_n_13;
  wire interfaz_n_14;
  wire interfaz_n_15;
  wire interfaz_n_16;
  wire interfaz_n_17;
  wire interfaz_n_18;
  wire interfaz_n_19;
  wire interfaz_n_20;
  wire [0:0]next_state;
  wire [7:0]out;
  wire [7:0]r_data;
  wire r_write_enable;
  wire reset;
  wire reset_IBUF;
  wire rx;
  wire rx_IBUF;
  wire [7:0]rx_data_read;
  wire rx_empty_int;
  wire rx_read_int;
  wire rx_write;
  wire [0:0]state;
  wire t_write_enable;
  wire tx;
  wire tx_OBUF;
  wire [7:0]tx_data_read;
  wire tx_full_int;
  wire tx_read;
  wire tx_start_UART;
  wire tx_write_int;

initial begin
 $sdf_annotate("Top_tb_time_synth.sdf",,,,"tool_control");
end
  ALU alu
       (.O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .Q(a),
        .S({interfaz_n_13,interfaz_n_14,interfaz_n_15,interfaz_n_16}),
        .\a_reg[6] ({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .\out[0]_i_3 (\0 ),
        .\out[4]_i_3 ({interfaz_n_17,interfaz_n_18,interfaz_n_19,interfaz_n_20}));
  BaudrateGen baudrategen
       (.clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\count_reg[10]_0 (baudrategen_n_0),
        .reset_IBUF(reset_IBUF));
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  FIFO fifo
       (.D(tx_data_read),
        .Q(r_data),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .r_empty_reg_0({fifo_n_21,fifo_n_22,fifo_n_23,fifo_n_24,fifo_n_25,fifo_n_26,fifo_n_27,fifo_n_28}),
        .r_full_reg_0(fifo_n_18),
        .r_write_enable(r_write_enable),
        .reset_IBUF(reset_IBUF),
        .rx_data_read(rx_data_read),
        .rx_empty_int(rx_empty_int),
        .rx_read_int(rx_read_int),
        .rx_write(rx_write),
        .\state_reg[0] ({interfaz_n_1,state}),
        .\t_din_reg[7] (out),
        .t_full_reg_0(next_state),
        .t_write_enable(t_write_enable),
        .tx_full_int(tx_full_int),
        .tx_read(tx_read),
        .tx_start_UART(tx_start_UART),
        .tx_write_int(tx_write_int));
  Interfaz interfaz
       (.D(next_state),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .Q({interfaz_n_1,state}),
        .S({interfaz_n_13,interfaz_n_14,interfaz_n_15,interfaz_n_16}),
        .\a_reg[6]_0 (a),
        .\a_reg[7]_0 ({fifo_n_21,fifo_n_22,fifo_n_23,fifo_n_24,fifo_n_25,fifo_n_26,fifo_n_27,fifo_n_28}),
        .\b_reg[7]_0 ({interfaz_n_17,interfaz_n_18,interfaz_n_19,interfaz_n_20}),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\op_reg[1]_0 (\0 ),
        .\out_reg[7]_0 (out),
        .\out_reg[7]_1 ({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .reset_IBUF(reset_IBUF),
        .rx_data_read(rx_data_read),
        .rx_empty_int(rx_empty_int),
        .rx_read_int(rx_read_int),
        .t_write_enable(t_write_enable),
        .tx_full_int(tx_full_int),
        .tx_write_int(tx_write_int));
  RX my_rx
       (.Q(r_data),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .r_memoria_reg_0_7_0_5(fifo_n_18),
        .\r_state_reg[4]_0 (baudrategen_n_0),
        .r_write_enable(r_write_enable),
        .reset_IBUF(reset_IBUF),
        .rx_IBUF(rx_IBUF),
        .rx_write(rx_write));
  TX my_tx
       (.D(tx_data_read),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .reset_IBUF(reset_IBUF),
        .\t_stop_bits_reg[0]_0 (baudrategen_n_0),
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
