# Model Runs
All four simulation use same physical setting (remineralisation, iron cycle) except the necessary difference between LGM and PI.


 PI BIOGEM

```
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CB.worlg4.BASESFeTDTL.config PUBS/submitted/Chapter3 muffin.CB.worlg4.BASESFeTDTL.SPIN 10000
```

## LGM BIOGEM

```sh
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CB.GIteiiva.BASESFeTDTL_rb PUBS/submitted/Chapter3 muffin.CB.GIteiiva.BASESFeTDTL.SPIN 10000
```
