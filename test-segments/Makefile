load_gs:
	clang -c hello_pierre.c -mllvm --generate-segment-scheme -mllvm --segment-frame-pointer -mllvm --generate-segment-globals -fpic
	clang -o load_gs load_gs.c hello_pierre.o -fpic
	
