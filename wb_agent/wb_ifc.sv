interface wb_ifc(input clk,wb_rst);//can be parameterized
	//		Width		Port			I/O		Description
	logic				WB_RST_I;//	Input		Asynchronous Reset
	logic	[2	:0]	WB_ADDR_I;//Input		Used for register selection
	logic	[3	:0]	WB_SEL_I;//	Input		Select signal
	logic	[31:0]	WB_DAT_I;//	Input		Data input
	logic	[31:0]	WB_DAT_O;//	Output	Data output
	logic				WB_WE_I;	//	Input		Write or read cycle selection
	logic				WB_STB_I;//	Input		Specifies transfer cycle
	logic				WB_CYC_I;//	Input		A bus cycle is in progress
	logic				WB_ACK_O;//	Output	Acknowledge of a transfer

endinterface
