set xlabel "x"
set ylabel "v_{y}, velosity" offset character 2.5, 0
set y2label "tau_{xy}, shear stress"

set key left
vmax = 0.75
L = 6.0
A = 4.0*vmax/(L**2)
par(x) = -A*(x*L - x**2)
f(x) = par(x)*(x<L)*(x>0) - par(x-L)*(x>L)*(x<2*L)

plot "vy.av" u 2:4 w lp t "v_{y}", \
     "sxy.av" u 2:4 w lp t "tau_{xy}", \
     f(x) t "theoretical", 0.0