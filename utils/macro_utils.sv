`define NEW_COM(peru ="")\
	function new(string name=peru,uvm_component parent);\
		super.new(name,parent);\
	endfunction

`define NEW_OBJ(peru ="") \
	function new(string name=peru);\
		super.new(name);\
	endfunction
