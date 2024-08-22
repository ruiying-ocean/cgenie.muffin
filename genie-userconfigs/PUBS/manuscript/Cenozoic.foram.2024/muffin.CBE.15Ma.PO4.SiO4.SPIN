# *******************************************************************
# *** USERCONFIG.PALEO.ECOGEM.PO4.SPIN ******************************
# *******************************************************************
#
# *** CLIMATE *******************************************************
#
# set climate feedback (climate responding to changing pCO2)
ea_36=y
#
# *** BIOLOGICAL NEW PRODUCTION *************************************
#
# biological scheme ID string
# NOTE: with ECOGEM, no BIOGEM biological scheme must be selected
bg_par_bio_prodopt="NONE"
#
# *** ORGANIC MATTER EXPORT RATIOS **********************************
#
# [dealt with by ECOGEM]
#
# *** INORGANIC MATTER EXPORT RATIOS ********************************
#
# [dealt with by ECOGEM]
#
# *** REMINERALIZATION **********************************************
#
# *** recommended ***************************************************
# DOC lifetime (yrs) -- following Doney et al. [2006]
bg_par_bio_remin_DOMlifetime=0.5
# set 'instantaneous' water column remineralziation
bg_par_bio_remin_sinkingrate_physical=9.9E9
bg_par_bio_remin_sinkingrate_reaction=125.0
# *** Ward et al. [2018] ********************************************
###bg_par_bio_remin_sinkingrate_physical=125.0
###bg_par_bio_remin_sinkingrate_reaction=125.0
###bg_par_bio_remin_DOMlifetime=1.0
# *** common settings ***********************************************
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
# *** Crichton et al. [2020] temeprature-dependent remin ************
###bg_ctrl_bio_remin_POC_fixed=.false.
###bg_par_bio_remin_POC_K1=9.0E11
###bg_par_bio_remin_POC_Ea1=54000.0
###bg_par_bio_remin_POC_K2=1.0E14
###bg_par_bio_remin_POC_Ea2=80000.0
###bg_par_bio_remin_POC_frac2=0.008
#
# --- Si ----------------------------------------------
#
bg_ctrl_bio_remin_opal_fixed = .false.
bg_par_bio_red_POC_opal = 0.17185

# epsilon 30Si associated with opal formation [DEFAULT: -1.1]
bg_par_d30Si_opal_epsilon = -1.1
#
# *** ECOGEM ********************************************************
#
# specify ecosystem structure definition file
gm_ctrl_debug_init          =0
eg_ctrl_debug_eco_init=.false.

# disable ECOGEM restarts (as not currently coded up / used)
eg_ctrl_ncrst      = .false.
eg_ctrl_continuing = .false.

eg_gkernel_cap=.false.
eg_ctrl_grazing_explicit=.true.

eg_ctrl_use_foramecogenie=.true.

eg_par_ecogem_plankton_file ='2P3D2E4Z4F.eco'
eg_par_ecogem_grazing_file='2P3D2E4Z4F.zoo'
eg_foram_symbiont_esd_scale=0.01
eg_foram_auto_cost=0.04
eg_foram_hetero_cost=0.35
eg_foram_spine_scale=3.5

#################### Nitrogen ############################
eg_useNO3                   =.false.
eg_nquota                   =.false.
################## Phosphorus ############################
eg_usePO4                   =.true.
eg_pquota                   =.true.
######################## Iron ############################
eg_useFe                    =.false.
eg_fquota                   =.false.
################# Chlorophyll ############################
eg_chlquota                 =.true.
################# d13C ###################################
eg_useDIC_13C               =.true.
#################### Silicate ############################
eg_useSiO2                  =.true.
eg_squota                   =.true.


eg_qminP_a=0.0027022
eg_qmaxP_a=0.0216773
eg_affinPO4_a=0.94403
eg_affinPO4_b=-0.43718

# Si properties - Fanny June2020
eg_vmaxSiO2_a=0.068039
eg_vmaxSiO2_b=0.031868

eg_qminSi_a=0.043259
eg_qmaxSi_a=0.407638

eg_affinSiO2_a=4.7769
eg_affinSiO2_b=-0.40131

eg_par_diatom_palatability_mod = 0.92802

# eukaryote photosynthetic rate - Fanny Jun20 (equivalent to 0.56 times diatoms Pmax)
eg_vmaxDIC_a_pft_eukaryote = 2.2000

# Prey switching exponent (Holling 2 or 3 [= ns+1])
eg_ns=2

eg_respir_a=0

# DOM parameters
eg_beta_mort_a =   0.8 # Maximum fraction to DOM as ESD --> zero
eg_beta_mort_b =   0.4 # Minimum fraction to DOM as ESD --> infinity 
eg_beta_mort_c = 100.0 # Size at 50:50 partition (default = 100 µm^3)
eg_beta_graz_a =   0.8 # Maximum fraction to DOM as ESD --> zero
eg_beta_graz_b =   0.4 # Minimum fraction to DOM as ESD --> infinity
eg_beta_graz_c = 100.0 # Size at 50:50 partition (default = 100 µm^3)

eg_nsubtime=25
eg_n_keco=1

# exponent for modifier of CaCO3:POC export ratio
# NOTE: set power to zero for invarient ratio
eg_par_bio_red_POC_CaCO3_pP=0.0
# underlying export CaCO3 as a proportion of particulate organic matter (i.e., CaCO3/POC)
# NOTE: reduced by 50% on the basis that the modern ECOGEM scaling parameter is also ca. 50% lower
eg_par_bio_red_POC_CaCO3     = 0.0100 # underlying export CaCO3 as a proportion of particulate organic matter (i.e., CaCO3/POC)
# *** alternative for > 200 Ma **************************************
###eg_par_bio_red_POC_CaCO3=0.0
#
# *** DATA SAVING ***************************************************
#
# BASIC + biology + tracer + proxy diagnostics
bg_par_data_save_level=7
# *** recommended ***************************************************
# force time-slice save at run end only
bg_par_infile_slice_name='save_timeslice_NONE.dat'
#
# *** FORCINGS ******************************************************
#
# specify forcings -- restoring of atmopsheric pCO2 and d13C
bg_par_forcing_name="pyyyyz.RpCO2_Rp13CO2"
bg_par_atm_force_scale_val_3=429.06E-06
bg_par_atm_force_scale_val_4=-6.5
#
# *** MISC **********************************************************
#
# kraus-turner mixed layer scheme on (1) or off (0)
go_imld = 1
# *** recommended for paleo ***************************************************
# set mixed layer to be only diagnosed (for ECOGEM)
go_ctrl_diagmld=.true.
# add seaice attenuation of PAR
eg_ctrl_PARseaicelimit=.true.
# relative partitioning of C into DOM
eg_par_beta_POCtoDOC=0.70
# maximum time-scale to geochemical reaction completion (days)
bg_par_bio_geochem_tau=45.0
# extend solubility and geochem constant T range (leave S range as default)
gm_par_geochem_Tmin  = -2.0
gm_par_geochem_Tmax  = 45.0
gm_par_carbchem_Tmin = -2.0
gm_par_carbchem_Tmax = 45.0
#
# *******************************************************************
# *** END ***********************************************************
# *******************************************************************
#
