set term png size 1900,1000

set output "rr_av_ex7.png"

set grid

set ylabel "Erreur Avant"
set xlabel "Taille matrice nxn"

plot "Exo7.dat" using 4:1 t "Erreur Avant Exercice 7" w lp;

set output "image/cond_ex7.png"
set ylabel "Conditionnement"

plot "Exo7.dat" using 4:3 t "Conditionnement Exercice 7" w lp;

set output "err_ar_ex7.png"

plot "Exo7.dat" using 4:2 t "Erreur Arrière Exercice 7" w lp;
