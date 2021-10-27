// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct 25 15:48:29 2021
// Host        : TOMASMARTIN running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Vivado/TP2/TP2.sim/sim_1/synth/timing/xsim/Top_tb_time_synth.v
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

module RAM32M_HD1
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

module RAM32M_HD2
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

module RAM32M_HD3
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
   (tx_data_write,
    Q,
    \t_din_reg[7] ,
    \t_din_reg[7]_0 ,
    \t_din_reg[7]_1 ,
    \t_din_reg[1] ,
    \t_din_reg[1]_0 ,
    \t_din_reg[1]_1 ,
    t_memoria_reg_0_7_6_7_i_1_0,
    t_memoria_reg_0_7_6_7_i_1_1,
    t_memoria_reg_0_7_6_7_i_1_2,
    \t_din_reg[1]_2 ,
    \t_din_reg[1]_3 ,
    \t_din_reg[1]_4 ,
    \t_din_reg[1]_5 ,
    \t_din_reg[1]_6 ,
    \t_din_reg[7]_2 ,
    \t_din_reg[7]_3 );
  output [7:0]tx_data_write;
  input [7:0]Q;
  input [2:0]\t_din_reg[7] ;
  input \t_din_reg[7]_0 ;
  input \t_din_reg[7]_1 ;
  input \t_din_reg[1] ;
  input \t_din_reg[1]_0 ;
  input \t_din_reg[1]_1 ;
  input [7:0]t_memoria_reg_0_7_6_7_i_1_0;
  input t_memoria_reg_0_7_6_7_i_1_1;
  input t_memoria_reg_0_7_6_7_i_1_2;
  input \t_din_reg[1]_2 ;
  input \t_din_reg[1]_3 ;
  input \t_din_reg[1]_4 ;
  input \t_din_reg[1]_5 ;
  input \t_din_reg[1]_6 ;
  input \t_din_reg[7]_2 ;
  input \t_din_reg[7]_3 ;

  wire [7:0]Q;
  wire \_inferred__1/i__carry__0_n_1 ;
  wire \_inferred__1/i__carry__0_n_2 ;
  wire \_inferred__1/i__carry__0_n_3 ;
  wire \_inferred__1/i__carry__0_n_4 ;
  wire \_inferred__1/i__carry__0_n_5 ;
  wire \_inferred__1/i__carry__0_n_6 ;
  wire \_inferred__1/i__carry__0_n_7 ;
  wire \_inferred__1/i__carry_n_0 ;
  wire \_inferred__1/i__carry_n_1 ;
  wire \_inferred__1/i__carry_n_2 ;
  wire \_inferred__1/i__carry_n_3 ;
  wire \_inferred__1/i__carry_n_4 ;
  wire \_inferred__1/i__carry_n_5 ;
  wire \_inferred__1/i__carry_n_6 ;
  wire \_inferred__1/i__carry_n_7 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire \t_din_reg[1] ;
  wire \t_din_reg[1]_0 ;
  wire \t_din_reg[1]_1 ;
  wire \t_din_reg[1]_2 ;
  wire \t_din_reg[1]_3 ;
  wire \t_din_reg[1]_4 ;
  wire \t_din_reg[1]_5 ;
  wire \t_din_reg[1]_6 ;
  wire [2:0]\t_din_reg[7] ;
  wire \t_din_reg[7]_0 ;
  wire \t_din_reg[7]_1 ;
  wire \t_din_reg[7]_2 ;
  wire \t_din_reg[7]_3 ;
  wire t_memoria_reg_0_7_0_5_i_10_n_0;
  wire t_memoria_reg_0_7_0_5_i_12_n_0;
  wire t_memoria_reg_0_7_0_5_i_15_n_0;
  wire t_memoria_reg_0_7_0_5_i_17_n_0;
  wire t_memoria_reg_0_7_0_5_i_20_n_0;
  wire t_memoria_reg_0_7_0_5_i_22_n_0;
  wire [7:0]t_memoria_reg_0_7_6_7_i_1_0;
  wire t_memoria_reg_0_7_6_7_i_1_1;
  wire t_memoria_reg_0_7_6_7_i_1_2;
  wire t_memoria_reg_0_7_6_7_i_4_n_0;
  wire t_memoria_reg_0_7_6_7_i_7_n_0;
  wire [7:0]tx_data_write;
  wire [3:3]\NLW__inferred__1/i__carry__0_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__1/i__carry_n_0 ,\_inferred__1/i__carry_n_1 ,\_inferred__1/i__carry_n_2 ,\_inferred__1/i__carry_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\t_din_reg[7] [0]}),
        .O({\_inferred__1/i__carry_n_4 ,\_inferred__1/i__carry_n_5 ,\_inferred__1/i__carry_n_6 ,\_inferred__1/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__0 
       (.CI(\_inferred__1/i__carry_n_0 ),
        .CO({\NLW__inferred__1/i__carry__0_CO_UNCONNECTED [3],\_inferred__1/i__carry__0_n_1 ,\_inferred__1/i__carry__0_n_2 ,\_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O({\_inferred__1/i__carry__0_n_4 ,\_inferred__1/i__carry__0_n_5 ,\_inferred__1/i__carry__0_n_6 ,\_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_1
       (.I0(t_memoria_reg_0_7_6_7_i_1_0[7]),
        .I1(\t_din_reg[7] [0]),
        .I2(Q[7]),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_2
       (.I0(t_memoria_reg_0_7_6_7_i_1_0[6]),
        .I1(\t_din_reg[7] [0]),
        .I2(Q[6]),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_3
       (.I0(t_memoria_reg_0_7_6_7_i_1_0[5]),
        .I1(\t_din_reg[7] [0]),
        .I2(Q[5]),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_4
       (.I0(t_memoria_reg_0_7_6_7_i_1_0[4]),
        .I1(\t_din_reg[7] [0]),
        .I2(Q[4]),
        .O(i__carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_1
       (.I0(t_memoria_reg_0_7_6_7_i_1_0[3]),
        .I1(\t_din_reg[7] [0]),
        .I2(Q[3]),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2
       (.I0(t_memoria_reg_0_7_6_7_i_1_0[2]),
        .I1(\t_din_reg[7] [0]),
        .I2(Q[2]),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_3
       (.I0(t_memoria_reg_0_7_6_7_i_1_0[1]),
        .I1(\t_din_reg[7] [0]),
        .I2(Q[1]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4
       (.I0(t_memoria_reg_0_7_6_7_i_1_0[0]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    t_memoria_reg_0_7_0_5_i_10
       (.I0(\_inferred__1/i__carry_n_6 ),
        .I1(Q[1]),
        .I2(t_memoria_reg_0_7_6_7_i_1_0[1]),
        .I3(t_memoria_reg_0_7_6_7_i_1_1),
        .I4(\t_din_reg[7]_1 ),
        .I5(t_memoria_reg_0_7_6_7_i_1_2),
        .O(t_memoria_reg_0_7_0_5_i_10_n_0));
  LUT5 #(
    .INIT(32'hECE0E020)) 
    t_memoria_reg_0_7_0_5_i_12
       (.I0(\_inferred__1/i__carry_n_7 ),
        .I1(t_memoria_reg_0_7_6_7_i_1_2),
        .I2(t_memoria_reg_0_7_6_7_i_1_1),
        .I3(Q[0]),
        .I4(t_memoria_reg_0_7_6_7_i_1_0[0]),
        .O(t_memoria_reg_0_7_0_5_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    t_memoria_reg_0_7_0_5_i_15
       (.I0(\_inferred__1/i__carry_n_4 ),
        .I1(Q[3]),
        .I2(t_memoria_reg_0_7_6_7_i_1_0[3]),
        .I3(t_memoria_reg_0_7_6_7_i_1_1),
        .I4(\t_din_reg[7]_1 ),
        .I5(t_memoria_reg_0_7_6_7_i_1_2),
        .O(t_memoria_reg_0_7_0_5_i_15_n_0));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    t_memoria_reg_0_7_0_5_i_17
       (.I0(\_inferred__1/i__carry_n_5 ),
        .I1(Q[2]),
        .I2(t_memoria_reg_0_7_6_7_i_1_0[2]),
        .I3(t_memoria_reg_0_7_6_7_i_1_1),
        .I4(\t_din_reg[7]_1 ),
        .I5(t_memoria_reg_0_7_6_7_i_1_2),
        .O(t_memoria_reg_0_7_0_5_i_17_n_0));
  LUT5 #(
    .INIT(32'h000000F8)) 
    t_memoria_reg_0_7_0_5_i_2
       (.I0(\t_din_reg[1]_0 ),
        .I1(\t_din_reg[1]_1 ),
        .I2(t_memoria_reg_0_7_0_5_i_10_n_0),
        .I3(\t_din_reg[7] [1]),
        .I4(\t_din_reg[7] [2]),
        .O(tx_data_write[1]));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    t_memoria_reg_0_7_0_5_i_20
       (.I0(\_inferred__1/i__carry__0_n_6 ),
        .I1(Q[5]),
        .I2(t_memoria_reg_0_7_6_7_i_1_0[5]),
        .I3(t_memoria_reg_0_7_6_7_i_1_1),
        .I4(\t_din_reg[7]_1 ),
        .I5(t_memoria_reg_0_7_6_7_i_1_2),
        .O(t_memoria_reg_0_7_0_5_i_20_n_0));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    t_memoria_reg_0_7_0_5_i_22
       (.I0(\_inferred__1/i__carry__0_n_7 ),
        .I1(Q[4]),
        .I2(t_memoria_reg_0_7_6_7_i_1_0[4]),
        .I3(t_memoria_reg_0_7_6_7_i_1_1),
        .I4(\t_din_reg[7]_1 ),
        .I5(t_memoria_reg_0_7_6_7_i_1_2),
        .O(t_memoria_reg_0_7_0_5_i_22_n_0));
  LUT5 #(
    .INIT(32'h000000AC)) 
    t_memoria_reg_0_7_0_5_i_3
       (.I0(\t_din_reg[1] ),
        .I1(t_memoria_reg_0_7_0_5_i_12_n_0),
        .I2(\t_din_reg[7]_1 ),
        .I3(\t_din_reg[7] [1]),
        .I4(\t_din_reg[7] [2]),
        .O(tx_data_write[0]));
  LUT5 #(
    .INIT(32'h000000F8)) 
    t_memoria_reg_0_7_0_5_i_4
       (.I0(\t_din_reg[1]_0 ),
        .I1(\t_din_reg[1]_3 ),
        .I2(t_memoria_reg_0_7_0_5_i_15_n_0),
        .I3(\t_din_reg[7] [1]),
        .I4(\t_din_reg[7] [2]),
        .O(tx_data_write[3]));
  LUT5 #(
    .INIT(32'h000000F8)) 
    t_memoria_reg_0_7_0_5_i_5
       (.I0(\t_din_reg[1]_0 ),
        .I1(\t_din_reg[1]_2 ),
        .I2(t_memoria_reg_0_7_0_5_i_17_n_0),
        .I3(\t_din_reg[7] [1]),
        .I4(\t_din_reg[7] [2]),
        .O(tx_data_write[2]));
  LUT6 #(
    .INIT(64'h000000000000FFA8)) 
    t_memoria_reg_0_7_0_5_i_6
       (.I0(\t_din_reg[1]_0 ),
        .I1(\t_din_reg[1]_5 ),
        .I2(\t_din_reg[1]_6 ),
        .I3(t_memoria_reg_0_7_0_5_i_20_n_0),
        .I4(\t_din_reg[7] [1]),
        .I5(\t_din_reg[7] [2]),
        .O(tx_data_write[5]));
  LUT5 #(
    .INIT(32'h000000F8)) 
    t_memoria_reg_0_7_0_5_i_7
       (.I0(\t_din_reg[1]_0 ),
        .I1(\t_din_reg[1]_4 ),
        .I2(t_memoria_reg_0_7_0_5_i_22_n_0),
        .I3(\t_din_reg[7] [1]),
        .I4(\t_din_reg[7] [2]),
        .O(tx_data_write[4]));
  LUT5 #(
    .INIT(32'h000000AC)) 
    t_memoria_reg_0_7_6_7_i_1
       (.I0(\t_din_reg[7]_0 ),
        .I1(t_memoria_reg_0_7_6_7_i_4_n_0),
        .I2(\t_din_reg[7]_1 ),
        .I3(\t_din_reg[7] [1]),
        .I4(\t_din_reg[7] [2]),
        .O(tx_data_write[7]));
  LUT6 #(
    .INIT(64'h000000000000FFA8)) 
    t_memoria_reg_0_7_6_7_i_2
       (.I0(\t_din_reg[1]_0 ),
        .I1(\t_din_reg[7]_2 ),
        .I2(\t_din_reg[7]_3 ),
        .I3(t_memoria_reg_0_7_6_7_i_7_n_0),
        .I4(\t_din_reg[7] [1]),
        .I5(\t_din_reg[7] [2]),
        .O(tx_data_write[6]));
  LUT5 #(
    .INIT(32'hECE0E020)) 
    t_memoria_reg_0_7_6_7_i_4
       (.I0(\_inferred__1/i__carry__0_n_4 ),
        .I1(t_memoria_reg_0_7_6_7_i_1_2),
        .I2(t_memoria_reg_0_7_6_7_i_1_1),
        .I3(Q[7]),
        .I4(t_memoria_reg_0_7_6_7_i_1_0[7]),
        .O(t_memoria_reg_0_7_6_7_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000FCC0033CAA00)) 
    t_memoria_reg_0_7_6_7_i_7
       (.I0(\_inferred__1/i__carry__0_n_5 ),
        .I1(Q[6]),
        .I2(t_memoria_reg_0_7_6_7_i_1_0[6]),
        .I3(t_memoria_reg_0_7_6_7_i_1_1),
        .I4(\t_din_reg[7]_1 ),
        .I5(t_memoria_reg_0_7_6_7_i_1_2),
        .O(t_memoria_reg_0_7_6_7_i_7_n_0));
endmodule

module FIFO
   (rx_data_read,
    D,
    tx_full,
    rx_empty,
    r_full_reg_0,
    t_empty,
    t_full_reg_0,
    r_empty_reg_0,
    CLK,
    r_write_enable,
    Q,
    t_write_enable,
    tx_data_write,
    SR,
    \state_reg[0] ,
    tx_write,
    tx_read,
    rx_read,
    rx_write);
  output [7:0]rx_data_read;
  output [7:0]D;
  output tx_full;
  output rx_empty;
  output r_full_reg_0;
  output t_empty;
  output [0:0]t_full_reg_0;
  output [7:0]r_empty_reg_0;
  input CLK;
  input r_write_enable;
  input [7:0]Q;
  input t_write_enable;
  input [7:0]tx_data_write;
  input [0:0]SR;
  input [1:0]\state_reg[0] ;
  input tx_write;
  input tx_read;
  input rx_read;
  input rx_write;

  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;
  wire [0:0]SR;
  wire r_empty_i_1_n_0;
  wire r_empty_i_2_n_0;
  wire [7:0]r_empty_reg_0;
  wire r_full_i_1_n_0;
  wire r_full_i_2_n_0;
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
  wire [7:0]rx_data_read;
  wire rx_empty;
  wire rx_read;
  wire rx_write;
  wire [1:0]\state_reg[0] ;
  wire t_empty;
  wire t_empty_i_1_n_0;
  wire t_empty_i_2_n_0;
  wire t_full_i_1_n_0;
  wire t_full_i_2_n_0;
  wire [0:0]t_full_reg_0;
  wire [2:0]t_read_ptr;
  wire \t_read_ptr[0]_i_1_n_0 ;
  wire \t_read_ptr[1]_i_1_n_0 ;
  wire \t_read_ptr[2]_i_1_n_0 ;
  wire t_write_enable;
  wire [2:0]t_write_ptr;
  wire \t_write_ptr[0]_i_1_n_0 ;
  wire \t_write_ptr[1]_i_1_n_0 ;
  wire \t_write_ptr[2]_i_1_n_0 ;
  wire [7:0]tx_data_write;
  wire tx_full;
  wire tx_read;
  wire tx_write;
  wire [1:0]NLW_r_memoria_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_r_memoria_reg_0_7_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_r_memoria_reg_0_7_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_r_memoria_reg_0_7_6_7_DOD_UNCONNECTED;
  wire [1:0]NLW_t_memoria_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_t_memoria_reg_0_7_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_t_memoria_reg_0_7_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_t_memoria_reg_0_7_6_7_DOD_UNCONNECTED;

  LUT5 #(
    .INIT(32'hE0FCE0F0)) 
    r_empty_i_1
       (.I0(r_full_reg_0),
        .I1(rx_read),
        .I2(rx_empty),
        .I3(rx_write),
        .I4(r_empty_i_2_n_0),
        .O(r_empty_i_1_n_0));
  LUT6 #(
    .INIT(64'h0120804010020804)) 
    r_empty_i_2
       (.I0(r_write_ptr[1]),
        .I1(r_write_ptr[0]),
        .I2(r_read_ptr[2]),
        .I3(r_read_ptr[1]),
        .I4(r_read_ptr[0]),
        .I5(r_write_ptr[2]),
        .O(r_empty_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    r_empty_reg
       (.C(CLK),
        .CE(1'b1),
        .D(r_empty_i_1_n_0),
        .Q(rx_empty),
        .S(SR));
  LUT5 #(
    .INIT(32'hC8FCC8CC)) 
    r_full_i_1
       (.I0(rx_empty),
        .I1(r_full_reg_0),
        .I2(rx_write),
        .I3(rx_read),
        .I4(r_full_i_2_n_0),
        .O(r_full_i_1_n_0));
  LUT6 #(
    .INIT(64'h0120804010020804)) 
    r_full_i_2
       (.I0(r_read_ptr[1]),
        .I1(r_read_ptr[0]),
        .I2(r_write_ptr[2]),
        .I3(r_write_ptr[1]),
        .I4(r_write_ptr[0]),
        .I5(r_read_ptr[2]),
        .O(r_full_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_full_reg
       (.C(CLK),
        .CE(1'b1),
        .D(r_full_i_1_n_0),
        .Q(r_full_reg_0),
        .R(SR));
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
        .WCLK(CLK),
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
  RAM32M_HD1 r_memoria_reg_0_7_6_7
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
        .WCLK(CLK),
        .WE(r_write_enable));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2FD0)) 
    \r_read_ptr[0]_i_1 
       (.I0(rx_empty),
        .I1(rx_write),
        .I2(rx_read),
        .I3(r_read_ptr[0]),
        .O(\r_read_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F778088)) 
    \r_read_ptr[1]_i_1 
       (.I0(r_read_ptr[0]),
        .I1(rx_read),
        .I2(rx_write),
        .I3(rx_empty),
        .I4(r_read_ptr[1]),
        .O(\r_read_ptr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7F7F80008080)) 
    \r_read_ptr[2]_i_1 
       (.I0(r_read_ptr[1]),
        .I1(r_read_ptr[0]),
        .I2(rx_read),
        .I3(rx_write),
        .I4(rx_empty),
        .I5(r_read_ptr[2]),
        .O(\r_read_ptr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_read_ptr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\r_read_ptr[0]_i_1_n_0 ),
        .Q(r_read_ptr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_read_ptr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\r_read_ptr[1]_i_1_n_0 ),
        .Q(r_read_ptr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_read_ptr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\r_read_ptr[2]_i_1_n_0 ),
        .Q(r_read_ptr[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2FD0)) 
    \r_write_ptr[0]_i_1 
       (.I0(r_full_reg_0),
        .I1(rx_read),
        .I2(rx_write),
        .I3(r_write_ptr[0]),
        .O(\r_write_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F778088)) 
    \r_write_ptr[1]_i_1 
       (.I0(r_write_ptr[0]),
        .I1(rx_write),
        .I2(rx_read),
        .I3(r_full_reg_0),
        .I4(r_write_ptr[1]),
        .O(\r_write_ptr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7F7F80008080)) 
    \r_write_ptr[2]_i_1 
       (.I0(r_write_ptr[1]),
        .I1(r_write_ptr[0]),
        .I2(rx_write),
        .I3(rx_read),
        .I4(r_full_reg_0),
        .I5(r_write_ptr[2]),
        .O(\r_write_ptr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_write_ptr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\r_write_ptr[0]_i_1_n_0 ),
        .Q(r_write_ptr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_write_ptr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\r_write_ptr[1]_i_1_n_0 ),
        .Q(r_write_ptr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_write_ptr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\r_write_ptr[2]_i_1_n_0 ),
        .Q(r_write_ptr[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ra[0]_i_1 
       (.I0(rx_data_read[0]),
        .I1(rx_empty),
        .O(r_empty_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ra[1]_i_1 
       (.I0(rx_data_read[1]),
        .I1(rx_empty),
        .O(r_empty_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ra[2]_i_1 
       (.I0(rx_data_read[2]),
        .I1(rx_empty),
        .O(r_empty_reg_0[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \ra[3]_i_1 
       (.I0(rx_data_read[3]),
        .I1(rx_empty),
        .O(r_empty_reg_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ra[4]_i_1 
       (.I0(rx_data_read[4]),
        .I1(rx_empty),
        .O(r_empty_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ra[5]_i_1 
       (.I0(rx_data_read[5]),
        .I1(rx_empty),
        .O(r_empty_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ra[6]_i_1 
       (.I0(rx_data_read[6]),
        .I1(rx_empty),
        .O(r_empty_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ra[7]_i_2 
       (.I0(rx_data_read[7]),
        .I1(rx_empty),
        .O(r_empty_reg_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \state[0]_i_1 
       (.I0(tx_full),
        .I1(\state_reg[0] [1]),
        .I2(\state_reg[0] [0]),
        .I3(rx_empty),
        .O(t_full_reg_0));
  LUT5 #(
    .INIT(32'hE0FCE0F0)) 
    t_empty_i_1
       (.I0(tx_full),
        .I1(tx_read),
        .I2(t_empty),
        .I3(tx_write),
        .I4(t_empty_i_2_n_0),
        .O(t_empty_i_1_n_0));
  LUT6 #(
    .INIT(64'h0120804010020804)) 
    t_empty_i_2
       (.I0(t_write_ptr[1]),
        .I1(t_write_ptr[0]),
        .I2(t_read_ptr[2]),
        .I3(t_read_ptr[1]),
        .I4(t_read_ptr[0]),
        .I5(t_write_ptr[2]),
        .O(t_empty_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    t_empty_reg
       (.C(CLK),
        .CE(1'b1),
        .D(t_empty_i_1_n_0),
        .Q(t_empty),
        .S(SR));
  LUT5 #(
    .INIT(32'hC8FCC8CC)) 
    t_full_i_1
       (.I0(t_empty),
        .I1(tx_full),
        .I2(tx_write),
        .I3(tx_read),
        .I4(t_full_i_2_n_0),
        .O(t_full_i_1_n_0));
  LUT6 #(
    .INIT(64'h0120804010020804)) 
    t_full_i_2
       (.I0(t_read_ptr[1]),
        .I1(t_read_ptr[0]),
        .I2(t_write_ptr[2]),
        .I3(t_write_ptr[1]),
        .I4(t_write_ptr[0]),
        .I5(t_read_ptr[2]),
        .O(t_full_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    t_full_reg
       (.C(CLK),
        .CE(1'b1),
        .D(t_full_i_1_n_0),
        .Q(tx_full),
        .R(SR));
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
  RAM32M_HD2 t_memoria_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,t_read_ptr}),
        .ADDRB({1'b0,1'b0,t_read_ptr}),
        .ADDRC({1'b0,1'b0,t_read_ptr}),
        .ADDRD({1'b0,1'b0,t_write_ptr}),
        .DIA(tx_data_write[1:0]),
        .DIB(tx_data_write[3:2]),
        .DIC(tx_data_write[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(D[1:0]),
        .DOB(D[3:2]),
        .DOC(D[5:4]),
        .DOD(NLW_t_memoria_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
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
  RAM32M_HD3 t_memoria_reg_0_7_6_7
       (.ADDRA({1'b0,1'b0,t_read_ptr}),
        .ADDRB({1'b0,1'b0,t_read_ptr}),
        .ADDRC({1'b0,1'b0,t_read_ptr}),
        .ADDRD({1'b0,1'b0,t_write_ptr}),
        .DIA(tx_data_write[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(D[7:6]),
        .DOB(NLW_t_memoria_reg_0_7_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_t_memoria_reg_0_7_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_t_memoria_reg_0_7_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(t_write_enable));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2FD0)) 
    \t_read_ptr[0]_i_1 
       (.I0(t_empty),
        .I1(tx_write),
        .I2(tx_read),
        .I3(t_read_ptr[0]),
        .O(\t_read_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7F778088)) 
    \t_read_ptr[1]_i_1 
       (.I0(t_read_ptr[0]),
        .I1(tx_read),
        .I2(tx_write),
        .I3(t_empty),
        .I4(t_read_ptr[1]),
        .O(\t_read_ptr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7F7F80008080)) 
    \t_read_ptr[2]_i_1 
       (.I0(t_read_ptr[1]),
        .I1(t_read_ptr[0]),
        .I2(tx_read),
        .I3(tx_write),
        .I4(t_empty),
        .I5(t_read_ptr[2]),
        .O(\t_read_ptr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_read_ptr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\t_read_ptr[0]_i_1_n_0 ),
        .Q(t_read_ptr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_read_ptr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\t_read_ptr[1]_i_1_n_0 ),
        .Q(t_read_ptr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_read_ptr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\t_read_ptr[2]_i_1_n_0 ),
        .Q(t_read_ptr[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2FD0)) 
    \t_write_ptr[0]_i_1 
       (.I0(tx_full),
        .I1(tx_read),
        .I2(tx_write),
        .I3(t_write_ptr[0]),
        .O(\t_write_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7F778088)) 
    \t_write_ptr[1]_i_1 
       (.I0(t_write_ptr[0]),
        .I1(tx_write),
        .I2(tx_read),
        .I3(tx_full),
        .I4(t_write_ptr[1]),
        .O(\t_write_ptr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7F7F80008080)) 
    \t_write_ptr[2]_i_1 
       (.I0(t_write_ptr[1]),
        .I1(t_write_ptr[0]),
        .I2(tx_write),
        .I3(tx_read),
        .I4(tx_full),
        .I5(t_write_ptr[2]),
        .O(\t_write_ptr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_write_ptr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\t_write_ptr[0]_i_1_n_0 ),
        .Q(t_write_ptr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_write_ptr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\t_write_ptr[1]_i_1_n_0 ),
        .Q(t_write_ptr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_write_ptr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\t_write_ptr[2]_i_1_n_0 ),
        .Q(t_write_ptr[2]),
        .R(SR));
endmodule

module Interfaz
   (tx_write,
    rx_read,
    Q,
    t_write_enable,
    tx_data_write,
    SR,
    CLK,
    rx_data_read,
    tx_full,
    rx_empty,
    D,
    \ra_reg[7]_0 );
  output tx_write;
  output rx_read;
  output [1:0]Q;
  output t_write_enable;
  output [7:0]tx_data_write;
  input [0:0]SR;
  input CLK;
  input [7:0]rx_data_read;
  input tx_full;
  input rx_empty;
  input [0:0]D;
  input [7:0]\ra_reg[7]_0 ;

  wire \0 ;
  wire CLK;
  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [4:2]data5;
  wire [2:0]i;
  wire \i[0]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire i_next;
  wire [4:1]next_state;
  wire [7:0]ra;
  wire \ra[7]_i_1_n_0 ;
  wire [7:0]\ra_reg[7]_0 ;
  wire [7:0]rb;
  wire rb_next;
  wire [7:0]rb_next0_in;
  wire read_i_1_n_0;
  wire read_next;
  wire rop_next;
  wire [7:0]rop_next0_in;
  wire \rop_reg_n_0_[0] ;
  wire \rop_reg_n_0_[2] ;
  wire \rop_reg_n_0_[3] ;
  wire \rop_reg_n_0_[4] ;
  wire \rop_reg_n_0_[5] ;
  wire \rop_reg_n_0_[6] ;
  wire \rop_reg_n_0_[7] ;
  wire [7:0]rx_data_read;
  wire rx_empty;
  wire rx_read;
  wire [4:1]state;
  wire \state[4]_i_1_n_0 ;
  wire t_memoria_reg_0_7_0_5_i_11_n_0;
  wire t_memoria_reg_0_7_0_5_i_13_n_0;
  wire t_memoria_reg_0_7_0_5_i_14_n_0;
  wire t_memoria_reg_0_7_0_5_i_16_n_0;
  wire t_memoria_reg_0_7_0_5_i_18_n_0;
  wire t_memoria_reg_0_7_0_5_i_19_n_0;
  wire t_memoria_reg_0_7_0_5_i_21_n_0;
  wire t_memoria_reg_0_7_0_5_i_23_n_0;
  wire t_memoria_reg_0_7_0_5_i_24_n_0;
  wire t_memoria_reg_0_7_0_5_i_25_n_0;
  wire t_memoria_reg_0_7_0_5_i_26_n_0;
  wire t_memoria_reg_0_7_0_5_i_27_n_0;
  wire t_memoria_reg_0_7_0_5_i_28_n_0;
  wire t_memoria_reg_0_7_0_5_i_29_n_0;
  wire t_memoria_reg_0_7_0_5_i_30_n_0;
  wire t_memoria_reg_0_7_0_5_i_31_n_0;
  wire t_memoria_reg_0_7_0_5_i_32_n_0;
  wire t_memoria_reg_0_7_0_5_i_35_n_0;
  wire t_memoria_reg_0_7_0_5_i_36_n_0;
  wire t_memoria_reg_0_7_0_5_i_37_n_0;
  wire t_memoria_reg_0_7_0_5_i_38_n_0;
  wire t_memoria_reg_0_7_0_5_i_39_n_0;
  wire t_memoria_reg_0_7_0_5_i_41_n_0;
  wire t_memoria_reg_0_7_0_5_i_42_n_0;
  wire t_memoria_reg_0_7_0_5_i_43_n_0;
  wire t_memoria_reg_0_7_0_5_i_44_n_0;
  wire t_memoria_reg_0_7_0_5_i_45_n_0;
  wire t_memoria_reg_0_7_0_5_i_8_n_0;
  wire t_memoria_reg_0_7_0_5_i_9_n_0;
  wire t_memoria_reg_0_7_6_7_i_3_n_0;
  wire t_memoria_reg_0_7_6_7_i_5_n_0;
  wire t_memoria_reg_0_7_6_7_i_6_n_0;
  wire t_memoria_reg_0_7_6_7_i_8_n_0;
  wire t_memoria_reg_0_7_6_7_i_9_n_0;
  wire t_write_enable;
  wire [7:0]tx_data_write;
  wire tx_full;
  wire tx_write;
  wire write_i_1_n_0;
  wire write_i_2_n_0;

  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    \i[0]_i_1 
       (.I0(Q[0]),
        .I1(state[2]),
        .I2(rx_empty),
        .I3(i_next),
        .I4(i[0]),
        .O(\i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    \i[1]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(rx_empty),
        .I3(i_next),
        .I4(i[1]),
        .O(\i[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \i[2]_i_1 
       (.I0(rx_empty),
        .I1(state[2]),
        .I2(i_next),
        .I3(i[2]),
        .O(\i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000016)) 
    \i[2]_i_2 
       (.I0(Q[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[4]),
        .I4(rx_empty),
        .I5(Q[1]),
        .O(i_next));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i[0]_i_1_n_0 ),
        .Q(i[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i[1]_i_1_n_0 ),
        .Q(i[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i[2]_i_1_n_0 ),
        .Q(i[2]),
        .R(SR));
  ALU my_alu
       (.Q(ra),
        .\t_din_reg[1] (t_memoria_reg_0_7_0_5_i_11_n_0),
        .\t_din_reg[1]_0 (t_memoria_reg_0_7_0_5_i_8_n_0),
        .\t_din_reg[1]_1 (t_memoria_reg_0_7_0_5_i_9_n_0),
        .\t_din_reg[1]_2 (t_memoria_reg_0_7_0_5_i_16_n_0),
        .\t_din_reg[1]_3 (t_memoria_reg_0_7_0_5_i_14_n_0),
        .\t_din_reg[1]_4 (t_memoria_reg_0_7_0_5_i_21_n_0),
        .\t_din_reg[1]_5 (t_memoria_reg_0_7_0_5_i_18_n_0),
        .\t_din_reg[1]_6 (t_memoria_reg_0_7_0_5_i_19_n_0),
        .\t_din_reg[7] ({\rop_reg_n_0_[7] ,\rop_reg_n_0_[6] ,\0 }),
        .\t_din_reg[7]_0 (t_memoria_reg_0_7_6_7_i_3_n_0),
        .\t_din_reg[7]_1 (t_memoria_reg_0_7_0_5_i_13_n_0),
        .\t_din_reg[7]_2 (t_memoria_reg_0_7_6_7_i_5_n_0),
        .\t_din_reg[7]_3 (t_memoria_reg_0_7_6_7_i_6_n_0),
        .t_memoria_reg_0_7_6_7_i_1_0(rb),
        .t_memoria_reg_0_7_6_7_i_1_1(t_memoria_reg_0_7_0_5_i_24_n_0),
        .t_memoria_reg_0_7_6_7_i_1_2(t_memoria_reg_0_7_0_5_i_28_n_0),
        .tx_data_write(tx_data_write));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ra[7]_i_1 
       (.I0(Q[1]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[4]),
        .I4(Q[0]),
        .O(\ra[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ra_reg[0] 
       (.C(CLK),
        .CE(\ra[7]_i_1_n_0 ),
        .D(\ra_reg[7]_0 [0]),
        .Q(ra[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ra_reg[1] 
       (.C(CLK),
        .CE(\ra[7]_i_1_n_0 ),
        .D(\ra_reg[7]_0 [1]),
        .Q(ra[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ra_reg[2] 
       (.C(CLK),
        .CE(\ra[7]_i_1_n_0 ),
        .D(\ra_reg[7]_0 [2]),
        .Q(ra[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ra_reg[3] 
       (.C(CLK),
        .CE(\ra[7]_i_1_n_0 ),
        .D(\ra_reg[7]_0 [3]),
        .Q(ra[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ra_reg[4] 
       (.C(CLK),
        .CE(\ra[7]_i_1_n_0 ),
        .D(\ra_reg[7]_0 [4]),
        .Q(ra[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ra_reg[5] 
       (.C(CLK),
        .CE(\ra[7]_i_1_n_0 ),
        .D(\ra_reg[7]_0 [5]),
        .Q(ra[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ra_reg[6] 
       (.C(CLK),
        .CE(\ra[7]_i_1_n_0 ),
        .D(\ra_reg[7]_0 [6]),
        .Q(ra[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ra_reg[7] 
       (.C(CLK),
        .CE(\ra[7]_i_1_n_0 ),
        .D(\ra_reg[7]_0 [7]),
        .Q(ra[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rb[0]_i_1 
       (.I0(state[1]),
        .I1(rx_data_read[0]),
        .O(rb_next0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rb[1]_i_1 
       (.I0(state[1]),
        .I1(rx_data_read[1]),
        .O(rb_next0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rb[2]_i_1 
       (.I0(state[1]),
        .I1(rx_data_read[2]),
        .O(rb_next0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rb[3]_i_1 
       (.I0(state[1]),
        .I1(rx_data_read[3]),
        .O(rb_next0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rb[4]_i_1 
       (.I0(state[1]),
        .I1(rx_data_read[4]),
        .O(rb_next0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rb[5]_i_1 
       (.I0(state[1]),
        .I1(rx_data_read[5]),
        .O(rb_next0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rb[6]_i_1 
       (.I0(state[1]),
        .I1(rx_data_read[6]),
        .O(rb_next0_in[6]));
  LUT6 #(
    .INIT(64'h0001000100000100)) 
    \rb[7]_i_1 
       (.I0(state[2]),
        .I1(state[4]),
        .I2(Q[1]),
        .I3(state[1]),
        .I4(rx_empty),
        .I5(Q[0]),
        .O(rb_next));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rb[7]_i_2 
       (.I0(state[1]),
        .I1(rx_data_read[7]),
        .O(rb_next0_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \rb_reg[0] 
       (.C(CLK),
        .CE(rb_next),
        .D(rb_next0_in[0]),
        .Q(rb[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rb_reg[1] 
       (.C(CLK),
        .CE(rb_next),
        .D(rb_next0_in[1]),
        .Q(rb[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rb_reg[2] 
       (.C(CLK),
        .CE(rb_next),
        .D(rb_next0_in[2]),
        .Q(rb[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rb_reg[3] 
       (.C(CLK),
        .CE(rb_next),
        .D(rb_next0_in[3]),
        .Q(rb[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rb_reg[4] 
       (.C(CLK),
        .CE(rb_next),
        .D(rb_next0_in[4]),
        .Q(rb[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rb_reg[5] 
       (.C(CLK),
        .CE(rb_next),
        .D(rb_next0_in[5]),
        .Q(rb[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rb_reg[6] 
       (.C(CLK),
        .CE(rb_next),
        .D(rb_next0_in[6]),
        .Q(rb[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rb_reg[7] 
       (.C(CLK),
        .CE(rb_next),
        .D(rb_next0_in[7]),
        .Q(rb[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h1DFF1D00)) 
    read_i_1
       (.I0(state[4]),
        .I1(Q[0]),
        .I2(rx_empty),
        .I3(read_next),
        .I4(rx_read),
        .O(read_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000003011C)) 
    read_i_2
       (.I0(rx_empty),
        .I1(state[4]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(read_next));
  FDRE #(
    .INIT(1'b0)) 
    read_reg
       (.C(CLK),
        .CE(1'b1),
        .D(read_i_1_n_0),
        .Q(rx_read),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rop[0]_i_1 
       (.I0(state[2]),
        .I1(rx_data_read[0]),
        .O(rop_next0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rop[1]_i_1 
       (.I0(state[2]),
        .I1(rx_data_read[1]),
        .O(rop_next0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rop[2]_i_1 
       (.I0(state[2]),
        .I1(rx_data_read[2]),
        .O(rop_next0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rop[3]_i_1 
       (.I0(state[2]),
        .I1(rx_data_read[3]),
        .O(rop_next0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rop[4]_i_1 
       (.I0(state[2]),
        .I1(rx_data_read[4]),
        .O(rop_next0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rop[5]_i_1 
       (.I0(state[2]),
        .I1(rx_data_read[5]),
        .O(rop_next0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rop[6]_i_1 
       (.I0(state[2]),
        .I1(rx_data_read[6]),
        .O(rop_next0_in[6]));
  LUT6 #(
    .INIT(64'h0001000100000100)) 
    \rop[7]_i_1 
       (.I0(state[1]),
        .I1(state[4]),
        .I2(Q[1]),
        .I3(state[2]),
        .I4(rx_empty),
        .I5(Q[0]),
        .O(rop_next));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rop[7]_i_2 
       (.I0(state[2]),
        .I1(rx_data_read[7]),
        .O(rop_next0_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \rop_reg[0] 
       (.C(CLK),
        .CE(rop_next),
        .D(rop_next0_in[0]),
        .Q(\rop_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rop_reg[1] 
       (.C(CLK),
        .CE(rop_next),
        .D(rop_next0_in[1]),
        .Q(\0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rop_reg[2] 
       (.C(CLK),
        .CE(rop_next),
        .D(rop_next0_in[2]),
        .Q(\rop_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rop_reg[3] 
       (.C(CLK),
        .CE(rop_next),
        .D(rop_next0_in[3]),
        .Q(\rop_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rop_reg[4] 
       (.C(CLK),
        .CE(rop_next),
        .D(rop_next0_in[4]),
        .Q(\rop_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rop_reg[5] 
       (.C(CLK),
        .CE(rop_next),
        .D(rop_next0_in[5]),
        .Q(\rop_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rop_reg[6] 
       (.C(CLK),
        .CE(rop_next),
        .D(rop_next0_in[6]),
        .Q(\rop_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rop_reg[7] 
       (.C(CLK),
        .CE(rop_next),
        .D(rop_next0_in[7]),
        .Q(\rop_reg_n_0_[7] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFF040004000400)) 
    \state[1]_i_1 
       (.I0(i[2]),
        .I1(i[0]),
        .I2(i[1]),
        .I3(state[4]),
        .I4(state[1]),
        .I5(rx_empty),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'hFFFF040004000400)) 
    \state[2]_i_1 
       (.I0(i[2]),
        .I1(i[1]),
        .I2(i[0]),
        .I3(state[4]),
        .I4(state[2]),
        .I5(rx_empty),
        .O(next_state[2]));
  LUT6 #(
    .INIT(64'hFFFFF88F88888888)) 
    \state[3]_i_1 
       (.I0(Q[1]),
        .I1(tx_full),
        .I2(i[0]),
        .I3(i[1]),
        .I4(i[2]),
        .I5(state[4]),
        .O(next_state[3]));
  LUT5 #(
    .INIT(32'h00010116)) 
    \state[4]_i_1 
       (.I0(Q[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[4]),
        .I4(Q[1]),
        .O(\state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \state[4]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(Q[0]),
        .I3(rx_empty),
        .O(next_state[4]));
  (* FSM_ENCODED_STATES = "ESPERA:10000,DATO_OP:00100,DATO_B:00010,RESULTADO:01000,DATO_A:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(\state[4]_i_1_n_0 ),
        .D(D),
        .Q(Q[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "ESPERA:10000,DATO_OP:00100,DATO_B:00010,RESULTADO:01000,DATO_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(\state[4]_i_1_n_0 ),
        .D(next_state[1]),
        .Q(state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "ESPERA:10000,DATO_OP:00100,DATO_B:00010,RESULTADO:01000,DATO_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(\state[4]_i_1_n_0 ),
        .D(next_state[2]),
        .Q(state[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "ESPERA:10000,DATO_OP:00100,DATO_B:00010,RESULTADO:01000,DATO_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(CLK),
        .CE(\state[4]_i_1_n_0 ),
        .D(next_state[3]),
        .Q(Q[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "ESPERA:10000,DATO_OP:00100,DATO_B:00010,RESULTADO:01000,DATO_A:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(CLK),
        .CE(\state[4]_i_1_n_0 ),
        .D(next_state[4]),
        .Q(state[4]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    t_memoria_reg_0_7_0_5_i_1
       (.I0(tx_write),
        .I1(tx_full),
        .O(t_write_enable));
  LUT6 #(
    .INIT(64'hFFFF161655001616)) 
    t_memoria_reg_0_7_0_5_i_11
       (.I0(t_memoria_reg_0_7_0_5_i_24_n_0),
        .I1(rb[0]),
        .I2(ra[0]),
        .I3(t_memoria_reg_0_7_0_5_i_29_n_0),
        .I4(t_memoria_reg_0_7_0_5_i_28_n_0),
        .I5(t_memoria_reg_0_7_0_5_i_30_n_0),
        .O(t_memoria_reg_0_7_0_5_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h10000010)) 
    t_memoria_reg_0_7_0_5_i_13
       (.I0(\rop_reg_n_0_[4] ),
        .I1(\rop_reg_n_0_[3] ),
        .I2(\0 ),
        .I3(\rop_reg_n_0_[2] ),
        .I4(\rop_reg_n_0_[5] ),
        .O(t_memoria_reg_0_7_0_5_i_13_n_0));
  LUT6 #(
    .INIT(64'hC840FFFFC8400000)) 
    t_memoria_reg_0_7_0_5_i_14
       (.I0(rb[0]),
        .I1(t_memoria_reg_0_7_0_5_i_26_n_0),
        .I2(t_memoria_reg_0_7_0_5_i_31_n_0),
        .I3(t_memoria_reg_0_7_0_5_i_32_n_0),
        .I4(t_memoria_reg_0_7_0_5_i_24_n_0),
        .I5(data5[3]),
        .O(t_memoria_reg_0_7_0_5_i_14_n_0));
  LUT6 #(
    .INIT(64'hC840FFFFC8400000)) 
    t_memoria_reg_0_7_0_5_i_16
       (.I0(rb[0]),
        .I1(t_memoria_reg_0_7_0_5_i_26_n_0),
        .I2(t_memoria_reg_0_7_0_5_i_23_n_0),
        .I3(t_memoria_reg_0_7_0_5_i_31_n_0),
        .I4(t_memoria_reg_0_7_0_5_i_24_n_0),
        .I5(data5[2]),
        .O(t_memoria_reg_0_7_0_5_i_16_n_0));
  LUT6 #(
    .INIT(64'h00000000F7B3C480)) 
    t_memoria_reg_0_7_0_5_i_18
       (.I0(rb[0]),
        .I1(t_memoria_reg_0_7_0_5_i_26_n_0),
        .I2(t_memoria_reg_0_7_0_5_i_35_n_0),
        .I3(t_memoria_reg_0_7_0_5_i_36_n_0),
        .I4(ra[7]),
        .I5(t_memoria_reg_0_7_0_5_i_24_n_0),
        .O(t_memoria_reg_0_7_0_5_i_18_n_0));
  LUT6 #(
    .INIT(64'hFFFF020002000200)) 
    t_memoria_reg_0_7_0_5_i_19
       (.I0(t_memoria_reg_0_7_0_5_i_37_n_0),
        .I1(rb[2]),
        .I2(rb[1]),
        .I3(ra[6]),
        .I4(t_memoria_reg_0_7_0_5_i_38_n_0),
        .I5(t_memoria_reg_0_7_0_5_i_39_n_0),
        .O(t_memoria_reg_0_7_0_5_i_19_n_0));
  LUT6 #(
    .INIT(64'hC840FFFFC8400000)) 
    t_memoria_reg_0_7_0_5_i_21
       (.I0(rb[0]),
        .I1(t_memoria_reg_0_7_0_5_i_26_n_0),
        .I2(t_memoria_reg_0_7_0_5_i_32_n_0),
        .I3(t_memoria_reg_0_7_0_5_i_38_n_0),
        .I4(t_memoria_reg_0_7_0_5_i_24_n_0),
        .I5(data5[4]),
        .O(t_memoria_reg_0_7_0_5_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    t_memoria_reg_0_7_0_5_i_23
       (.I0(ra[6]),
        .I1(ra[2]),
        .I2(ra[4]),
        .I3(rb[1]),
        .I4(rb[2]),
        .O(t_memoria_reg_0_7_0_5_i_23_n_0));
  LUT6 #(
    .INIT(64'h000A00000000000E)) 
    t_memoria_reg_0_7_0_5_i_24
       (.I0(\rop_reg_n_0_[5] ),
        .I1(\0 ),
        .I2(\rop_reg_n_0_[4] ),
        .I3(\rop_reg_n_0_[3] ),
        .I4(\rop_reg_n_0_[0] ),
        .I5(\rop_reg_n_0_[2] ),
        .O(t_memoria_reg_0_7_0_5_i_24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    t_memoria_reg_0_7_0_5_i_25
       (.I0(t_memoria_reg_0_7_0_5_i_41_n_0),
        .I1(rb[0]),
        .I2(t_memoria_reg_0_7_0_5_i_26_n_0),
        .I3(ra[7]),
        .O(t_memoria_reg_0_7_0_5_i_25_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    t_memoria_reg_0_7_0_5_i_26
       (.I0(rb[3]),
        .I1(rb[4]),
        .I2(rb[5]),
        .I3(rb[7]),
        .I4(rb[6]),
        .O(t_memoria_reg_0_7_0_5_i_26_n_0));
  LUT6 #(
    .INIT(64'hFAFA0A0AFC0CFC0C)) 
    t_memoria_reg_0_7_0_5_i_27
       (.I0(ra[5]),
        .I1(ra[1]),
        .I2(rb[1]),
        .I3(ra[3]),
        .I4(ra[7]),
        .I5(rb[2]),
        .O(t_memoria_reg_0_7_0_5_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00011000)) 
    t_memoria_reg_0_7_0_5_i_28
       (.I0(\rop_reg_n_0_[3] ),
        .I1(\rop_reg_n_0_[4] ),
        .I2(\rop_reg_n_0_[5] ),
        .I3(\rop_reg_n_0_[2] ),
        .I4(\0 ),
        .O(t_memoria_reg_0_7_0_5_i_28_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    t_memoria_reg_0_7_0_5_i_29
       (.I0(ra[7]),
        .I1(rb[6]),
        .I2(rb[7]),
        .I3(rb[5]),
        .I4(rb[4]),
        .I5(rb[3]),
        .O(t_memoria_reg_0_7_0_5_i_29_n_0));
  LUT4 #(
    .INIT(16'hE200)) 
    t_memoria_reg_0_7_0_5_i_30
       (.I0(t_memoria_reg_0_7_0_5_i_42_n_0),
        .I1(rb[0]),
        .I2(t_memoria_reg_0_7_0_5_i_27_n_0),
        .I3(t_memoria_reg_0_7_0_5_i_26_n_0),
        .O(t_memoria_reg_0_7_0_5_i_30_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    t_memoria_reg_0_7_0_5_i_31
       (.I0(ra[3]),
        .I1(ra[7]),
        .I2(ra[5]),
        .I3(rb[1]),
        .I4(rb[2]),
        .O(t_memoria_reg_0_7_0_5_i_31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    t_memoria_reg_0_7_0_5_i_32
       (.I0(ra[4]),
        .I1(ra[6]),
        .I2(rb[1]),
        .I3(rb[2]),
        .O(t_memoria_reg_0_7_0_5_i_32_n_0));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    t_memoria_reg_0_7_0_5_i_33
       (.I0(ra[7]),
        .I1(t_memoria_reg_0_7_0_5_i_43_n_0),
        .I2(t_memoria_reg_0_7_0_5_i_44_n_0),
        .I3(t_memoria_reg_0_7_0_5_i_26_n_0),
        .I4(rb[0]),
        .O(data5[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    t_memoria_reg_0_7_0_5_i_34
       (.I0(ra[7]),
        .I1(t_memoria_reg_0_7_0_5_i_41_n_0),
        .I2(t_memoria_reg_0_7_0_5_i_43_n_0),
        .I3(t_memoria_reg_0_7_0_5_i_26_n_0),
        .I4(rb[0]),
        .O(data5[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF0E4)) 
    t_memoria_reg_0_7_0_5_i_35
       (.I0(rb[1]),
        .I1(ra[6]),
        .I2(ra[7]),
        .I3(rb[2]),
        .O(t_memoria_reg_0_7_0_5_i_35_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF0E4)) 
    t_memoria_reg_0_7_0_5_i_36
       (.I0(rb[1]),
        .I1(ra[5]),
        .I2(ra[7]),
        .I3(rb[2]),
        .O(t_memoria_reg_0_7_0_5_i_36_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    t_memoria_reg_0_7_0_5_i_37
       (.I0(t_memoria_reg_0_7_0_5_i_45_n_0),
        .I1(t_memoria_reg_0_7_0_5_i_24_n_0),
        .O(t_memoria_reg_0_7_0_5_i_37_n_0));
  LUT4 #(
    .INIT(16'h00CA)) 
    t_memoria_reg_0_7_0_5_i_38
       (.I0(ra[5]),
        .I1(ra[7]),
        .I2(rb[1]),
        .I3(rb[2]),
        .O(t_memoria_reg_0_7_0_5_i_38_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    t_memoria_reg_0_7_0_5_i_39
       (.I0(t_memoria_reg_0_7_0_5_i_24_n_0),
        .I1(t_memoria_reg_0_7_6_7_i_8_n_0),
        .O(t_memoria_reg_0_7_0_5_i_39_n_0));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    t_memoria_reg_0_7_0_5_i_40
       (.I0(ra[7]),
        .I1(t_memoria_reg_0_7_0_5_i_44_n_0),
        .I2(t_memoria_reg_0_7_0_5_i_36_n_0),
        .I3(t_memoria_reg_0_7_0_5_i_26_n_0),
        .I4(rb[0]),
        .O(data5[4]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    t_memoria_reg_0_7_0_5_i_41
       (.I0(ra[4]),
        .I1(ra[7]),
        .I2(rb[1]),
        .I3(ra[6]),
        .I4(rb[2]),
        .I5(ra[2]),
        .O(t_memoria_reg_0_7_0_5_i_41_n_0));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    t_memoria_reg_0_7_0_5_i_42
       (.I0(ra[4]),
        .I1(ra[0]),
        .I2(rb[1]),
        .I3(ra[6]),
        .I4(rb[2]),
        .I5(ra[2]),
        .O(t_memoria_reg_0_7_0_5_i_42_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    t_memoria_reg_0_7_0_5_i_43
       (.I0(ra[5]),
        .I1(rb[1]),
        .I2(ra[3]),
        .I3(ra[7]),
        .I4(rb[2]),
        .O(t_memoria_reg_0_7_0_5_i_43_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    t_memoria_reg_0_7_0_5_i_44
       (.I0(ra[6]),
        .I1(rb[1]),
        .I2(ra[4]),
        .I3(ra[7]),
        .I4(rb[2]),
        .O(t_memoria_reg_0_7_0_5_i_44_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    t_memoria_reg_0_7_0_5_i_45
       (.I0(rb[6]),
        .I1(rb[7]),
        .I2(rb[5]),
        .I3(rb[4]),
        .I4(rb[3]),
        .I5(rb[0]),
        .O(t_memoria_reg_0_7_0_5_i_45_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    t_memoria_reg_0_7_0_5_i_8
       (.I0(\0 ),
        .I1(\rop_reg_n_0_[2] ),
        .I2(\rop_reg_n_0_[5] ),
        .I3(\rop_reg_n_0_[4] ),
        .I4(\rop_reg_n_0_[3] ),
        .O(t_memoria_reg_0_7_0_5_i_8_n_0));
  LUT6 #(
    .INIT(64'hB8FF3030B8303030)) 
    t_memoria_reg_0_7_0_5_i_9
       (.I0(t_memoria_reg_0_7_0_5_i_23_n_0),
        .I1(t_memoria_reg_0_7_0_5_i_24_n_0),
        .I2(t_memoria_reg_0_7_0_5_i_25_n_0),
        .I3(rb[0]),
        .I4(t_memoria_reg_0_7_0_5_i_26_n_0),
        .I5(t_memoria_reg_0_7_0_5_i_27_n_0),
        .O(t_memoria_reg_0_7_0_5_i_9_n_0));
  LUT6 #(
    .INIT(64'h4000400FF00FFF00)) 
    t_memoria_reg_0_7_6_7_i_3
       (.I0(t_memoria_reg_0_7_6_7_i_8_n_0),
        .I1(t_memoria_reg_0_7_6_7_i_9_n_0),
        .I2(t_memoria_reg_0_7_0_5_i_28_n_0),
        .I3(ra[7]),
        .I4(rb[7]),
        .I5(t_memoria_reg_0_7_0_5_i_24_n_0),
        .O(t_memoria_reg_0_7_6_7_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000050507340)) 
    t_memoria_reg_0_7_6_7_i_5
       (.I0(t_memoria_reg_0_7_0_5_i_24_n_0),
        .I1(rb[2]),
        .I2(ra[7]),
        .I3(ra[6]),
        .I4(rb[1]),
        .I5(t_memoria_reg_0_7_6_7_i_8_n_0),
        .O(t_memoria_reg_0_7_6_7_i_5_n_0));
  LUT6 #(
    .INIT(64'h0B0B0B8B00000000)) 
    t_memoria_reg_0_7_6_7_i_6
       (.I0(rb[0]),
        .I1(t_memoria_reg_0_7_0_5_i_26_n_0),
        .I2(t_memoria_reg_0_7_0_5_i_24_n_0),
        .I3(rb[2]),
        .I4(rb[1]),
        .I5(ra[7]),
        .O(t_memoria_reg_0_7_6_7_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    t_memoria_reg_0_7_6_7_i_8
       (.I0(rb[0]),
        .I1(rb[6]),
        .I2(rb[7]),
        .I3(rb[5]),
        .I4(rb[4]),
        .I5(rb[3]),
        .O(t_memoria_reg_0_7_6_7_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    t_memoria_reg_0_7_6_7_i_9
       (.I0(rb[1]),
        .I1(rb[2]),
        .O(t_memoria_reg_0_7_6_7_i_9_n_0));
  LUT5 #(
    .INIT(32'hF5FF0020)) 
    write_i_1
       (.I0(write_i_2_n_0),
        .I1(tx_full),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(tx_write),
        .O(write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h01)) 
    write_i_2
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[4]),
        .O(write_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    write_reg
       (.C(CLK),
        .CE(1'b1),
        .D(write_i_1_n_0),
        .Q(tx_write),
        .R(SR));
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
  wire interf_n_2;
  wire [0:0]next_state;
  wire [7:0]r_data;
  wire r_write_enable;
  wire reset;
  wire reset_IBUF;
  wire rx;
  wire rx_IBUF;
  wire [7:0]rx_data_read;
  wire rx_empty;
  wire rx_read;
  wire rx_write;
  wire [0:0]state;
  wire t_empty;
  wire t_write_enable;
  wire tx;
  wire tx_OBUF;
  wire [7:0]tx_data_read;
  wire [7:0]tx_data_write;
  wire tx_full;
  wire tx_read;
  wire tx_write;

initial begin
 $sdf_annotate("Top_tb_time_synth.sdf",,,,"tool_control");
end
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  FIFO fifo
       (.CLK(clock_IBUF_BUFG),
        .D(tx_data_read),
        .Q(r_data),
        .SR(reset_IBUF),
        .r_empty_reg_0({fifo_n_21,fifo_n_22,fifo_n_23,fifo_n_24,fifo_n_25,fifo_n_26,fifo_n_27,fifo_n_28}),
        .r_full_reg_0(fifo_n_18),
        .r_write_enable(r_write_enable),
        .rx_data_read(rx_data_read),
        .rx_empty(rx_empty),
        .rx_read(rx_read),
        .rx_write(rx_write),
        .\state_reg[0] ({interf_n_2,state}),
        .t_empty(t_empty),
        .t_full_reg_0(next_state),
        .t_write_enable(t_write_enable),
        .tx_data_write(tx_data_write),
        .tx_full(tx_full),
        .tx_read(tx_read),
        .tx_write(tx_write));
  Interfaz interf
       (.CLK(clock_IBUF_BUFG),
        .D(next_state),
        .Q({interf_n_2,state}),
        .SR(reset_IBUF),
        .\ra_reg[7]_0 ({fifo_n_21,fifo_n_22,fifo_n_23,fifo_n_24,fifo_n_25,fifo_n_26,fifo_n_27,fifo_n_28}),
        .rx_data_read(rx_data_read),
        .rx_empty(rx_empty),
        .rx_read(rx_read),
        .t_write_enable(t_write_enable),
        .tx_data_write(tx_data_write),
        .tx_full(tx_full),
        .tx_write(tx_write));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  UART uart
       (.CLK(clock_IBUF_BUFG),
        .D(tx_data_read),
        .Q(r_data),
        .SR(reset_IBUF),
        .r_memoria_reg_0_7_0_5(fifo_n_18),
        .r_write_enable(r_write_enable),
        .rx_IBUF(rx_IBUF),
        .rx_write(rx_write),
        .t_empty(t_empty),
        .tx_OBUF(tx_OBUF),
        .tx_read(tx_read));
endmodule

module UART
   (tx_OBUF,
    rx_write,
    tx_read,
    r_write_enable,
    Q,
    SR,
    CLK,
    rx_IBUF,
    t_empty,
    r_memoria_reg_0_7_0_5,
    D);
  output tx_OBUF;
  output rx_write;
  output tx_read;
  output r_write_enable;
  output [7:0]Q;
  input [0:0]SR;
  input CLK;
  input rx_IBUF;
  input t_empty;
  input r_memoria_reg_0_7_0_5;
  input [7:0]D;

  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;
  wire [0:0]SR;
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
  wire [11:1]data0;
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
  wire r_memoria_reg_0_7_0_5;
  wire [4:0]r_next_state;
  wire [4:0]r_state;
  wire \r_state[0]_i_2_n_0 ;
  wire \r_state[1]_i_2_n_0 ;
  wire \r_state[2]_i_2_n_0 ;
  wire \r_state[2]_i_3_n_0 ;
  wire \r_state[4]_i_1_n_0 ;
  wire \r_state[4]_i_3_n_0 ;
  wire \r_state[4]_i_4_n_0 ;
  wire \r_state[4]_i_5_n_0 ;
  wire \r_state[4]_i_6_n_0 ;
  wire [1:0]r_stop_bits;
  wire \r_stop_bits[0]_i_1_n_0 ;
  wire \r_stop_bits[0]_i_2_n_0 ;
  wire \r_stop_bits[0]_i_3_n_0 ;
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
  wire r_ticks_next;
  wire \r_ticks_next_inferred__6/i__n_0 ;
  wire r_write_enable;
  wire rx_IBUF;
  wire rx_write;
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
  wire t_cont_unos_next_1;
  wire t_data_i_2_n_0;
  wire t_data_i_3_n_0;
  wire t_data_i_5_n_0;
  wire t_data_i_6_n_0;
  wire t_data_i_7_n_0;
  wire t_data_next;
  wire t_data_reg_i_4_n_0;
  wire [7:0]t_din;
  wire t_din_next;
  wire t_done_i_1_n_0;
  wire t_done_i_2_n_0;
  wire t_empty;
  wire [4:0]t_next_state;
  wire [4:0]t_state;
  wire \t_state[3]_i_2_n_0 ;
  wire \t_state[4]_i_1_n_0 ;
  wire \t_state[4]_i_3_n_0 ;
  wire \t_state[4]_i_4_n_0 ;
  wire \t_state[4]_i_5_n_0 ;
  wire \t_state[4]_i_6_n_0 ;
  wire [1:0]t_stop_bits;
  wire \t_stop_bits[0]_i_1_n_0 ;
  wire \t_stop_bits[0]_i_2_n_0 ;
  wire \t_stop_bits[1]_i_1_n_0 ;
  wire \t_stop_bits[1]_i_2_n_0 ;
  wire \t_stop_bits[1]_i_3_n_0 ;
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
  wire [3:2]NLW_count10_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_count10_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_r_cont_unos_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_cont_unos_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]NLW_t_cont_unos_next0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_t_cont_unos_next0_carry__6_O_UNCONNECTED;

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
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[10]_i_1 
       (.I0(data0[10]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[10]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[11]_i_1 
       (.I0(data0[11]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[11]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[1]_i_1 
       (.I0(data0[1]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[2]_i_1 
       (.I0(data0[2]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[3]_i_1 
       (.I0(data0[3]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[3]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_1 
       (.I0(data0[4]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[4]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[5]_i_1 
       (.I0(data0[5]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[5]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[6]_i_1 
       (.I0(data0[6]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[7]_i_1 
       (.I0(data0[7]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_1 
       (.I0(data0[8]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[8]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[9]_i_1 
       (.I0(data0[9]),
        .I1(\t_state[4]_i_3_n_0 ),
        .O(count1[9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(count1[0]),
        .Q(count[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(count1[10]),
        .Q(count[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(count1[11]),
        .Q(count[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(count1[1]),
        .Q(count[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(count1[2]),
        .Q(count[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(count1[3]),
        .Q(count[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(count1[4]),
        .Q(count[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(count1[5]),
        .Q(count[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(count1[6]),
        .Q(count[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(count1[7]),
        .Q(count[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(count1[8]),
        .Q(count[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(count1[9]),
        .Q(count[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0FFF0FBFC000C040)) 
    \r_bits[0]_i_1 
       (.I0(\r_state[4]_i_5_n_0 ),
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
        .I1(\r_state[4]_i_6_n_0 ),
        .I2(\t_state[4]_i_3_n_0 ),
        .I3(r_state[2]),
        .O(\r_bits[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
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
       (.I0(\r_state[4]_i_5_n_0 ),
        .I1(r_state[2]),
        .I2(\r_bits[2]_i_2_n_0 ),
        .I3(r_state[0]),
        .I4(\r_bits[2]_i_3_n_0 ),
        .I5(r_bits[2]),
        .O(\r_bits[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
       (.C(CLK),
        .CE(1'b1),
        .D(\r_bits[0]_i_1_n_0 ),
        .Q(r_bits[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_bits_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\r_bits[1]_i_1_n_0 ),
        .Q(r_bits[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_bits_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\r_bits[2]_i_1_n_0 ),
        .Q(r_bits[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_cont_unos[0]_i_1 
       (.I0(r_state[2]),
        .I1(r_cont_unos[0]),
        .O(r_cont_unos_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[10]_i_1 
       (.I0(r_state[2]),
        .I1(in13[10]),
        .O(r_cont_unos_next[10]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[11]_i_1 
       (.I0(r_state[2]),
        .I1(in13[11]),
        .O(r_cont_unos_next[11]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[12]_i_1 
       (.I0(r_state[2]),
        .I1(in13[12]),
        .O(r_cont_unos_next[12]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[13]_i_1 
       (.I0(r_state[2]),
        .I1(in13[13]),
        .O(r_cont_unos_next[13]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[14]_i_1 
       (.I0(r_state[2]),
        .I1(in13[14]),
        .O(r_cont_unos_next[14]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[15]_i_1 
       (.I0(r_state[2]),
        .I1(in13[15]),
        .O(r_cont_unos_next[15]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[16]_i_1 
       (.I0(r_state[2]),
        .I1(in13[16]),
        .O(r_cont_unos_next[16]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[17]_i_1 
       (.I0(r_state[2]),
        .I1(in13[17]),
        .O(r_cont_unos_next[17]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[18]_i_1 
       (.I0(r_state[2]),
        .I1(in13[18]),
        .O(r_cont_unos_next[18]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[19]_i_1 
       (.I0(r_state[2]),
        .I1(in13[19]),
        .O(r_cont_unos_next[19]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[1]_i_1 
       (.I0(r_state[2]),
        .I1(in13[1]),
        .O(r_cont_unos_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[20]_i_1 
       (.I0(r_state[2]),
        .I1(in13[20]),
        .O(r_cont_unos_next[20]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[21]_i_1 
       (.I0(r_state[2]),
        .I1(in13[21]),
        .O(r_cont_unos_next[21]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[22]_i_1 
       (.I0(r_state[2]),
        .I1(in13[22]),
        .O(r_cont_unos_next[22]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[23]_i_1 
       (.I0(r_state[2]),
        .I1(in13[23]),
        .O(r_cont_unos_next[23]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[24]_i_1 
       (.I0(r_state[2]),
        .I1(in13[24]),
        .O(r_cont_unos_next[24]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[25]_i_1 
       (.I0(r_state[2]),
        .I1(in13[25]),
        .O(r_cont_unos_next[25]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[26]_i_1 
       (.I0(r_state[2]),
        .I1(in13[26]),
        .O(r_cont_unos_next[26]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[27]_i_1 
       (.I0(r_state[2]),
        .I1(in13[27]),
        .O(r_cont_unos_next[27]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[28]_i_1 
       (.I0(r_state[2]),
        .I1(in13[28]),
        .O(r_cont_unos_next[28]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[29]_i_1 
       (.I0(r_state[2]),
        .I1(in13[29]),
        .O(r_cont_unos_next[29]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[2]_i_1 
       (.I0(r_state[2]),
        .I1(in13[2]),
        .O(r_cont_unos_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
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
        .I3(\r_state[4]_i_5_n_0 ),
        .I4(r_state[0]),
        .O(r_cont_unos_next_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[31]_i_2 
       (.I0(r_state[2]),
        .I1(in13[31]),
        .O(r_cont_unos_next[31]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[3]_i_1 
       (.I0(r_state[2]),
        .I1(in13[3]),
        .O(r_cont_unos_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[4]_i_1 
       (.I0(r_state[2]),
        .I1(in13[4]),
        .O(r_cont_unos_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[5]_i_1 
       (.I0(r_state[2]),
        .I1(in13[5]),
        .O(r_cont_unos_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[6]_i_1 
       (.I0(r_state[2]),
        .I1(in13[6]),
        .O(r_cont_unos_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[7]_i_1 
       (.I0(r_state[2]),
        .I1(in13[7]),
        .O(r_cont_unos_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[8]_i_1 
       (.I0(r_state[2]),
        .I1(in13[8]),
        .O(r_cont_unos_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_cont_unos[9]_i_1 
       (.I0(r_state[2]),
        .I1(in13[9]),
        .O(r_cont_unos_next[9]));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[0] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[0]),
        .Q(r_cont_unos[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[10] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[10]),
        .Q(r_cont_unos[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[11] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[11]),
        .Q(r_cont_unos[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[12] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[12]),
        .Q(r_cont_unos[12]),
        .R(SR));
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
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[13]),
        .Q(r_cont_unos[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[14] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[14]),
        .Q(r_cont_unos[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[15] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[15]),
        .Q(r_cont_unos[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[16] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[16]),
        .Q(r_cont_unos[16]),
        .R(SR));
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
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[17]),
        .Q(r_cont_unos[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[18] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[18]),
        .Q(r_cont_unos[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[19] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[19]),
        .Q(r_cont_unos[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[1] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[1]),
        .Q(r_cont_unos[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[20] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[20]),
        .Q(r_cont_unos[20]),
        .R(SR));
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
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[21]),
        .Q(r_cont_unos[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[22] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[22]),
        .Q(r_cont_unos[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[23] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[23]),
        .Q(r_cont_unos[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[24] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[24]),
        .Q(r_cont_unos[24]),
        .R(SR));
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
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[25]),
        .Q(r_cont_unos[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[26] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[26]),
        .Q(r_cont_unos[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[27] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[27]),
        .Q(r_cont_unos[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[28] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[28]),
        .Q(r_cont_unos[28]),
        .R(SR));
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
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[29]),
        .Q(r_cont_unos[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[2] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[2]),
        .Q(r_cont_unos[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[30] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[30]),
        .Q(r_cont_unos[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[31] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[31]),
        .Q(r_cont_unos[31]),
        .R(SR));
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
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[3]),
        .Q(r_cont_unos[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[4] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[4]),
        .Q(r_cont_unos[4]),
        .R(SR));
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
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[5]),
        .Q(r_cont_unos[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[6] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[6]),
        .Q(r_cont_unos[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[7] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[7]),
        .Q(r_cont_unos[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_cont_unos_reg[8] 
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[8]),
        .Q(r_cont_unos[8]),
        .R(SR));
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
       (.C(CLK),
        .CE(r_cont_unos_next_0),
        .D(r_cont_unos_next[9]),
        .Q(r_cont_unos[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[0]_i_1 
       (.I0(r_state[2]),
        .I1(Q[1]),
        .O(r_data_next0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[1]_i_1 
       (.I0(r_state[2]),
        .I1(Q[2]),
        .O(r_data_next0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[2]_i_1 
       (.I0(r_state[2]),
        .I1(Q[3]),
        .O(r_data_next0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[3]_i_1 
       (.I0(r_state[2]),
        .I1(Q[4]),
        .O(r_data_next0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[4]_i_1 
       (.I0(r_state[2]),
        .I1(Q[5]),
        .O(r_data_next0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[5]_i_1 
       (.I0(r_state[2]),
        .I1(Q[6]),
        .O(r_data_next0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
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
        .I4(\r_state[4]_i_5_n_0 ),
        .I5(r_state[0]),
        .O(r_data_next));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_data[7]_i_2 
       (.I0(rx_IBUF),
        .I1(r_state[2]),
        .O(r_data_next0_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[0] 
       (.C(CLK),
        .CE(r_data_next),
        .D(r_data_next0_in[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[1] 
       (.C(CLK),
        .CE(r_data_next),
        .D(r_data_next0_in[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[2] 
       (.C(CLK),
        .CE(r_data_next),
        .D(r_data_next0_in[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[3] 
       (.C(CLK),
        .CE(r_data_next),
        .D(r_data_next0_in[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[4] 
       (.C(CLK),
        .CE(r_data_next),
        .D(r_data_next0_in[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[5] 
       (.C(CLK),
        .CE(r_data_next),
        .D(r_data_next0_in[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[6] 
       (.C(CLK),
        .CE(r_data_next),
        .D(r_data_next0_in[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[7] 
       (.C(CLK),
        .CE(r_data_next),
        .D(r_data_next0_in[7]),
        .Q(Q[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFC400000004)) 
    r_done_i_1
       (.I0(\r_ticks[0]_i_2_n_0 ),
        .I1(r_state[4]),
        .I2(r_state[0]),
        .I3(\r_stop_bits[0]_i_2_n_0 ),
        .I4(r_done_i_2_n_0),
        .I5(rx_write),
        .O(r_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h5555555555155555)) 
    r_done_i_2
       (.I0(r_state[0]),
        .I1(r_state[4]),
        .I2(\t_state[4]_i_3_n_0 ),
        .I3(r_stop_bits[1]),
        .I4(r_stop_bits[0]),
        .I5(\r_ticks[0]_i_2_n_0 ),
        .O(r_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_done_reg
       (.C(CLK),
        .CE(1'b1),
        .D(r_done_i_1_n_0),
        .Q(rx_write),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    r_memoria_reg_0_7_0_5_i_1
       (.I0(rx_write),
        .I1(r_memoria_reg_0_7_0_5),
        .O(r_write_enable));
  LUT6 #(
    .INIT(64'hFFFFFFFF0404FF04)) 
    \r_state[0]_i_1 
       (.I0(\r_state[4]_i_4_n_0 ),
        .I1(r_state[3]),
        .I2(\r_state[4]_i_5_n_0 ),
        .I3(r_state[4]),
        .I4(\r_state[4]_i_3_n_0 ),
        .I5(\r_state[0]_i_2_n_0 ),
        .O(r_next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hAA00EA00)) 
    \r_state[0]_i_2 
       (.I0(r_state[0]),
        .I1(r_state[1]),
        .I2(\t_state[4]_i_3_n_0 ),
        .I3(rx_IBUF),
        .I4(\r_state[1]_i_2_n_0 ),
        .O(\r_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hD0FFD0D0)) 
    \r_state[1]_i_1 
       (.I0(\t_state[4]_i_3_n_0 ),
        .I1(\r_state[1]_i_2_n_0 ),
        .I2(r_state[1]),
        .I3(rx_IBUF),
        .I4(r_state[0]),
        .O(r_next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
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
        .I1(\r_state[4]_i_5_n_0 ),
        .I2(r_state[2]),
        .I3(r_state[1]),
        .I4(\r_state[2]_i_3_n_0 ),
        .I5(\t_state[4]_i_3_n_0 ),
        .O(r_next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r_state[2]_i_2 
       (.I0(r_bits[1]),
        .I1(r_bits[0]),
        .I2(r_bits[2]),
        .O(\r_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
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
        .I4(\r_state[4]_i_5_n_0 ),
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
  LUT5 #(
    .INIT(32'h8888F888)) 
    \r_state[4]_i_2 
       (.I0(r_state[4]),
        .I1(\r_state[4]_i_3_n_0 ),
        .I2(\r_state[4]_i_4_n_0 ),
        .I3(r_state[3]),
        .I4(\r_state[4]_i_5_n_0 ),
        .O(r_next_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFB0FFFF)) 
    \r_state[4]_i_3 
       (.I0(r_stop_bits[1]),
        .I1(r_stop_bits[0]),
        .I2(rx_IBUF),
        .I3(\r_state[4]_i_6_n_0 ),
        .I4(\t_state[4]_i_3_n_0 ),
        .O(\r_state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h101F)) 
    \r_state[4]_i_4 
       (.I0(r_cont_unos[31]),
        .I1(\r_ticks[0]_i_2_n_0 ),
        .I2(r_cont_unos[0]),
        .I3(rx_IBUF),
        .O(\r_state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \r_state[4]_i_5 
       (.I0(r_ticks[3]),
        .I1(r_ticks[1]),
        .I2(r_ticks[0]),
        .I3(r_ticks[2]),
        .I4(\t_state[4]_i_3_n_0 ),
        .O(\r_state[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_state[4]_i_6 
       (.I0(r_ticks[2]),
        .I1(r_ticks[0]),
        .I2(r_ticks[1]),
        .I3(r_ticks[3]),
        .O(\r_state[4]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "R_START:00010,R_DATA:00100,R_PARITY:01000,R_STOP:10000,R_IDLE:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \r_state_reg[0] 
       (.C(CLK),
        .CE(\r_state[4]_i_1_n_0 ),
        .D(r_next_state[0]),
        .Q(r_state[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "R_START:00010,R_DATA:00100,R_PARITY:01000,R_STOP:10000,R_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_state_reg[1] 
       (.C(CLK),
        .CE(\r_state[4]_i_1_n_0 ),
        .D(r_next_state[1]),
        .Q(r_state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "R_START:00010,R_DATA:00100,R_PARITY:01000,R_STOP:10000,R_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_state_reg[2] 
       (.C(CLK),
        .CE(\r_state[4]_i_1_n_0 ),
        .D(r_next_state[2]),
        .Q(r_state[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "R_START:00010,R_DATA:00100,R_PARITY:01000,R_STOP:10000,R_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_state_reg[3] 
       (.C(CLK),
        .CE(\r_state[4]_i_1_n_0 ),
        .D(r_next_state[3]),
        .Q(r_state[3]),
        .R(SR));
  (* FSM_ENCODED_STATES = "R_START:00010,R_DATA:00100,R_PARITY:01000,R_STOP:10000,R_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_state_reg[4] 
       (.C(CLK),
        .CE(\r_state[4]_i_1_n_0 ),
        .D(r_next_state[4]),
        .Q(r_state[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFAFAFFEF00000010)) 
    \r_stop_bits[0]_i_1 
       (.I0(\r_stop_bits[0]_i_2_n_0 ),
        .I1(\r_stop_bits[0]_i_3_n_0 ),
        .I2(r_state[4]),
        .I3(\r_state[4]_i_5_n_0 ),
        .I4(r_state[0]),
        .I5(r_stop_bits[0]),
        .O(\r_stop_bits[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r_stop_bits[0]_i_2 
       (.I0(r_state[1]),
        .I1(r_state[3]),
        .I2(r_state[2]),
        .O(\r_stop_bits[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \r_stop_bits[0]_i_3 
       (.I0(r_stop_bits[1]),
        .I1(r_stop_bits[0]),
        .I2(rx_IBUF),
        .O(\r_stop_bits[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFFBF88880080)) 
    \r_stop_bits[1]_i_1 
       (.I0(\r_stop_bits[1]_i_2_n_0 ),
        .I1(\r_stop_bits[1]_i_3_n_0 ),
        .I2(\r_stop_bits[1]_i_4_n_0 ),
        .I3(\r_state[4]_i_5_n_0 ),
        .I4(r_state[0]),
        .I5(r_stop_bits[1]),
        .O(\r_stop_bits[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \r_stop_bits[1]_i_2 
       (.I0(r_stop_bits[0]),
        .I1(r_stop_bits[1]),
        .I2(r_state[4]),
        .O(\r_stop_bits[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00010101)) 
    \r_stop_bits[1]_i_3 
       (.I0(r_state[2]),
        .I1(r_state[3]),
        .I2(r_state[1]),
        .I3(r_state[0]),
        .I4(r_state[4]),
        .O(\r_stop_bits[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \r_stop_bits[1]_i_4 
       (.I0(r_state[4]),
        .I1(rx_IBUF),
        .I2(r_stop_bits[0]),
        .I3(r_stop_bits[1]),
        .O(\r_stop_bits[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_stop_bits_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\r_stop_bits[0]_i_1_n_0 ),
        .Q(r_stop_bits[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_stop_bits_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\r_stop_bits[1]_i_1_n_0 ),
        .Q(r_stop_bits[1]),
        .R(SR));
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
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
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
        .I2(\r_ticks[3]_i_6_n_0 ),
        .I3(r_ticks[3]),
        .I4(r_state[4]),
        .I5(\r_ticks[3]_i_5_n_0 ),
        .O(\r_ticks[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7878787878787800)) 
    \r_ticks[2]_i_1 
       (.I0(r_ticks[0]),
        .I1(r_ticks[1]),
        .I2(r_ticks[2]),
        .I3(r_state[1]),
        .I4(\r_ticks[3]_i_5_n_0 ),
        .I5(r_state[4]),
        .O(\r_ticks[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8888888AAAAAAAA)) 
    \r_ticks[3]_i_1 
       (.I0(\r_ticks_next_inferred__6/i__n_0 ),
        .I1(r_state[0]),
        .I2(r_state[4]),
        .I3(\t_state[4]_i_3_n_0 ),
        .I4(\r_ticks[3]_i_3_n_0 ),
        .I5(\r_ticks[3]_i_4_n_0 ),
        .O(r_ticks_next));
  LUT6 #(
    .INIT(64'hFFFC00000000FFF8)) 
    \r_ticks[3]_i_2 
       (.I0(rx_IBUF),
        .I1(r_state[1]),
        .I2(r_state[4]),
        .I3(\r_ticks[3]_i_5_n_0 ),
        .I4(\r_ticks[3]_i_6_n_0 ),
        .I5(r_ticks[3]),
        .O(\r_ticks[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hEEAE)) 
    \r_ticks[3]_i_3 
       (.I0(\r_state[4]_i_6_n_0 ),
        .I1(rx_IBUF),
        .I2(r_stop_bits[0]),
        .I3(r_stop_bits[1]),
        .O(\r_ticks[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000002FFFFFFFFF)) 
    \r_ticks[3]_i_4 
       (.I0(rx_IBUF),
        .I1(\r_state[1]_i_2_n_0 ),
        .I2(r_state[1]),
        .I3(r_state[3]),
        .I4(r_state[2]),
        .I5(\t_state[4]_i_3_n_0 ),
        .O(\r_ticks[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_ticks[3]_i_5 
       (.I0(r_state[2]),
        .I1(r_state[3]),
        .O(\r_ticks[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \r_ticks[3]_i_6 
       (.I0(r_ticks[1]),
        .I1(r_ticks[0]),
        .I2(r_ticks[2]),
        .O(\r_ticks[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
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
       (.C(CLK),
        .CE(r_ticks_next),
        .D(\r_ticks[0]_i_1_n_0 ),
        .Q(r_ticks[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_ticks_reg[1] 
       (.C(CLK),
        .CE(r_ticks_next),
        .D(\r_ticks[1]_i_1_n_0 ),
        .Q(r_ticks[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_ticks_reg[2] 
       (.C(CLK),
        .CE(r_ticks_next),
        .D(\r_ticks[2]_i_1_n_0 ),
        .Q(r_ticks[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_ticks_reg[3] 
       (.C(CLK),
        .CE(r_ticks_next),
        .D(\r_ticks[3]_i_2_n_0 ),
        .Q(r_ticks[3]),
        .R(SR));
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
       (.I0(\t_state[4]_i_3_n_0 ),
        .I1(\t_state[4]_i_4_n_0 ),
        .I2(t_bits[1]),
        .I3(t_bits[0]),
        .I4(t_bits[2]),
        .I5(t_state[2]),
        .O(\t_bits[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
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
       (.C(CLK),
        .CE(1'b1),
        .D(\t_bits[0]_i_1_n_0 ),
        .Q(t_bits[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_bits_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\t_bits[1]_i_1_n_0 ),
        .Q(t_bits[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_bits_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\t_bits[2]_i_1_n_0 ),
        .Q(t_bits[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \t_cont_unos[0]_i_1 
       (.I0(t_cont_unos[0]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[10]_i_1 
       (.I0(in10[10]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[10]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[11]_i_1 
       (.I0(in10[11]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[11]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[12]_i_1 
       (.I0(in10[12]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[12]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[13]_i_1 
       (.I0(in10[13]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[13]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[14]_i_1 
       (.I0(in10[14]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[14]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[15]_i_1 
       (.I0(in10[15]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[15]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[16]_i_1 
       (.I0(in10[16]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[16]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[17]_i_1 
       (.I0(in10[17]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[17]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[18]_i_1 
       (.I0(in10[18]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[18]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[19]_i_1 
       (.I0(in10[19]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[19]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[1]_i_1 
       (.I0(in10[1]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[20]_i_1 
       (.I0(in10[20]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[20]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[21]_i_1 
       (.I0(in10[21]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[21]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[22]_i_1 
       (.I0(in10[22]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[22]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[23]_i_1 
       (.I0(in10[23]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[23]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[24]_i_1 
       (.I0(in10[24]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[24]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[25]_i_1 
       (.I0(in10[25]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[25]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[26]_i_1 
       (.I0(in10[26]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[26]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[27]_i_1 
       (.I0(in10[27]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[27]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[28]_i_1 
       (.I0(in10[28]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[28]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[29]_i_1 
       (.I0(in10[29]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[29]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[2]_i_1 
       (.I0(in10[2]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
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
        .O(t_cont_unos_next_1));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[31]_i_2 
       (.I0(in10[31]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[31]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
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
        .I1(t_din[0]),
        .I2(t_state[1]),
        .O(\t_cont_unos[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
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
       (.I0(t_din[2]),
        .I1(t_din[3]),
        .I2(t_bits[1]),
        .I3(t_bits[0]),
        .I4(t_din[0]),
        .I5(t_din[1]),
        .O(\t_cont_unos[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    \t_cont_unos[31]_i_8 
       (.I0(t_din[6]),
        .I1(t_din[7]),
        .I2(t_bits[1]),
        .I3(t_bits[0]),
        .I4(t_din[4]),
        .I5(t_din[5]),
        .O(\t_cont_unos[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[3]_i_1 
       (.I0(in10[3]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[4]_i_1 
       (.I0(in10[4]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[5]_i_1 
       (.I0(in10[5]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[6]_i_1 
       (.I0(in10[6]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[7]_i_1 
       (.I0(in10[7]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_cont_unos[8]_i_1 
       (.I0(in10[8]),
        .I1(t_state[0]),
        .O(t_cont_unos_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
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
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[0]),
        .Q(t_cont_unos[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[10] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[10]),
        .Q(t_cont_unos[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[11] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[11]),
        .Q(t_cont_unos[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[12] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[12]),
        .Q(t_cont_unos[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[13] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[13]),
        .Q(t_cont_unos[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[14] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[14]),
        .Q(t_cont_unos[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[15] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[15]),
        .Q(t_cont_unos[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[16] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[16]),
        .Q(t_cont_unos[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[17] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[17]),
        .Q(t_cont_unos[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[18] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[18]),
        .Q(t_cont_unos[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[19] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[19]),
        .Q(t_cont_unos[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[1] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[1]),
        .Q(t_cont_unos[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[20] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[20]),
        .Q(t_cont_unos[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[21] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[21]),
        .Q(t_cont_unos[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[22] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[22]),
        .Q(t_cont_unos[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[23] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[23]),
        .Q(t_cont_unos[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[24] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[24]),
        .Q(t_cont_unos[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[25] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[25]),
        .Q(t_cont_unos[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[26] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[26]),
        .Q(t_cont_unos[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[27] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[27]),
        .Q(t_cont_unos[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[28] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[28]),
        .Q(t_cont_unos[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[29] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[29]),
        .Q(t_cont_unos[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[2] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[2]),
        .Q(t_cont_unos[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[30] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[30]),
        .Q(t_cont_unos[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[31] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[31]),
        .Q(t_cont_unos[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[3] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[3]),
        .Q(t_cont_unos[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[4] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[4]),
        .Q(t_cont_unos[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[5] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[5]),
        .Q(t_cont_unos[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[6] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[6]),
        .Q(t_cont_unos[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[7] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[7]),
        .Q(t_cont_unos[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[8] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[8]),
        .Q(t_cont_unos[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_cont_unos_reg[9] 
       (.C(CLK),
        .CE(t_cont_unos_next_1),
        .D(t_cont_unos_next[9]),
        .Q(t_cont_unos[9]),
        .R(SR));
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
    .INIT(64'hFFFFFFFFC044C000)) 
    t_data_i_2
       (.I0(t_cont_unos[31]),
        .I1(t_state[2]),
        .I2(t_data_reg_i_4_n_0),
        .I3(t_data_i_5_n_0),
        .I4(t_cont_unos[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    t_data_i_5
       (.I0(\t_state[4]_i_4_n_0 ),
        .I1(t_bits[1]),
        .I2(t_bits[0]),
        .I3(t_bits[2]),
        .O(t_data_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    t_data_i_6
       (.I0(\t_ticks[3]_i_4_n_0 ),
        .I1(\t_state[4]_i_3_n_0 ),
        .I2(t_state[1]),
        .I3(t_din[0]),
        .I4(t_empty),
        .I5(t_state[0]),
        .O(t_data_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
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
       (.C(CLK),
        .CE(t_data_next),
        .D(t_data_i_2_n_0),
        .Q(tx_OBUF),
        .S(SR));
  MUXF7 t_data_reg_i_4
       (.I0(\t_cont_unos[31]_i_7_n_0 ),
        .I1(\t_cont_unos[31]_i_8_n_0 ),
        .O(t_data_reg_i_4_n_0),
        .S(\t_bits[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \t_din[7]_i_1 
       (.I0(t_state[1]),
        .I1(t_state[2]),
        .I2(t_state[4]),
        .I3(t_state[3]),
        .I4(t_empty),
        .I5(t_state[0]),
        .O(t_din_next));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[0] 
       (.C(CLK),
        .CE(t_din_next),
        .D(D[0]),
        .Q(t_din[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[1] 
       (.C(CLK),
        .CE(t_din_next),
        .D(D[1]),
        .Q(t_din[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[2] 
       (.C(CLK),
        .CE(t_din_next),
        .D(D[2]),
        .Q(t_din[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[3] 
       (.C(CLK),
        .CE(t_din_next),
        .D(D[3]),
        .Q(t_din[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[4] 
       (.C(CLK),
        .CE(t_din_next),
        .D(D[4]),
        .Q(t_din[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[5] 
       (.C(CLK),
        .CE(t_din_next),
        .D(D[5]),
        .Q(t_din[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[6] 
       (.C(CLK),
        .CE(t_din_next),
        .D(D[6]),
        .Q(t_din[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_din_reg[7] 
       (.C(CLK),
        .CE(t_din_next),
        .D(D[7]),
        .Q(t_din[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hB3B3FFBF80800080)) 
    t_done_i_1
       (.I0(t_state[4]),
        .I1(\t_stop_bits[1]_i_2_n_0 ),
        .I2(\t_state[4]_i_3_n_0 ),
        .I3(t_done_i_2_n_0),
        .I4(t_state[0]),
        .I5(tx_read),
        .O(t_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    t_done_i_2
       (.I0(\t_state[4]_i_4_n_0 ),
        .I1(t_stop_bits[1]),
        .I2(t_stop_bits[0]),
        .I3(t_state[4]),
        .O(t_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    t_done_reg
       (.C(CLK),
        .CE(1'b1),
        .D(t_done_i_1_n_0),
        .Q(tx_read),
        .R(SR));
  LUT6 #(
    .INIT(64'h8888F88888888888)) 
    \t_state[0]_i_1 
       (.I0(t_state[0]),
        .I1(t_empty),
        .I2(t_state[4]),
        .I3(t_stop_bits[0]),
        .I4(t_stop_bits[1]),
        .I5(\t_state[4]_i_4_n_0 ),
        .O(t_next_state[0]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \t_state[1]_i_1 
       (.I0(t_empty),
        .I1(t_state[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \t_state[3]_i_2 
       (.I0(\t_state[4]_i_3_n_0 ),
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
        .I2(\t_state[4]_i_3_n_0 ),
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
        .I4(\t_state[4]_i_3_n_0 ),
        .I5(\t_state[4]_i_4_n_0 ),
        .O(t_next_state[4]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \t_state[4]_i_3 
       (.I0(count[10]),
        .I1(count[1]),
        .I2(count[5]),
        .I3(count[2]),
        .I4(\t_state[4]_i_5_n_0 ),
        .I5(\t_state[4]_i_6_n_0 ),
        .O(\t_state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \t_state[4]_i_4 
       (.I0(t_ticks[2]),
        .I1(t_ticks[1]),
        .I2(t_ticks[3]),
        .I3(t_ticks[0]),
        .O(\t_state[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \t_state[4]_i_5 
       (.I0(count[7]),
        .I1(count[4]),
        .I2(count[8]),
        .I3(count[11]),
        .O(\t_state[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \t_state[4]_i_6 
       (.I0(count[9]),
        .I1(count[0]),
        .I2(count[6]),
        .I3(count[3]),
        .O(\t_state[4]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "T_START:00010,T_DATA:00100,T_PARITY:01000,T_STOP:10000,T_IDLE:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \t_state_reg[0] 
       (.C(CLK),
        .CE(\t_state[4]_i_1_n_0 ),
        .D(t_next_state[0]),
        .Q(t_state[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "T_START:00010,T_DATA:00100,T_PARITY:01000,T_STOP:10000,T_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \t_state_reg[1] 
       (.C(CLK),
        .CE(\t_state[4]_i_1_n_0 ),
        .D(t_next_state[1]),
        .Q(t_state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "T_START:00010,T_DATA:00100,T_PARITY:01000,T_STOP:10000,T_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \t_state_reg[2] 
       (.C(CLK),
        .CE(\t_state[4]_i_1_n_0 ),
        .D(t_next_state[2]),
        .Q(t_state[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "T_START:00010,T_DATA:00100,T_PARITY:01000,T_STOP:10000,T_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \t_state_reg[3] 
       (.C(CLK),
        .CE(\t_state[4]_i_1_n_0 ),
        .D(t_next_state[3]),
        .Q(t_state[3]),
        .R(SR));
  (* FSM_ENCODED_STATES = "T_START:00010,T_DATA:00100,T_PARITY:01000,T_STOP:10000,T_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \t_state_reg[4] 
       (.C(CLK),
        .CE(\t_state[4]_i_1_n_0 ),
        .D(t_next_state[4]),
        .Q(t_state[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'h5555FF7F88880080)) 
    \t_stop_bits[0]_i_1 
       (.I0(\t_stop_bits[1]_i_2_n_0 ),
        .I1(t_state[4]),
        .I2(\t_state[4]_i_3_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
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
        .I1(\t_state[4]_i_4_n_0 ),
        .I2(t_stop_bits[0]),
        .I3(t_stop_bits[1]),
        .I4(\t_state[4]_i_3_n_0 ),
        .I5(t_state[4]),
        .O(\t_stop_bits[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_stop_bits_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\t_stop_bits[0]_i_1_n_0 ),
        .Q(t_stop_bits[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_stop_bits_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\t_stop_bits[1]_i_1_n_0 ),
        .Q(t_stop_bits[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \t_ticks[0]_i_1 
       (.I0(t_ticks[0]),
        .I1(t_state[0]),
        .O(\t_ticks[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \t_ticks[1]_i_1 
       (.I0(t_ticks[1]),
        .I1(t_ticks[0]),
        .I2(t_state[0]),
        .O(\t_ticks[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
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
        .I5(\t_state[4]_i_3_n_0 ),
        .O(t_ticks_next));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
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
        .I3(\t_state[4]_i_4_n_0 ),
        .I4(t_stop_bits[1]),
        .I5(t_stop_bits[0]),
        .O(\t_ticks[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \t_ticks[3]_i_4 
       (.I0(t_state[4]),
        .I1(t_state[3]),
        .O(\t_ticks[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_ticks_reg[0] 
       (.C(CLK),
        .CE(t_ticks_next),
        .D(\t_ticks[0]_i_1_n_0 ),
        .Q(t_ticks[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_ticks_reg[1] 
       (.C(CLK),
        .CE(t_ticks_next),
        .D(\t_ticks[1]_i_1_n_0 ),
        .Q(t_ticks[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_ticks_reg[2] 
       (.C(CLK),
        .CE(t_ticks_next),
        .D(\t_ticks[2]_i_1_n_0 ),
        .Q(t_ticks[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \t_ticks_reg[3] 
       (.C(CLK),
        .CE(t_ticks_next),
        .D(\t_ticks[3]_i_2_n_0 ),
        .Q(t_ticks[3]),
        .R(SR));
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
