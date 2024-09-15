# Model Runs
All four simulation use same physical setting (remineralisation, iron cycle) except the necessary difference between LGM and PI.



qsub -j y -o cgenie_log -V -S /bin/bash

./runmuffin.sh muffin.CBE.worjh2.BASESFeTDTLSi.colr023789 PUBS/submitted/Ying_et_al.GBC.2025 muffin.CBE.worjh2.BASESFeTDTLSi.SPIN 10000
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTLSi.colr023789 PUBS/submitted/Ying_et_al.GBC.2025 muffin.CBE.GIteiiva.BASESFeTDTLSi.SPIN 10000

NPZD runs
./runmuffin.sh muffin.CBE.worjh2.BASESFeTDTLSi.colr023789 PUBS/submitted/Ying_et_al.GBC.2025 muffin.CBE.worjh2.BASES.NPZD 10000
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTLSi.colr023789 PUBS/submitted/Ying_et_al.GBC.2025 muffin.CBE.GIteiiva.BASES.NPZD 10000
