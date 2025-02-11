module half_subtractor_1 (
    input wire a,
    input wire b,

    output wire q,
    output wire bout
)


assign q = a ^ b;
assign bout = ~a & b;


endmodule