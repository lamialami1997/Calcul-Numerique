//A=rand(10,10);
//B=rand(10,10);
D=rand(100,100);
E=rand(100,100);
//F=rand(100000,100000);
//G=rand(100000,100000)


tic()
//C =matmat3b(A,B) 
C =matmat3b(D,E)
//C =matmat3b(F,G)
toc()
disp(toc())
//C =matmat1b(A,B) ---> 0.023274
//C =matmat1b(D,E) --->  2.165674

//C =matmat1b(F,G) ---> Impossible d'allouer 10.5 GB mémoire.
