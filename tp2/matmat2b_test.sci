//A=rand(10,10);
//B=rand(10,10);
//D=rand(100,100);
//E=rand(100,100)
F=rand(100000,100000);
G=rand(100000,100000)


tic()

//C =matmat2b(A,B) 
//C =matmat2b(D,E) 
C =matmat2b(F,G) 

toc()
disp(toc())
//C =matmat1b(A,B) ---> 0.002578
//C =matmat1b(D,E) --->  0.178983

//C =matmat1b(F,G) ---> Impossible d'allouer 10.5 GB mémoire.
