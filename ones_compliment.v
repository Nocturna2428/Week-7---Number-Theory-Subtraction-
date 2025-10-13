module ones_compliment(
input [3:0] A, B,
output [3:0] Y
);

wire [3:0] APlusB;
wire [3:0] carry;
wire around;
wire [3:0] secondcarry;

//assign notB = ~B; // One’s complement of B

//wire c1, c2, c3, c4;
full_adder Afa0_ista(
        .A(A[0]),
        .B(B[0]),
        .C(0), // Fix to zero
        .Y(APlusB[0]),
        .cout(carry[0])
    );
    
full_adder Afa1_ista(
        .A(A[1]),
        .B(B[1]),
        .C(carry[0]), // Fix to zero
        .Y(APlusB[1]),
        .cout(carry[1])
    );
    
full_adder Afa2_ista(
        .A(A[2]),
        .B(B[2]),
        .C(carry[1]), // Fix to zero
        .Y(APlusB[2]),
        .cout(carry[2])
    );
    
full_adder Afa3_ista(
        .A(A[3]),
        .B(B[3]),
        .C(carry[2]), // Fix to zero
        .Y(APlusB[3]),
        .cout(carry[3])
    );
    
full_adder Afa4_ista(
        .A(APlusB[0]),
        .B(0),
        .C(around), // Fix to zero
        .Y(Y[0]),
        .cout(secondcarry[0])
    );

full_adder Afa5_ista(
        .A(APlusB[1]),
        .B(0),
        .C(secondcarry[0]), // Fix to zero
        .Y(Y[1]),
        .cout(secondcarry[1])
    ); 

full_adder Afa6_ista(
        .A(APlusB[2]),
        .B(0),
        .C(secondcarry[1]), // Fix to zero
        .Y(Y[2]),
        .cout(secondcarry[2])
    ); 
    
full_adder Afa7_ista(
        .A(APlusB[2]),
        .B(0),
        .C(secondcarry[3]), // Fix to zero
        .Y(Y[3]),
        .cout(0)
    ); 

endmodule