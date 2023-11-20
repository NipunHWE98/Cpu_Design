module controller(  input  [4:0] op,
                    input  zero,
                    output  memtoreg, memwrite,
                    output  pcsrc, alusrc,
                    output  regdst, regwrite,
                    output  jump,lorK,
                    output  [2:0] alucontrol);
    wire [2:0] aluop;
    wire branch;

    maindec md( op, memtoreg, memwrite, branch,
                alusrc, regdst, regwrite, jump,lorK, aluop);
    

    assign pcsrc = branch & zero;
endmodule