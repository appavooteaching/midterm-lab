addA: addA.o
	ld -g addA.o -o addA
addA.o: addA.s
	as -g addA.s -o addA.o

loopA: loopA.o
	ld -g loopA.o -o loopA
loopA.o: loopA.s
	as -g loopA.s -o loopA.o

condA: condA.o
	ld -g condA.o -o condA
condA.o: condA.s
	as -g condA.s -o condA.o

pgmv1: pgmv1.o
	ld -g pgmv1.o -o pgmv1
pgmv1.o: pgmv1.s
	as -g pgmv1.s -o pgmv1.o
