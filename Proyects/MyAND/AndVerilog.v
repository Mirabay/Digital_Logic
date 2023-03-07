//verilog esta medio raro

// Iniciamos un modulo, le decimos que variables usara
module AndVerilog(a1,b1,y);

	// Delaramos esas variables como entreadas 
	input a1,b1;
	// o salidas
	output y;

// En assign declaramos la logica de nuestro modulo
assign y = a1 & b1;

// Cerramos el modulo
endmodule
//no hace falta un punto y como al final