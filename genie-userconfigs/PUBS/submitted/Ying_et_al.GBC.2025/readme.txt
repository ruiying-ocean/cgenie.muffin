Title: LGM plankton community structure and its impacts on glacial biological export


# Model Runs
All four simulation use same physical setting (remineralisation, iron cycle) except the necessary difference between LGM and PI.



qsub -j y -o cgenie_log -V -S /bin/bash

1. PI CTRL
./runmuffin.sh muffin.CBE.worjh2.BASESFeTDTLSi.colr023789 PUBS/submitted/Ying_et_al.GBC.2025 muffin.CBE.worjh2.BASESFeTDTLSi.SPIN 10000

2. LGM CTRL
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTLSi.colr023789 PUBS/submitted/Ying_et_al.GBC.2025 muffin.CBE.GIteiiva.BASESFeTDTLSi.SPIN 10000

3. LGM BIOGEM
./runmuffin.sh muffin.CB.GIteiiva.BASESFeTDTLSi.colr023789 PUBS/submitted/Ying_et_al.GBC.2025 muffin.CB.GIteiiva.BASESFeTDTLSi.SPIN 10000
