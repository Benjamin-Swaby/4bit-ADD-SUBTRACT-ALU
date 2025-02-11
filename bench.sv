module tb_ALU;

    // Inputs
    reg A [3:0];
    reg B [3:0];
    reg op; // 0 for add, 1 for subtract

    // Outputs
    wire result [3:0];
    wire carry_out;

    // Instantiate the ALU
    ALU uut (
        .A(A),
        .B(B),
        .s(op),
        .Q(result),
        .c(carry_out)
    );

    initial begin
        // Initialize Inputs
        A[0] = 0;
        A[1] = 0;
        A[2] = 0;
        A[3] = 0;

        B[0] = 0;
        B[1] = 0;
        B[2] = 0;
        B[3] = 0;
        op = 0;

        // Wait for global reset
        #10;

        A[0] = 1;
        A[1] = 1;
        A[2] = 0;
        A[3] = 0;

        B[0] = 1;
        B[1] = 0;
        B[2] = 0;
        B[3] = 0;
        op = 0;


        #10;


        A[0] = 1;
        A[1] = 0;
        A[2] = 1;
        A[3] = 0;

        B[0] = 1;
        B[1] = 1;
        B[2] = 0;
        B[3] = 0;
        op = 0;

        #10;

        // Test subtraction
        A[0] = 0;
        A[1] = 0;
        A[2] = 1;
        A[3] = 0;

        B[0] = 0;
        B[1] = 1;
        B[2] = 0;
        B[3] = 0;
        op = 1;


        #10;

        A[0] = 0;
        A[1] = 1;
        A[2] = 1;
        A[3] = 0;

        B[0] = 1;
        B[1] = 1;
        B[2] = 0;
        B[3] = 0;
        op = 1;

        #10;

        // Finish simulation
        $finish;
    end

    initial begin    

     $monitor("At time %t, A = %b%b%b%b, B = %b%b%b%b, op = %b, result = %b%b%b%b, carry_out = %b",
             $time, A[3], A[2], A[1], A[0], B[3], B[2], B[1], B[0], op, result[3], result[2], result[1], result[0], carry_out);
    end

endmodule