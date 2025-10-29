module half_sub(
input A, B,
output Y, Borrow

);
assign Y = A ^ B; // Difference
assign Borrow = (~A) & B; // Borrow logic

endmodule
