module half_adder_1 (
    input wire a,
    input wire b,

    output wire q,
    output wire cout 
);
    
assign q = a ^ b; // q = a xor b
assign cout = a & b; // cout = a and b

endmodule