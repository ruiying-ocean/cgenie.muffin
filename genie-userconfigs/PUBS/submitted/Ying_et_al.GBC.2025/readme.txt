# Model Runs
All four simulation use same physical setting (remineralisation, iron cycle) except the necessary difference between LGM and PI.



qsub -j y -o cgenie_log -V -S /bin/bash

1. PI CTRL
./runmuffin.sh muffin.CBE.worjh2.BASESFeTDTLSi.colr023789 PUBS/submitted/Ying_et_al.GBC.2025 muffin.CBE.worjh2.BASESFeTDTLSi.SPIN 10000

2. PI no biology
./runmuffin.sh muffin.CB.worjh2.BASESFeTDTLSi.colr023789 PUBS/submitted/Ying_et_al.GBC.2025 muffin.CBE.worjh2.BASESFeTDTLSi.nobio 10000

3. LGM Full ecosystem
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTLSi.colr023789 PUBS/submitted/Ying_et_al.GBC.2025 muffin.CBE.GIteiiva.BASESFeTDTLSi.SPIN 10000

3. LGM NPZD + P only limitation
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTLSi.colr023789 PUBS/submitted/Ying_et_al.GBC.2025 muffin.CBE.GIteiiva.BASES.NPZD 10000

3. LGM no brine injection
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTLSi.colr023789 PUBS/submitted/Ying_et_al.GBC.2025 muffin.CBE.GIteiiva.BASESFeTDTLSi.nobio 10000


5. LGM Tdep remin
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTLSi.colr023789 PUBS/submitted/Ying_et_al.GBC.2025 muffin.CBE.GIteiiva.BASESFeTDTLSi.Tdep 10000




