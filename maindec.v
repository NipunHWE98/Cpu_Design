module maindec( input  [4:0] op,
                output  memtoreg, memwrite,
                output  branch, alusrc,
                output  regdst, regwrite,
                output  jump,lorK,
                output  [2:0] aluop);

    reg [10:0] controls;

    assign {regwrite, regdst, alusrc, branch, memwrite,
            memtoreg, jump,lorK,aluop} = controls;
    always @ (*)
        case(op)
				// RTYPE
            5'b00000: controls <= 11'b1000010x010;//add, 
            5'b00001: controls <= 11'b1000010x110; // sub
            5'b00010: controls <= 11'b1000010x011; // mul
            5'b00011: controls <= 11'b1000010x100; // div
            5'b00100: controls <= 11'b1000010x000; // And
            5'b00101: controls <= 11'b1000010x001; // or
				5'b00110: controls <= 11'b1000010x001; //not
				5'b00111: controls <= 11'b1000010x110; //compare
				//Itype
				5'b01000:controls<=11'b1110000x010;//copyMR
				5'b01001:controls<=11'b0x101x0x010;//copyRM
				5'b01010:controls<=11'b1111010x110;//BEQZERO
				//jtype
				5'b01011:controls<=11'bxxxxx10010;//go
				//k type
				5'b10000:controls=11'b10100101010;//LRI
				
            default: controls <= 11'bxxxxxxxxx; 
        endcase
endmodule