module basic_logic_gates (
    input  wire A,
    input  wire B,

    output wire AND_gate,
    output wire OR_gate,
    output wire NOT_gate,
    output wire NAND_gate,
    output wire NOR_gate,
    output wire XOR_gate,
    output wire XNOR_gate
);

    assign AND_gate  = A & B;
    assign OR_gate   = A | B;
    assign NOT_gate  = ~A;
    assign NAND_gate = ~(A & B);
    assign NOR_gate  = ~(A | B);
    assign XOR_gate  = A ^ B;
    assign XNOR_gate = ~(A ^ B);

endmodule