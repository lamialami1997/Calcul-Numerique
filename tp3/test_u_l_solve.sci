size_max = 100;
steps = 100;

[fic1, mod1] = mopen("i_solve.dat", "w");
[fic2, mod2] = mopen("u_solve.dat", "w");

for size_ = 1:size_max
    err_av1 = 0;
    err_ar1 = 0;
    err_av2 = 0;
    err_ar2 = 0;
    cond1 = 0;
    cond2 = 0;
    disp(string(size_)+"/"+string(size_max));
    for x = 1:steps

        M = rand(size_,size_) + ones(size_,size_);
        U = triu(M);
        L = tril(M);

        b = rand(size_,1) + ones(size_,1);

        xl_ref = L\b;
        xl = isolve(L,b);
        err_av1 = err_av1 + norm(xl_ref-xl)/norm(xl_ref);
        err_ar1 = err_ar1 + norm(b-L*xl)/(norm(L)*norm(xl));
        cond1 = cond1 + cond(L);
        
        xu_ref = U\b;
        xu = usolve(U,b);
        err_av2 = err_av2 + norm(xu_ref-xu)/norm(xu_ref);
        err_ar2 = err_ar2 + norm(b-U*xu)/(norm(U)*norm(xu));
        cond2 = cond2 + cond(U);

    end 
    mfprintf(fic1, "%.17lf %.17lf %.17lf %d\n", err_av1/steps, err_ar1/steps, cond1/steps,size_);
    mfprintf(fic2, "%.17lf %.17lf %.17lf %d\n",  err_av2/steps, err_ar2/steps, cond2/steps, size_);
end
mclose (fic1);
mclose(fic2);
