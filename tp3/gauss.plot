set term png size 1900,1000

set output "err_av_gausskij.png"

set grid

set ylabel "Erreur Avant"
set xlabel " nxn"

plot "gausskij.dat" using 4:1 t "Erreur Avant gausskij" w lp;

set output "cond_gausskij.png"
set ylabel "Conditionnement"

plot "data/gausskij.dat" using 4:3 t "Conditionnement gausskij" w lp;

set output "err_ar_gausskij.png"

set ylabel "Erreur Arrière"

plot "gausskij.dat" using 4:2 t "Erreur Arrière gausskij" w lp;
