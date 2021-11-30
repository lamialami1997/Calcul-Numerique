steps = 20;
max_size = 1010;

[fic,mod] = mopen("data/Exo7.dat", "w");

for size_ = 10:100:max_size
    err_av = 0;
    err_ar = 0;
    cond1 = 0;
    disp(string(size_)+"/"+string(max_size))
    for i = 1 : steps
        A = rand(size_,size_) + ones(size_,size_);
        xex = rand(size_,1) + ones(size_,1);
        b = A*xex;
        x = A\b;
        err_av = err_av + norm(xex - x)/norm(xex);
        err_ar = err_ar + norm(b - A*x)/(norm(A)*norm(x));
        cond1 = cond1 + cond(A);
    end

   mfprintf(fic, "%.17lf %.17lf %.17lf %d\n", err_av/size_, err_ar/steps, cond1/steps, size_);
end
mclose(fic);
