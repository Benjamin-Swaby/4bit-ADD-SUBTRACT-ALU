module full_adder_1 (
    input wire a,
    input wire b,
    input wire cin,

    output wire q,
    output wire cout
);


wire sum1, carry1, carry2;

half_adder_1 ha1 (
    .a(a),
    .b(b),
    .q(sum1),
    .cout(carry1)
);

half_adder_1 ha2 (
    .a(sum1),
    .b(cin),
    .q(q),
    .cout(carry2)
);

assign cout = carry1 | carry2;


endmodule


module RCA_4 (
    input wire a[3:0],
    input wire b[3:0],

    output wire q[3:0],
    output wire cout
);

wire c1, c2, c3;

half_adder_1 ha1 (
    .a(a[0]),
    .b(b[0]),
    .q(q[0]),
    .cout(c1)
);

full_adder_1 fa1 (
    .a(a[1]),
    .b(b[1]),
    .cin(c1),
    .q(q[1]),
    .cout(c2)
);

full_adder_1 fa2 (
    .a(a[2]),
    .b(b[2]),
    .cin(c2),
    .q(q[2]),
    .cout(c3)
);

full_adder_1 fa3 (
    .a(a[3]),
    .b(b[3]),
    .cin(c3),
    .q(q[3]),
    .cout(cout)
);

endmodule
