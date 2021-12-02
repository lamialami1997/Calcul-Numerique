set term png size 1900,1000

set output "temp_execusion_lu.png"

set grid

set ylabel "Temps d'execution"
set xlabel "Taille matrice nxn"

plot "test_lu.dat" with lines title "my_lu3b" , "test_lu.dat" with lines title "my_lu1b" ;


set output "lu_err.png"
set ylabel "Erreur"

plot "test_lu.dat" with lines title "my_lu3b" , "test_lu.dat" with lines title "my_lu1b" ;
