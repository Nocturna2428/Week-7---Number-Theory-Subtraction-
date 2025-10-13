module half_sub(
input A,
input B,
output Y,
output Borrow
);
assign Y = A ^ B; // Difference
assign Borrow = (~A) & B; // Borrow logic
endmodule