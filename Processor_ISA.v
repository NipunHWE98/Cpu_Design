module Processor_ISA(input  clk, reset,
            output  [31:0] pc,
            input  [31:0] instr,
            output  memwrite,
            output  [31:0] aluout, writedata,
            input  [31:0] readdata);

    wire memtoreg, alusrc, regdst,
                regwrite, jump,lorK, pcsrc, zero;

    wire [2:0] alucontrol;
    controller c(instr[23:19], zero,
                    memtoreg, memwrite, pcsrc,
                    alusrc, regdst, regwrite, jump,lorK,
                    alucontrol);
						  
    datapath dp(clk, reset, memtoreg, pcsrc,
                alusrc, regdst, regwrite, jump,lorK,
                alucontrol,
                zero, pc, instr,
                aluout, writedata, readdata);
					 
endmodule
