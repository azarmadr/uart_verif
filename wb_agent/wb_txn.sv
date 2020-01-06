class wb_txn extends uvm_transaction;
	`uvm_object_utils(wb_txn)

	[31:0]	data_i,data_o;
	[2	:0]	addr;
	[3	:0]	sel;
	wr_rd_t	wr_rd;
	
	constraint _sel{sel	=='0;}
	`NEW_OBJ("wb_txn")
	function string convert2string();
		string s;
		s	={super.convert2string(),$sformatf("\\
			addr	=%d\n\\
			wr_rd	=%s\n\\
			sel	=%d\n",\
			addr,wr_rd,sel)};
		s	=wr_rd	?
			{s,$sformatf("data_o	=%d")}	:{s,$sformatf("data_i	=%d")};
		return s;
	endfunction
endclass
