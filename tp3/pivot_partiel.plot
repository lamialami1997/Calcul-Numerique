set term png size 1900,1000

set output "pivot_partiel.png"

set grid

set ylabel "temp _ execution "
set xlabel " matrice nxn"

plot "pivot_partiel.dat" with lines title "execution pivot partiel" 
