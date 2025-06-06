#
#
# --- CLIMATE -------------------------------------------------------
#
# set climate feedback
ea_36=y
#
# --- BIOLOGICAL NEW PRODUCTION -------------------------------------
#
#production with Temperature dependence
bg_par_bio_prodopt='1N1T_PO4MM_Tdep'
#Max growth rate term (multiplier)
bg_par_bio_mu1=10
# maximum rate of conversion of dissolved PO4 into organic matter by phytoplankton (mol kg-1 yr-1)
bg_par_bio_k0_PO4=8.9876e-006
# [PO4] M-M half-sat value (mol kg-1)
bg_par_bio_c0_PO4=8.9369e-007
#
# --- ORGANIC MATTER EXPORT RATIOS ----------------------------------
#
# production fraction of dissolved organic matter
bg_par_bio_red_DOMfrac=0.66
#
# --- INORGANIC MATTER EXPORT RATIOS --------------------------------
#
# underlying export CaCO3 as a proportion of particulate organic matter (i.e., CaCO3/POC)
bg_par_bio_red_POC_CaCO3=0.0485
# exponent for modifier of CaCO3:POC export ratio
bg_par_bio_red_POC_CaCO3_pP=0.7440
#
# --- REMINERALIZATION ----------------------------------------------
#
# DOC lifetime (yrs)
bg_par_bio_remin_DOMlifetime=0.5
# initial fractional abundance of POC component #2
bg_par_bio_remin_POC_frac2=0.0557
# depth of remineralization or particulate organic matter
bg_par_bio_remin_POC_eL1=589.9451
# remineralization length #2 for POC
bg_par_bio_remin_POC_eL2=1000000.0
# initial fractional abundance of CaCO3 component #2
bg_par_bio_remin_CaCO3_frac2=0.45
# depth of remineralization or CaCO3
bg_par_bio_remin_CaCO3_eL1=1.8905e+003
# remineralization length #2 for CaCO3
bg_par_bio_remin_CaCO3_eL2=1000000.0
#
bg_ctrl_bio_remin_POC_fixed=.false.
bg_par_bio_remin_sinkingrate=125.0
bg_par_bio_remin_POC_K1=9.0E11
bg_par_bio_remin_POC_Ea1=54000.0
bg_par_bio_remin_POC_K2=1.0E14
bg_par_bio_remin_POC_Ea2=80000.0
bg_par_bio_remin_POC_frac2=0.008
#
# --- DATA SAVING ----------------------------------------------
#
# ! BASIC + REDOX
bg_par_data_save_level=14
#
# force time-slice save at run end only
bg_par_infile_slice_name='save_timeslice_NONE.dat'
#
# --- FORCINGS -------------------------------------------------
#
# specify forcings
bg_par_forcing_name="Q_xxxxxx.RpCO2_Rp13CO2.Fsal_SUR"
bg_par_atm_force_scale_val_4=-5.493
# parameter: bg_par_atm_force_scale_val_3 -- default value modified by factor: 560
bg_par_atm_force_scale_val_3=0.000560
# parameter: bg_par_ocn_force_scale_val_2 -- default value modified by factor: 0.4
bg_par_ocn_force_scale_val_2=0.4
#
# --- MISC ------------------------------------------------------------
#
### IODINE CYCLE CONTROLS ###
# set biological IO3 uptake
bg_par_bio_red_POC_POI = 3.5e-4
# select option for watercolumn reduction
bg_opt_bio_remin_reduce_IO3toI='threshold'
# select basic oxidation option
bg_opt_bio_remin_oxidize_ItoIO3='Fennel'
# set Fennel parameters
bg_par_bio_remin_cO2_ItoIO3=20.0E-6
bg_par_bio_remin_kItoIO3=0.1
# set [O2] threshold (mol kg-1) for (complete) IO3 reduction to I
bg_par_bio_remin_cO2_IO3toI=10e-6
#
# --- END ------------------------------------------------------
#
