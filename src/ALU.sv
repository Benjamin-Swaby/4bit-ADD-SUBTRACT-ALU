module ALU (
    input wire A [3:0], // 4bit oprand 1
    input wire B [3:0], // 4bit oprand 2
    input wire s, // 1 bit "instruction" high for addition, low for sub

    output wire Q [3:0], // output
    output wire c // carry / borrow left.
);

wire adder_out[3:0];
wire sub_out[3:0]; // internal wires for results
wire c_add, b_sub; // internal wires for carry/borrow

RCA_4 adder (
    .a(A),
    .b(B),
    .q(adder_out),
    .cout(c_add)
);

RBS_4 sub (
    .a(A),
    .b(B),
    .q(sub_out),
    .bout(b_sub)
);


MUX_2to1_4 mux1 (
    .I1(adder_out),  // add high
    .I2(sub_out),    // sub low
    .s(s),
    .q(Q) // set output to correct result
);

MUX_2to1_1 mux2 (
    .I1(c_add), // add high
    .I2(b_sub), // sub low
    .s(s),
    .q(c)
);


endmodule