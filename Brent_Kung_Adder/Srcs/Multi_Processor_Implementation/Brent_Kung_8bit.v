module Brent_Kung_8bit (
    input  [7:0] a, b,
    input cin,
    output [7:0] s,
    output cout
);
    wire [7:0] p, g;
    wire [7:0] c;

    assign c[0] = cin;

    
    Propagate p0 (a[0], b[0], p[0]);  Generate g0 (a[0], b[0], g[0]);
    Propagate p1 (a[1], b[1], p[1]);  Generate g1 (a[1], b[1], g[1]);
    Propagate p2 (a[2], b[2], p[2]);  Generate g2 (a[2], b[2], g[2]);
    Propagate p3 (a[3], b[3], p[3]);  Generate g3 (a[3], b[3], g[3]);
    Propagate p4 (a[4], b[4], p[4]);  Generate g4 (a[4], b[4], g[4]);
    Propagate p5 (a[5], b[5], p[5]);  Generate g5 (a[5], b[5], g[5]);
    Propagate p6 (a[6], b[6], p[6]);  Generate g6 (a[6], b[6], g[6]);
    Propagate p7 (a[7], b[7], p[7]);  Generate g7 (a[7], b[7], g[7]);

    // Intermediate signals for black cells
    wire g1_0, p1_0, g3_2, p3_2, g5_4, p5_4, g7_6, p7_6;
    wire g3_0, p3_0, g7_4, p7_4;
    wire g7_0, p7_0;

    // Level 1
    Black bc1 (g[1], p[1], g[0], p[0], g1_0, p1_0);
    Black bc2 (g[3], p[3], g[2], p[2], g3_2, p3_2);
    Black bc3 (g[5], p[5], g[4], p[4], g5_4, p5_4);
    Black bc4 (g[7], p[7], g[6], p[6], g7_6, p7_6);

    // Level 2
    Black bc5 (g3_2, p3_2, g1_0, p1_0, g3_0, p3_0);
    Black bc6 (g7_6, p7_6, g5_4, p5_4, g7_4, p7_4);

    // Level 3
    Black bc7 (g7_4, p7_4, g3_0, p3_0, g7_0, p7_0);

    Gray gc1 (g[0], p[0], c[0], c[1]);
    Gray gc2 (g1_0, p1_0, c[0], c[2]);
    Gray gc3 (g[2], p[2], c[2], c[3]);
    Gray gc4 (g3_0, p3_0, c[0], c[4]);
    Gray gc5 (g[4], p[4], c[4], c[5]);
    Gray gc6 (g5_4, p5_4, c[4], c[6]);
    Gray gc7 (g7_0, p7_0, c[0], c[7]);

    assign cout = g7_0 | (p7_0 & c[0]);

    Sum s0(p[0], c[0], s[0]);
    Sum s1(p[1], c[1], s[1]);
    Sum s2(p[2], c[2], s[2]);
    Sum s3(p[3], c[3], s[3]);
    Sum s4(p[4], c[4], s[4]);
    Sum s5(p[5], c[5], s[5]);
    Sum s6(p[6], c[6], s[6]);
    Sum s7(p[7], c[7], s[7]);

endmodule