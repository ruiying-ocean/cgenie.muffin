# Model Runs
All four simulation use same physical setting (remineralisation, iron cycle) except the necessary difference between LGM and PI.



qsub -j y -o cgenie_log -V -S /bin/bash

./runmuffin.sh muffin.CBE.worjh2.BASESFeTDTLSi.colr023789 PUBS/submitted/Chapter3 muffin.CBE.worjh2.BASESFeTDTLSi.SPIN 10000
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTLSi.colr023789 PUBS/submitted/Chapter3 muffin.CBE.GIteiiva.BASESFeTDTLSi.SPIN 10000
