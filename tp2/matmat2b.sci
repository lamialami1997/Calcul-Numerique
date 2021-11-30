//Algorithm 8 Produit Matrice-Matrice "ijk" avec 2 boucles
//Require: A ∈ R m×p , B ∈ R p×n et C ∈ R m×n

function C =matmat2b(A,B)
[m,p]=size(A);
[p,n]=size(B);
 C=zeros(m,n);

    for i=1 :m
        for j=1:n
        C(i,j)=A(i,:)*B(:,j) + C(i,j);
        end
    end 
endfunction 
funcprot(0)
