// Algorithm 7 Produit Matrice-Matrice "ijk"
//Require: A ∈ R m×p , B ∈ R p×n et C ∈ R m×n

function C =matmat1b(A,B)
[m,p]=size(A);
[p,n]=size(B);
 C=zeros(m,n);

    for i=1 :m
        C(i,:)=A(i,:)*B(:,i) + C(i,:);
    end 
endfunction 
funcprot(0)