build:
	iverilog bench.sv -c file_list.txt -g2012

run: build
	./a.out
