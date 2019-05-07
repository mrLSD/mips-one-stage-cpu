// mips - main CPU logic
module mips(
	input logic clk, reset,
	input logic [31:0] instr,
);

// Controller flow
controller controller_instance (
	.opcode(instr[31:26]),
	.funct(instr[20:10])
);

// Sign extend number
logic sign_extend_number;
sign_extend sign_extend_instance (
	.number(instr[15:10]),
	.ext_number(sign_extend_number)
);

endmodule


// Controller - basic controller for CPU flow 
module controller(
	input logic [6:0] opcode,
	input logic [5:0] funct,
);
	
endmodule


// register_file - basic operations with 
// registers
module register_file(
	input logic [4:0] rt,
);
endmodule


// sign_extend - extend signed number
module sign_extend(
	input logic [15:0] number,
	output logic [31:0] ext_number,
);

assign ext_number = {{16{number[15]}}, number};
 
endmodule

