
//exec lu3b.sci
//exec lu1b.sci

size_max = 100;
steps = 5;

[fic, mod] = mopen("test_lu.dat", "w");

for size_ = 1:size_max
    time3b = 0.0;
    time1b = 0.0;
    verif_LU3b = 0.0;
    verif_LU1b= 0.0;
    disp(string(size_)+'/'+string(size_max));
    for i = 1:steps
        A = rand(size_,size_) + ones(size_,size_);
        tic();
        [L,U] = mylu3b(A);
        time3b = time3b + toc();
        verif_LU3b = verif_LU3b + norm(A - L*U);

        tic();
        [L2,U2] = mylu1b(A);
        time1b = time1b + toc();
        verif_LU1b = verif_LU1b + norm(A - L2*U2);
    end
    mfprintf(fic, "%.17lf %.17lf %.17lf %.17lf %d\n", verif_LU3b/steps, time3b/steps, verif_LU1b/steps, time1b/steps, size_);
end
mclose (fic);
