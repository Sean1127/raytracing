reset
set ylabel 'time(sec)'
set boxwidth 0.5 relative
set style data histogram 
set style fill solid
set title 'perfomance comparison'
set term png enhanced font 'Verdana,10'
set output 'time.png'

plot [-0.5:0.5][:]'time.txt' using 2:xtic(1) with histogram title 'original', \
'' using 3:xtic(1) with histogram title 'loop unrolling', \
'' using 4:xtic(1) with histogram title 'force inline', \
'' using 5:xtic(1) with histogram title 'pthread', \
'' using 6:xtic(1) with histogram title 'OpenMP', \
'' using 7:xtic(1) with histogram title 'compiler opt -O2', \
'' using ($0-0.250):($2+0.2):2 with labels title ' ', \
'' using ($0-0.125):($3+0.2):3 with labels title ' ', \
'' using ($0):($4+0.2):4 with labels title ' ', \
'' using ($0+0.125):($5+0.2):5 with labels title ' ', \
'' using ($0+0.250):($6+0.2):6 with labels title ' ', \
'' using ($0+0.375):($7+0.2):7 with labels title ' '
