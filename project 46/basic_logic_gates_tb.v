`timescale 1ns/1ps

module basic_logic_gates_tb;

    reg A;
    reg B;

    wire AND_gate;
    wire OR_gate;
    wire NOT_gate;
    wire NAND_gate;
    wire NOR_gate;
    wire XOR_gate;
    wire XNOR_gate;

    basic_logic_gates uut (
        .A(A),
        .B(B),
        .AND_gate(AND_gate),
        .OR_gate(OR_gate),
        .NOT_gate(NOT_gate),
        .NAND_gate(NAND_gate),
        .NOR_gate(NOR_gate),
        .XOR_gate(XOR_gate),
        .XNOR_gate(XNOR_gate)
    );

    initial begin

        // Test 00
        A = 0;
        B = 0;
        #10;

        // Test 01
        A = 0;
        B = 1;
        #10;

        // Test 10
        A = 1;
        B = 0;
        #10;

        // Test 11
        A = 1;
        B = 1;
        #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | A=%b B=%b | AND=%b OR=%b NOT=%b NAND=%b NOR=%b XOR=%b XNOR=%b",
                 $time,
                 A, B,
                 AND_gate,
                 OR_gate,
                 NOT_gate,
                 NAND_gate,
                 NOR_gate,
                 XOR_gate,
                 XNOR_gate);
    end

endmodule