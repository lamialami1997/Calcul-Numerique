//exec matmat1b.sci
//exec matmat2b.sci
//exec matmat3b.sci
max_size = 100;


[fic,mod] = mopen("mesure_temps.dat", "w");

for size_ = 10:max_size;
    disp(string(size_)+"/"+string(max_size));
    A = rand(size_,size_);
    B = rand(size_,size_);
    tic();
    C = matmat1b(A,B);
    t1 = toc();
    tic();
    C = matmat2b(A,B);
    t2 = toc();
    tic();
    C = matmat3b(A,B);
    t3 = toc();
    mfprintf(fic, "%lf %lf %lf %d\n", t1, t2, t3, size_);
end

mclose(fic);
