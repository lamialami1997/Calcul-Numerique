set term png size 1900,1000

set output "matmat.png"

set grid

set ylabel "Temps"
set xlabel "Taille matrice nxn"

plot "mesure_temps.dat" using 4:1 t "matmat1b" w lp, "mesure_temps.dat" using 4:2 t "matmat2b" w lp, "mesure_temps.dat" using 4:3 t "matmat3b" w lp;
