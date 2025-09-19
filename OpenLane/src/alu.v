
module alu (
	input wire clk,
	input wire rst,
	input wire [1:0] op,
	input wire [3:0] a,
	input wire [3:0] b,
	output reg [3:0] y,
	output reg carry
	
);
	reg [4:0] tmp;
	always @(posedge clk or posedge rst) begin
		if (rst) begin
			y <= 4'b0;
			carry <= 1'b0;
		end else begin
			case (op)
				2'b00: tmp <= {1'b0, a} + {1'b0, b};
                		2'b01: tmp <= {1'b0, a} - {1'b0, b};
                		2'b10: tmp <= {1'b0, (a & b)};
                		2'b11: tmp <= {1'b0, (a | b)};
                		default: tmp <= 5'b0;
			endcase
			y <= tmp[3:0];
			carry <= tmp[4];
		end
	end
endmodule
