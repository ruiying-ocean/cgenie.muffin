# Model Runs
All four simulation use same physical setting (remineralisation, iron cycle) except the necessary difference between LGM and PI.


 PI

```
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CB.worlg4.BASESFeTDTL.colr023789 PUBS/submitted/Chapter3 muffin.CB.worlg4.BASESFeTDTL.SPIN 10000
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CBE.worlg4.BASESFeTDTL.colr023789 PUBS/submitted/Chapter3 muffin.CB.worlg4.BASESFeTDTL.SPIN 10000
```

## LGM

```sh
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CB.GIteiiva.BASESFeTDTL_14Crbcol0123789 PUBS/submitted/Chapter3 muffin.CB.GIteiiva.BASESFeTDTL.col0123789.SPIN 10000
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTL_rbcol0123789 PUBS/submitted/Chapter3 muffin.CBE.GIteiiva.BASESFeTDTL_rb.col0123789.SPIN 10000
```
