module Gray(input g_high, p_high, g_low,
                output g_out);
    assign g_out = g_high | (p_high & g_low);
endmodule