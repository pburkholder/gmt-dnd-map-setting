#!/bin/bash 

if [ ! -f ./trim.grd ]; then
  echo Make new trim.grd
  gmt grdcut @earth_relief_02m  -R200/1/340/80r -Gtrim.grd
fi



gmt begin flood
#  gmt subplot begin -A+JTL+o0.1i/0 -Fs6i/3.5i -M0 -R160/20/220/30+r -JOc190/25.5/292/69/6i -X1.5i -Y1.5i -B10 
    # rotate counter-clockwise
  gmt subplot begin -Rg260/15/300/50+r -JOb280/25.5/300/25.5/8i
#  gmt subplot begin -R260/15/320/50+r -JOb280/25.5/300/35.5/8i
  gmt grdimage trim.grd -I+d -Cflood.cpt
gmt end show

#gmt begin preflood  
#  gmt grdimage trim.grd -I+d -Cpre.cpt
#gmt end show
