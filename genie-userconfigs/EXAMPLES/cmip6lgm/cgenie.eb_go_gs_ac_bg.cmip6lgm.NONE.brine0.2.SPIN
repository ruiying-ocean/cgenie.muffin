#
# *******************************************************************
# *** USERCONFIG.cmip6lgm.NONE.SPIN *********************************
# *******************************************************************
#
# *** CLIMATE *******************************************************
#
# set no climate feedback (climate responding to changing pCO2)
ea_36=n
# scaling for atmospheric CO2 radiative forcing, calculated as the multiplier of 278 ppm CO2
# LGM pCO2 = 193 ppm; 193/278 = 0.694
ea_radfor_scl_co2=0.694
#
# *** BIOLOGICAL NEW PRODUCTION *************************************
#
# Set no biological production
bg_par_bio_prodopt='NONE'
#
# *** DATA SAVING ***************************************************
#
# Set BASIC + tracer + full physics save level (12)
bg_par_data_save_level=12
# force time-slice save at run end only
bg_par_infile_slice_name='save_timeslice_NONE.dat'
#
# *** MISC **********************************************************
#
# activate single-tracer ventilation age tracer
# NOTE: you *must* have the 'red' color tracer colr included in the base-config and hence gm_ocn_select_48=.true.
bg_ctrl_force_ocn_age1=.true.
# add brine rejection SH limit
bg_par_misc_brinerejection_jmax=19
#
# *** TUNING ********************************************************
#
# parameter: bg_par_misc_brinerejection_frac -- default value (1) modified by factor: 0.2
bg_par_misc_brinerejection_frac=0.2
#
# *** INITIAL CONDITIONS ********************************************
#
# modern SAL + 0.33 PSU (LGM ice sheet effect)
go_saln0=35.23
#
# *******************************************************************
# *** END ***********************************************************
# *******************************************************************
#
