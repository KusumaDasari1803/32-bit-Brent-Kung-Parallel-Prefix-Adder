`timescale 1ns/1ps

module TB;

    reg [31:0] a, b;
    reg cin;
    wire [31:0] s;
    wire cout;

        Brent_Kung dut (
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
        .cout(cout)
    );

    // Task for a single test
    task run_test(input [31:0] ta, input [31:0] tb, input tcin);
        reg [32:0] expected; // 33 bits to include carry
        begin
            a = ta; 
            b = tb; 
            cin = tcin;
            #5; // allow signals to settle
            expected = ta + tb + tcin;
            $display("a=%h b=%h cin=%b => sum=%h cout=%b | Expected sum=%h cout=%b",
                     a, b, cin, s, cout, expected[31:0], expected[32]);
            if ({cout, s} !== expected)
                $display("Test Failed!");
            else
                $display("Test Passed!");
        end
    endtask

    initial begin

        // Edge cases
        run_test(32'h00000000, 32'h00000000, 0);
        run_test(32'h00000001, 32'h00000001, 0);
        run_test(32'hFFFFFFFF, 32'h00000001, 0);
        run_test(32'hAAAAAAAA, 32'h55555555, 1);
        run_test(32'hF0F0F0F0, 32'h0F0F0F0F, 0);
        run_test(32'h12345678, 32'h87654321, 1);
        run_test(32'hFFFFFFFF, 32'hFFFFFFFF, 1);

        // Random tests
        repeat (15) begin
            run_test($random, $random, $random % 2);
        end

        $display("? All tests completed.");
        $stop;
    end

endmodule
