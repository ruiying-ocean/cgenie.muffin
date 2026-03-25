================================================================
CMIP6 LGM (Last Glacial Maximum) experiment configurations
================================================================

Base config: cgenie.eb_go_gs_ac_bg.cmip6lgm.BASESFeTDTL
Topography:  cmip6lgm (CMIP6 PMIP4 21ka, CAS closed)
Dust:        Albani 21ka
CO2:         193 ppm (restored), d13C = -6.46 permil

----------------------------------------------------------------
1. Abiotic brine rejection sensitivity (NONE)
----------------------------------------------------------------
cgenie.eb_go_gs_ac_bg.cmip6lgm.NONE.brine{0.2,0.4,0.6,0.8}.SPIN

  No biology. Brine rejection fraction sensitivity.

----------------------------------------------------------------
2. BASESFeTDTL brine rejection sensitivity
----------------------------------------------------------------
cgenie.eb_go_gs_ac_bg.cmip6lgm.BASESFeTDTL.Albani.brine{0.0,0.2,0.4,0.6,0.8}.SPIN

  Full biogeochemistry (PO4-Fe limitation, hybrid Fe scheme).
  Albani 21ka dust forcing. Fixed POC remineralization.
  Brine rejection fraction varies: 0.0, 0.2, 0.4, 0.6, 0.8.

----------------------------------------------------------------
3. Fsal surface salinity forcing — AMOC sensitivity
----------------------------------------------------------------
cmip6lgm.BASESFeTDTL.Fsal{X}.SPIN

  GIteiiva-style surface salinity flux forcing adapted to cmip6lgm
  grid. Pattern freshens Atlantic, salinifies Pacific (positive
  bg_par_ocn_force_scale_val_2). No brine rejection.

  Forcing: cmip6lgm.RpCO2_Rp13CO2.Fsal_SUR.Albani.21ka

  Sensitivity experiments:
    Fsal0.01   = 0.01 Sv
    Fsal0.02   = 0.02 Sv
    Fsal0.05   = 0.05 Sv (same as Odalen et al. CP 2022)
    Fsal0.10   = 0.10 Sv
    Fsal0.20   = 0.20 Sv

----------------------------------------------------------------
4. Fsal + T-dependent remineralization
----------------------------------------------------------------
cmip6lgm.BASESFeTDTL.Fsal{X}.Tdep.SPIN

  As above but with T-dependent POC remineralization following
  Crichton et al. (2020, GMD). Key parameters:
    bg_ctrl_bio_remin_POC_fixed = .false.
    bg_par_bio_remin_POC_K1    = 9.0E11
    bg_par_bio_remin_POC_Ea1   = 54000.0
    bg_par_bio_remin_POC_K2    = 1.0E14
    bg_par_bio_remin_POC_Ea2   = 80000.0
    bg_par_bio_remin_POC_frac2 = 0.008

  Experiments:
    Fsal0.05.Tdep  = 0.05 Sv
    Fsal0.10.Tdep  = 0.10 Sv
    Fsal0.20.Tdep  = 0.20 Sv

================================================================
How to run (example, 10 kyr spinup):

./runmuffin.sh cgenie.eb_go_gs_ac_bg.cmip6lgm.BASESFeTDTL EXAMPLES/cmip6lgm cmip6lgm.BASESFeTDTL.Fsal0.05.SPIN 10000

================================================================
