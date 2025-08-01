module Brent_Kung_32bit (a, b, cin, s, cout); 
    input [31:0] a, b; 
    input cin; 
    output [31:0] s; 
    output cout; 
    wire [3:0] c; 
 
    Brent_Kung_8bit bka0 (a[7:0], b[7:0], cin, s[7:0], c[0]); 
    Brent_Kung_8bit bka1 (a[15:8], b[15:8], c[0], s[15:8], c[1]); 
    Brent_Kung_8bit bka2 (a[23:16], b[23:16], c[1], s[23:16], c[2]); 
    Brent_Kung_8bit bka3 (a[31:24], b[31:24], c[2], s[31:24], cout); 
endmodule