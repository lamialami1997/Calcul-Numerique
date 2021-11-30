//Algorithm 7 Produit Matrice-Matrice "ijk" avec 3  boucles
//Require: A ∈ R m×p , B ∈ R p×n et C ∈ R m×n

function C =matmat3b(A,B)
[m,p]=size(A);
[p,n]=size(B);
 C=zeros(m,n);

    for i=1 :m
        for j=1:n
            for k=1 : p
                C(i,j)=A(i,k)*B(k,j) + C(i,j);
            end
        end
    end 
endfunction 
funcprot(0)
