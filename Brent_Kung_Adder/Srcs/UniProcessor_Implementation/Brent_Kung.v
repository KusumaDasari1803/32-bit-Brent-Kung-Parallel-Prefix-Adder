module Brent_Kung (
    input  [31:0] a, b,
    input cin,
    output [31:0] s,
    output cout
);
    wire [31:0] p, g;
    wire [31:0] c;

    assign c[0] = cin;

   
    Propagate p0 (a[0], b[0], p[0]);   Generate g0 (a[0], b[0], g[0]);
    Propagate p1 (a[1], b[1], p[1]);   Generate g1 (a[1], b[1], g[1]);
    Propagate p2 (a[2], b[2], p[2]);   Generate g2 (a[2], b[2], g[2]);
    Propagate p3 (a[3], b[3], p[3]);   Generate g3 (a[3], b[3], g[3]);
    Propagate p4 (a[4], b[4], p[4]);   Generate g4 (a[4], b[4], g[4]);
    Propagate p5 (a[5], b[5], p[5]);   Generate g5 (a[5], b[5], g[5]);
    Propagate p6 (a[6], b[6], p[6]);   Generate g6 (a[6], b[6], g[6]);
    Propagate p7 (a[7], b[7], p[7]);   Generate g7 (a[7], b[7], g[7]);
    Propagate p8 (a[8], b[8], p[8]);   Generate g8 (a[8], b[8], g[8]);
    Propagate p9 (a[9], b[9], p[9]);   Generate g9 (a[9], b[9], g[9]);
    Propagate p10(a[10],b[10],p[10]);  Generate g10(a[10],b[10],g[10]);
    Propagate p11(a[11],b[11],p[11]);  Generate g11(a[11],b[11],g[11]);
    Propagate p12(a[12],b[12],p[12]);  Generate g12(a[12],b[12],g[12]);
    Propagate p13(a[13],b[13],p[13]);  Generate g13(a[13],b[13],g[13]);
    Propagate p14(a[14],b[14],p[14]);  Generate g14(a[14],b[14],g[14]);
    Propagate p15(a[15],b[15],p[15]);  Generate g15(a[15],b[15],g[15]);
    Propagate p16(a[16],b[16],p[16]);  Generate g16(a[16],b[16],g[16]);
    Propagate p17(a[17],b[17],p[17]);  Generate g17(a[17],b[17],g[17]);
    Propagate p18(a[18],b[18],p[18]);  Generate g18(a[18],b[18],g[18]);
    Propagate p19(a[19],b[19],p[19]);  Generate g19(a[19],b[19],g[19]);
    Propagate p20(a[20],b[20],p[20]);  Generate g20(a[20],b[20],g[20]);
    Propagate p21(a[21],b[21],p[21]);  Generate g21(a[21],b[21],g[21]);
    Propagate p22(a[22],b[22],p[22]);  Generate g22(a[22],b[22],g[22]);
    Propagate p23(a[23],b[23],p[23]);  Generate g23(a[23],b[23],g[23]);
    Propagate p24(a[24],b[24],p[24]);  Generate g24(a[24],b[24],g[24]);
    Propagate p25(a[25],b[25],p[25]);  Generate g25(a[25],b[25],g[25]);
    Propagate p26(a[26],b[26],p[26]);  Generate g26(a[26],b[26],g[26]);
    Propagate p27(a[27],b[27],p[27]);  Generate g27(a[27],b[27],g[27]);
    Propagate p28(a[28],b[28],p[28]);  Generate g28(a[28],b[28],g[28]);
    Propagate p29(a[29],b[29],p[29]);  Generate g29(a[29],b[29],g[29]);
    Propagate p30(a[30],b[30],p[30]);  Generate g30(a[30],b[30],g[30]);
    Propagate p31(a[31],b[31],p[31]);  Generate g31(a[31],b[31],g[31]);

    // ----- Black cell intermediate signals -----
    wire g1_0, p1_0, g3_2, p3_2, g5_4, p5_4, g7_6, p7_6;
    wire g9_8, p9_8, g11_10, p11_10, g13_12, p13_12, g15_14, p15_14;
    wire g17_16, p17_16, g19_18, p19_18, g21_20, p21_20, g23_22, p23_22;
    wire g25_24, p25_24, g27_26, p27_26, g29_28, p29_28, g31_30, p31_30;

    wire g3_0, p3_0, g7_4, p7_4, g11_8, p11_8, g15_12, p15_12;
    wire g19_16, p19_16, g23_20, p23_20, g27_24, p27_24, g31_28, p31_28;

    wire g7_0, p7_0, g15_8, p15_8, g23_16, p23_16, g31_24, p31_24;
    wire g15_0, p15_0, g31_16, p31_16;
    wire g31_0, p31_0;

    // ----- Stage 1 -----
    Black bc1 (g[1], p[1], g[0], p[0], g1_0, p1_0);
    Black bc3 (g[3], p[3], g[2], p[2], g3_2, p3_2);
    Black bc5 (g[5], p[5], g[4], p[4], g5_4, p5_4);
    Black bc7 (g[7], p[7], g[6], p[6], g7_6, p7_6);
    Black bc9 (g[9], p[9], g[8], p[8], g9_8, p9_8);
    Black bc11(g[11],p[11],g[10],p[10],g11_10,p11_10);
    Black bc13(g[13],p[13],g[12],p[12],g13_12,p13_12);
    Black bc15(g[15],p[15],g[14],p[14],g15_14,p15_14);
    Black bc17(g[17],p[17],g[16],p[16],g17_16,p17_16);
    Black bc19(g[19],p[19],g[18],p[18],g19_18,p19_18);
    Black bc21(g[21],p[21],g[20],p[20],g21_20,p21_20);
    Black bc23(g[23],p[23],g[22],p[22],g23_22,p23_22);
    Black bc25(g[25],p[25],g[24],p[24],g25_24,p25_24);
    Black bc27(g[27],p[27],g[26],p[26],g27_26,p27_26);
    Black bc29(g[29],p[29],g[28],p[28],g29_28,p29_28);
    Black bc31(g[31],p[31],g[30],p[30],g31_30,p31_30);

    // ----- Stage 2 -----
    Black bc3_0 (g3_2, p3_2, g1_0, p1_0, g3_0, p3_0);
    Black bc7_4 (g7_6, p7_6, g5_4, p5_4, g7_4, p7_4);
    Black bc11_8 (g11_10,p11_10,g9_8, p9_8, g11_8,p11_8);
    Black bc15_12(g15_14,p15_14,g13_12,p13_12,g15_12,p15_12);
    Black bc19_16(g19_18,p19_18,g17_16,p17_16,g19_16,p19_16);
    Black bc23_20(g23_22,p23_22,g21_20,p21_20,g23_20,p23_20);
    Black bc27_24(g27_26,p27_26,g25_24,p25_24,g27_24,p27_24);
    Black bc31_28(g31_30,p31_30,g29_28,p29_28,g31_28,p31_28);

    // ----- Stage 3 -----
    Black bc7_0  (g7_4, p7_4, g3_0, p3_0, g7_0, p7_0);
    Black bc15_8 (g15_12,p15_12,g11_8,p11_8,g15_8,p15_8);
    Black bc23_16(g23_20,p23_20,g19_16,p19_16,g23_16,p23_16);
    Black bc31_24(g31_28,p31_28,g27_24,p27_24,g31_24,p31_24);

    // ----- Stage 4 -----
    Black bc15_0 (g15_8, p15_8, g7_0, p7_0, g15_0, p15_0);
    Black bc31_16(g31_24,p31_24,g23_16,p23_16,g31_16,p31_16);

    // ----- Stage 5 -----
    Black bc31_0 (g31_16,p31_16,g15_0,p15_0,g31_0,p31_0);

    // ----- Gray cells -----
    Gray gc0 (g[0],   p[0],   c[0], c[1]);
    Gray gc1 (g1_0,   p1_0,   c[0], c[2]);
    Gray gc2 (g[2],   p[2],   c[2], c[3]);
    Gray gc3 (g3_0,   p3_0,   c[0], c[4]);
    Gray gc4 (g[4],   p[4],   c[4], c[5]);
    Gray gc5 (g5_4,   p5_4,   c[4], c[6]);
    Gray gc6 (g[6],   p[6],   c[6], c[7]);
    Gray gc7 (g7_0,   p7_0,   c[0], c[8]);
    Gray gc8 (g[8],   p[8],   c[8], c[9]);
    Gray gc9 (g9_8,   p9_8,   c[8], c[10]);
    Gray gc10(g[10],  p[10],  c[10], c[11]);
    Gray gc11(g11_8,  p11_8,  c[8], c[12]);
    Gray gc12(g[12],  p[12],  c[12],c[13]);
    Gray gc13(g13_12, p13_12, c[12],c[14]);
    Gray gc14(g[14],  p[14],  c[14],c[15]);
    Gray gc15(g15_0,  p15_0,  c[0], c[16]);
    Gray gc16(g[16],  p[16],  c[16],c[17]);
    Gray gc17(g17_16, p17_16, c[16],c[18]);
    Gray gc18(g[18],  p[18],  c[18],c[19]);
    Gray gc19(g19_16, p19_16, c[16],c[20]);
    Gray gc20(g[20],  p[20],  c[20],c[21]);
    Gray gc21(g21_20, p21_20, c[20],c[22]);
    Gray gc22(g[22],  p[22],  c[22],c[23]);
    Gray gc23(g23_16, p23_16, c[16],c[24]);
    Gray gc24(g[24],  p[24],  c[24],c[25]);
    Gray gc25(g25_24, p25_24, c[24],c[26]);
    Gray gc26(g[26],  p[26],  c[26],c[27]);
    Gray gc27(g27_24, p27_24, c[24],c[28]);
    Gray gc28(g[28],  p[28],  c[28],c[29]);
    Gray gc29(g29_28, p29_28, c[28],c[30]);
    Gray gc30(g[30],  p[30],  c[30],c[31]);

    assign cout = g31_0 | (p31_0 & c[0]);

    Sum s0(p[0], c[0], s[0]);
    Sum s1(p[1], c[1], s[1]);
    Sum s2(p[2], c[2], s[2]);
    Sum s3(p[3], c[3], s[3]);
    Sum s4(p[4], c[4], s[4]);
    Sum s5(p[5], c[5], s[5]);
    Sum s6(p[6], c[6], s[6]);
    Sum s7(p[7], c[7], s[7]);
    Sum s8(p[8], c[8], s[8]);
    Sum s9(p[9], c[9], s[9]);
    Sum s10(p[10], c[10], s[10]);
    Sum s11(p[11], c[11], s[11]);
    Sum s12(p[12], c[12], s[12]);
    Sum s13(p[13], c[13], s[13]);
    Sum s14(p[14], c[14], s[14]);
    Sum s15(p[15], c[15], s[15]);
    Sum s16(p[16], c[16], s[16]);
    Sum s17(p[17], c[17], s[17]);
    Sum s18(p[18], c[18], s[18]);
    Sum s19(p[19], c[19], s[19]);
    Sum s20(p[20], c[20], s[20]);
    Sum s21(p[21], c[21], s[21]);
    Sum s22(p[22], c[22], s[22]);
    Sum s23(p[23], c[23], s[23]);
    Sum s24(p[24], c[24], s[24]);
    Sum s25(p[25], c[25], s[25]);
    Sum s26(p[26], c[26], s[26]);
    Sum s27(p[27], c[27], s[27]);
    Sum s28(p[28], c[28], s[28]);
    Sum s29(p[29], c[29], s[29]);
    Sum s30(p[30], c[30], s[30]);
    Sum s31(p[31], c[31], s[31]);

endmodule
