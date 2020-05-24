#!/bin/bash 

if [ ! -f ./trim.grd ]; then
  echo Make new trim.grd
  gmt grdcut @earth_relief_02m  -R-120/-20/1/60 -Gtrim.grd
fi


gmt begin flood
  gmt grdimage trim.grd -I+d -Cflood.cpt
gmt end show

gmt begin preflood  
  gmt grdimage trim.grd -I+d -Cpre.cpt
gmt end show
