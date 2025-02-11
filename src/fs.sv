module full_subtractor_1 (
    input wire a,
    input wire b,
    input wire bin,

    output wire q,
    output wire bout

);


wire b1, q1, b2;

half_subtractor_1 hs1 (
    .a(a),
    .b(b),
    .q(q1),
    .bout(b1)
);

half_subtractor_1 hs2 (
    .a(q1),
    .b(bin),
    .q(q),
    .bout(b2)
);

assign bout = b1 | b2;


endmodule


module RBS_4 (
    input wire a[3:0],
    input wire b[3:0],

    output wire q[3:0],
    output bout
);

wire b1, b2, b3;

half_subtractor_1 hs1 (
    .a(a[0]),
    .b(b[0]),
    .q(q[0]),
    .bout(b1)
);

full_subtractor_1 fs1 (
    .a(a[1]),
    .b(b[1]),
    .q(q[1]),
    .bin(b1),
    .bout(b2)
);

full_subtractor_1 fs2 (
    .a(a[2]),
    .b(b[2]),
    .q(q[2]),
    .bin(b2),
    .bout(b3)
);

full_subtractor_1 fs3 (
    .a(a[3]),
    .b(b[3]),
    .q(q[3]),
    .bin(b2),
    .bout(bout)
);


endmodule