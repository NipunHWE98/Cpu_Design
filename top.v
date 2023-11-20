module top( input  clk, reset,
            output  [31:0] writedata, dataadr,
            output  memwrite);

     wire [31:0] pc, readdata;
	  wire[23:0]instr;

    // instantiate processor and memories
    Processor_ISA Process(clk, reset, pc, instr, memwrite, dataadr,
        writedata, readdata);
    imem InstructionMemory(pc[7:2], instr);
    dmem DataMemory(clk, memwrite, dataadr, writedata, readdata);
endmodule
