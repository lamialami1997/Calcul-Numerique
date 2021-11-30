function[x]=isolve(L,b)
n = size(b)(1); // vecteur colonne
x=zeros(n,1);
x(n) = b(n)/L(n, n);
for i = 2:n
    x(i)=(b(i)-L(i, 1:(i-1))*x(1:(i-1)))/L(i,i);
end

endfunction
funcprot(0)
