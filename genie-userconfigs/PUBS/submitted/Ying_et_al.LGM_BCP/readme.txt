################################################################
### readme.txt #################################################
################################################################

For 'Plankton ecosystem dynamics in the Last Glacial Maximum and their impacts on ocean carbon export'

Authors
Ying et al.

################################################################
2026/02/02 -- README.txt file creation
################################################################

Provided are the configuration files necessary to run the main spin-up experiments
for comparing Pre-Industrial (PI) and Last Glacial Maximum (LGM) biological carbon pump
using both BIOGEM and ECOGEM modules.

All experiments are run from: $HOME/cgenie.muffin/genie-main
(unless a different installation directory has been used)

# =========== Pre-Industrial (PI) Experiments =========== #

# (A) PI with BIOGEM only (worlg4 modern geography)
./runmuffin.sh cgenie.eb_go_gs_ac_bg.worlg4.BASESFeTDTLcolx PUBS/submitted/Ying_et_al.LGM_BCP USERCONFIG.PI_BIOGEM.SPIN 10000

# (B) PI with ECOGEM (worlg4 modern geography)
./runmuffin.sh cgenie.eb_go_gs_ac_bg_eg.worlg4.BASESFeTDTLcolx PUBS/submitted/Ying_et_al.LGM_BCP USERCONFIG.PI_ECOGEM.SPIN 10000

# =========== Last Glacial Maximum (LGM) Experiments =========== #

# (C) LGM with BIOGEM only (GIteiiva glacial geography)
./runmuffin.sh muffin.CB.GIteiiva.BASESFeTDTL_rbcolx PUBS/submitted/Ying_et_al.LGM_BCP USERCONFIG.LGM_BIOGEM.SPIN 10000

# (D) LGM with ECOGEM (GIteiiva glacial geography)
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTL_rbcolx PUBS/submitted/Ying_et_al.LGM_BCP USERCONFIG.LGM_ECOGEM.SPIN 10000

# =========== LGM + Modern SST Experiments =========== #

# (E) LGM with ECOGEM + modern (PI) SST prescribed (GIteiiva glacial geography)
#     Modern SST from muffin.CBE.worjh2.PO4FeSi.ctrl, remapped to GIteiiva mask
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTL_rbcolx PUBS/submitted/Ying_et_al.LGM_BCP USERCONFIG.LGM_ECOGEM_modSST.SPIN 10000

# (F) LGM with ECOGEM + modern dust field (Mahowald 2006, GIteiiva geography)
#     Iron parameters identical to LGM; only aeolian dust flux replaced
#     Forcing dir: genie-forcings/GIteiiva.RpCO2_Rp13CO2.Fsal_SUR.Mahowald2006
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTL_rbcolx PUBS/submitted/Ying_et_al.LGM_BCP USERCONFIG.LGM_ECOGEM_modDust.SPIN 10000

################################################################
################################################################
################################################################
