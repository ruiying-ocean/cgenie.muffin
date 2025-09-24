#
#
# --- CLIMATE -------------------------------------------------------
#
# set climate feedback
ea_36=y
#
# --- BIOLOGICAL NEW PRODUCTION -------------------------------------
#
# biological scheme ID string
bg_par_bio_prodopt="bio_PFeSi"
# biological uptake time-scales
bg_par_bio_tau_sp=60.0
bg_par_bio_tau_nsp=120.0
# spsilon 30Si associated with opal formation [DEFAULT: -1.1]
bg_par_d30Si_opal_epsilon=0.0
#
# --- ORGANIC MATTER EXPORT RATIOS ----------------------------------
#
# production fraction of dissolved organic matter
bg_par_bio_red_DOMfrac=0.66
#
# --- INORGANIC MATTER EXPORT RATIOS --------------------------------
#
# underlying export CaCO3 as a proportion of particulate organic matter (i.e., CaCO3/POC)
bg_par_bio_red_POC_CaCO3=0.10
# exponent for modifier of CaCO3:POC export ratio
bg_par_bio_red_POC_CaCO3_pP=0.7440
#
# *** REMINERALIZATION **********************************************
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
# *** IRON **********************************************
# NOTE: the base-config requires TFe and TL tracers
bg_opt_geochem_Fe='hybrid'
# exponent for aeolian Fe solubility [use 1.0 for uniform solubility]
bg_par_det_Fe_sol_exp=0.500
# aeolian Fe solubility
bg_par_det_Fe_sol=0.002441
# modifier of the scavenging rate of dissolved Fe
bg_par_scav_Fe_sf_POC=0.225
# no scavenged regeneration
bg_par_scav_fremin=0.0
# return POFe
bg_ctrl_bio_NO_fsedFe=.false.
# Variable Fe:C
bg_ctrl_bio_red_fixedFetoC=.false.
# adjust pK'(FeL)
bg_par_K_FeL_pP=11.0
#(max) C/Fe organic matter ratio
bg_par_bio_red_POFe_POC=250000.0
#[FeT] dependent Fe:C ratio [Ridgwell, 2001] -- power
bg_par_bio_FetoC_pP=-0.4225
#[FeT] dependent Fe:C ratio [Ridgwell, 2001] -- scaling
bg_par_bio_FetoC_K=103684.0
#[FeT] dependent Fe:C ratio [Ridgwell, 2001] -- constant
bg_par_bio_FetoC_C=0.0
# *** Silicon **********************************************
#
bg_ctrl_bio_remin_opal_fixed=.false.
bg_par_bio_red_POC_opal=0.17185
bg_par_d30Si_opal_epsilon=-1.1

# *** DATA SAVING ***************************************************
#
# BASIC + biology + tracer + proxy diagnostics
bg_par_data_save_level=10
bg_ctrl_bio_preformed=.true.
bg_ctrl_bio_remin_redox_save=.true.
#
# *** FORCINGS ******************************************************
#
bg_par_forcing_name="GIteiiva.RpCO2_Rp13CO2.Fsal_SUR.Albani.21ka"
bg_par_atm_force_scale_val_3=193.0E-06
bg_par_atm_force_scale_val_4=-6.46
# 14C production -- mean of 19-23 ka from Hain et al.
ac_par_atm_F14C = 576.5483771

#
# *** MISC **********************************************************
# --- EcoGENIE1.1 settings ----

# set 'instantaneous' water column remineralziation
bg_par_bio_remin_sinkingrate_physical=9.9E9
bg_par_bio_remin_sinkingrate_reaction=100.0

# kraus-turner mixed layer scheme on (1) or off (0)
go_imld = 1

# *** optional changes to align with PALEO recommendations **********
# set mixed layer to be only diagnosed (for ECOGEM)
go_ctrl_diagmld=.true.
# add seaice attenuation of PAR
eg_ctrl_PARseaicelimit=.true.
# relative partitioning of C into DOM
#eg_par_beta_POCtoDOC=0.75
# maximum time-scale to geochemical reaction completion (days)
bg_par_bio_geochem_tau=90.0
# extend solubility and geochem constant T range (leave S range as default)
gm_par_geochem_Tmin  = -2.0
gm_par_geochem_Tmax  = 45.0
gm_par_carbchem_Tmin = -2.0
gm_par_carbchem_Tmax = 45.0

# *******************************************************************
# *** END ***********************************************************
# *******************************************************************
#

bg_ctrl_force_ocn_age1=.true.

# Orbital parameters
ea_par_orbit_osce=0.018994 # eccentricity
ea_par_orbit_oscsob=0.389911 # sine of obliquity
ea_par_orbit_oscgam=114.42 # longitude of perihelion (degrees)

# circulation
bg_par_misc_brinerejection_frac=0.2
bg_par_misc_brinerejection_jmax=19
bg_par_ocn_force_scale_val_2=0.05

# wind-stress
go_13=1.3
ea_11=1.3

## Sea-level change and tracer concentration
## 134 m only causes same LGM ocean volume as PI, so we need more.
go_par_dsc= 4650
bg_ctrl_ocn_rinit_ALL=.True.
# not 3%, but actual change (3.24%)
bg_par_ocn_rinit_ALL=0.0324