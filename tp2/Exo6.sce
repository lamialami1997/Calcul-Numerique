//	Génération de vecteur colonne 
x = [2, 4, 6, 8] 
//	Génération d’un vecteur ligne 
y = [10 ; 2; 12; 1]
//	Adition de deux vecteurs
//z = x + y -> Erreur x et y ne possèdent pas les même dimensions
//(Transposé de y  = y’)
y'
z= x+y'
//	Multiplication de deux vecteur s=xy
s=x*y
//	Calcule de la taille de vecteur x et y : 
size(x)
size(y)
//.	Calcule de la norme 2 de x 
norm(x,2)

//	Génération d’une matrice 4*3
A = [1,0,-1; 0,-2,7; 5,1,0;1,9,7]
//	Transposé de A : 
A'
//Somme et multiplication de deux matrice A & B
B = [3,2,-1; 0,7,-5; 4,1,-1;0,7,9]  // génération de ma matrice B 4*3
//Multiplication de deux matrice :
 A*B'
//Addition / soustraction de deux matrices :
C = A + B
E = A - B
//	Calcule de conditionnement de A : 
cond(A)

