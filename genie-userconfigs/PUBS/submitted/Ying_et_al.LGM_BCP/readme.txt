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
# Config files in SENSITIVITY/ subfolder

# (E) LGM with ECOGEM + modern (PI) SST prescribed (GIteiiva glacial geography)
#     Modern SST from muffin.CBE.worjh2.PO4FeSi.ctrl, remapped to GIteiiva mask
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTL_rbcolx PUBS/submitted/Ying_et_al.LGM_BCP/SENSITIVITY USERCONFIG.LGM_ECOGEM_modSST.SPIN 10000

# (F) LGM with ECOGEM + modern dust field (Mahowald 2006, GIteiiva geography)
#     Iron parameters identical to LGM; only aeolian dust flux replaced
#     Forcing dir: genie-forcings/GIteiiva.RpCO2_Rp13CO2.Fsal_SUR.Mahowald2006
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTL_rbcolx PUBS/submitted/Ying_et_al.LGM_BCP/SENSITIVITY USERCONFIG.LGM_ECOGEM_modDust.SPIN 10000

# =========== LGM + Modern SST + Modern Fe Experiments =========== #
# Config files in SENSITIVITY/ subfolder

# (G) LGM with ECOGEM + modern (PI) SST prescribed + modern dust/Fe (Mahowald 2006)
#     Combines modSST (eg_ctrl_force_T) and modDust (Mahowald2006 forcing)
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTL_rbcolx PUBS/submitted/Ying_et_al.LGM_BCP/SENSITIVITY USERCONFIG.LGM_ECOGEM_modSST_modFe.SPIN 10000

# =========== LGM + Lambert et al. (2021) Dust Experiments =========== #
# LGM with ECOGEM + different LGM dust reconstructions from Lambert et al. (2021)
# Iron parameters identical to LGM; only aeolian dust flux replaced
# Config files in SENSITIVITY/ subfolder

# (J) LGM with ECOGEM + Lambert dust (Lambert et al. 2021)
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTL_rbcolx PUBS/submitted/Ying_et_al.LGM_BCP/SENSITIVITY USERCONFIG.LGM_ECOGEM_LambertDust.SPIN 10000

# (K) LGM with ECOGEM + MIROC-ESM dust (Lambert et al. 2021)
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTL_rbcolx PUBS/submitted/Ying_et_al.LGM_BCP/SENSITIVITY USERCONFIG.LGM_ECOGEM_MIROC-ESMDust.SPIN 10000

# (L) LGM with ECOGEM + MRI-CGCM3 dust (Lambert et al. 2021)
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTL_rbcolx PUBS/submitted/Ying_et_al.LGM_BCP/SENSITIVITY USERCONFIG.LGM_ECOGEM_MRI-CGCM3Dust.SPIN 10000

# (M) LGM with ECOGEM + Ohgaito dust (Lambert et al. 2021)
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTL_rbcolx PUBS/submitted/Ying_et_al.LGM_BCP/SENSITIVITY USERCONFIG.LGM_ECOGEM_OhgaitoDust.SPIN 10000

# (N) LGM with ECOGEM + Takemura dust (Lambert et al. 2021)
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTL_rbcolx PUBS/submitted/Ying_et_al.LGM_BCP/SENSITIVITY USERCONFIG.LGM_ECOGEM_TakemuraDust.SPIN 10000

# =========== Sensitivity: Higher Fe Quota =========== #
# eg_qminFe_a = 2.00e-6 (default 1.00e-6), eg_qmaxFe_a = 5.00e-5 (default 4.00e-6)
# Config files in SENSITIVITY/ subfolder

# (H) PI with ECOGEM + higher Fe quota (worlg4 modern geography)
./runmuffin.sh cgenie.eb_go_gs_ac_bg_eg.worlg4.BASESFeTDTLcolx PUBS/submitted/Ying_et_al.LGM_BCP/SENSITIVITY USERCONFIG.PI_ECOGEM_hiFe.SPIN 10000

# (I) LGM with ECOGEM + higher Fe quota (GIteiiva glacial geography)
./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTL_rbcolx PUBS/submitted/Ying_et_al.LGM_BCP/SENSITIVITY USERCONFIG.LGM_ECOGEM_hiFe.SPIN 10000

################################################################
################################################################
################################################################
