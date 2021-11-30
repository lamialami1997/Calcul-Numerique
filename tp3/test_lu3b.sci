//exec mylu3b.sci
size_ = 5;

A = rand(size_,size_) + ones(size_,size_);

[L,U] = mylu3b(A);

verif_LU = A - L*U;
disp(norm(verif_LU));
