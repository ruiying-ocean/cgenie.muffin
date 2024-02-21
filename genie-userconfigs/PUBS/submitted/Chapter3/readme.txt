# Model Runs
All four simulation use same physical setting (remineralisation, iron cycle) except the necessary difference between LGM and PI.


 PI

```
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CB.worlg4.BASESFeTDTL.col9 PUBS/submitted/Chapter3 muffin.CB.worlg4.BASESFeTDTL.SPIN 10000
```

## LGM

```sh
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CB.GIteiiaa.BASESFeTDTL_14Crbcol0137 PUBS/submitted/Chapter3 muffin.CB.GIteiiva.BASESFeTDTL.SPIN 10000
```
