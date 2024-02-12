# Model Runs
All four simulation use same physical setting (remineralisation, iron cycle) except the necessary difference between LGM and PI.


 PI BIOGEM/ECOGEM

```
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CB.worjh2.BASESFeTDTL PUBS/submitted/Chapter3 muffin.CB.worjh2.BASESFeTDTL.SPIN 10000

qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CBE.worjh2.BASESFeTDTL.Albani PUBS/submitted/Chapter3 muffin.CB.worjh2.BASESFeTDTL.SPIN 10000
```

## LGM BIOGEM/ECOGEM

```sh
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CB.GIteiiva.BASESFeTDTL_rb PUBS/submitted/Chapter3 muffin.CB.GIteiiva.BASESFeTDTL.SPIN
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTL_rb PUBS/submitted/Chapter3 muffin.CBE.GIteiiva.BASESFeTDTL.SPIN
```
