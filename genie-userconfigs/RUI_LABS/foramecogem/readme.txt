--------- 1.1 Run pre-industrial spinup (0-10000) --------- 

qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CBE.worjh2.BASESFeTDTL.Albani  RUI_LABS/foramecogem worjh2.RpCO2_Rp13CO2.Albani.0ka.SPIN 10000

--------- 1.2 Run historical (1765-2022) --------- 

qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CBE.worjh2.BASESFeTDTL.Albani  RUI_LABS/foramecogem worjh2.RpCO2_Rp13CO2.Albani.0ka.historical 257 worjh2.RpCO2_Rp13CO2.Albani.0ka.SPIN

--------- 1.3 Run future (2022-2100) --------- 

qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CBE.worjh2.BASESFeTDTL.Albani  RUI_LABS/foramecogem worjh2.RpCO2_Rp13CO2.Albani.2100.[XXX]deg 78 worjh2.RpCO2_Rp13CO2.Albani.0ka.historical

--------- 2 Run LGM spinup --------- 
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CB.GIteiiva.BASESFeTDTL_rb_ecogem RUI_LABS/foramecogem muffin.CB.GIteiiva.BASESFeTDTL_rb_foramecogem2.1 10000
