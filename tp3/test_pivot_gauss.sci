//exec pivot_partiel.sci
size_max = 50;
steps = 100;

[fic, mod] = mopen("pivot_partiel.dat", "w");

for size_ = 1:size_max
    
    disp(string(size_)+"/"+string(size_max));
    for x = 1:steps
        
        A = rand(size_,size_) + ones(size_,size_);
        tic();
        [L,U,P]=mylu(A);
        toc();
        disp(toc());
    end 
    mfprintf(fic, "%.17lf  \n",toc());
  end 
mclose (fic);
