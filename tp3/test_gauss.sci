//exec gausskij3b.sci

size_max = 20;
steps = 1000;
[fic, mod] = mopen("gaussijk.dat", "w");
for size_ = 1:size_max
    err_av = 0;
    err_ar = 0;
    cond1 = 0;
    disp(string(size_)+"/"+string(size_max));
    for  x = 1:steps 
        A = rand(size_,size_) + ones(size_,size_);
        b = rand(size_,1) + ones(size_,1);

        xex = A\b;
        x = gausskij3b(A,b);

        err_av = err_av + norm(xex-x)/norm(xex);
        err_ar = err_ar + norm(b-A*x)/(norm(A)*norm(x));
        cond1 = cond1 + cond(A);
    end
    mfprintf(fic, "%.17lf %.17lf %.17lf %d\n", err_av/steps , err_ar/steps , cond1/steps , size_);
end
mclose (fic);
