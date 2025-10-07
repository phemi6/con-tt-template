module lfsr (
	clk_i,
	reset_i,
	lfsr_state_o
);
	reg _sv2v_0;
	input wire clk_i;
	input wire reset_i;
	output reg [31:0] lfsr_state_o;
	reg [31:0] lfsr_p;
	reg [31:0] lfsr_n;
	always @(*) begin
		if (_sv2v_0)
			;
		lfsr_n = (lfsr_p << 1) | {31'b0000000000000000000000000000000, (((((((lfsr_p[27] ^ lfsr_p[23]) ^ lfsr_p[19]) ^ lfsr_p[18]) ^ lfsr_p[15]) ^ lfsr_p[11]) ^ lfsr_p[7]) ^ lfsr_p[4]) ^ lfsr_p[1]};
		lfsr_state_o = lfsr_p;
	end
	always @(posedge clk_i or posedge reset_i)
		if (reset_i)
			lfsr_p <= 32'd11927533;
		else
			lfsr_p <= lfsr_n;
	initial _sv2v_0 = 0;
endmodule
