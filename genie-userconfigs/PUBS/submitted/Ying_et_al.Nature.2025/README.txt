================================================================
=== readme.txt =================================================
================================================================

Provided are as part of the code release the configuration files necessary to run the key model experiments presented in the paper.
The intention is to provide an oppertunity to question the paper assumptions and interpretation through re-analysis,
as well as the creation of new and different experiments. (Plus, to provide a means to replicate published results.)
This readme file details how the experiments can be run.
Refer to the muffin manual:
https://github.com/derpycode/muffindoc
for details on model code installation and configuration, locating and visualizing model results, etc.

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
PUBLICATION DETAILS [summary of manuscript/publication]
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

[PAPER TITLE] Size-based energy demand drove the End-Cretaceous marine extinction pattern
[AUTHOR LIST] Rui Ying, Fanny Monteiro, James Witts, Daniela Schmidt

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
EDITING LOG [list of changes made to this file, when, and by who]
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

2025/02/06 -- README.txt file created by RY (initial manuscript)
2025/07/29 -- README.txt file updated by RY (revision)

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
SUMMARY OF EXPERIMENTS [summerize experiments detailed and in which e.g. figures they appear]
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Main experiments
muffin.u067bc.PO4Fe.SPIN, end-Cretaceous spinup from Schmidt et al. (2016) Nature Geoscience
muffin.u067bc.PO4Fe.main, K-Pg experiment following SPINUP (for 200 yrs)
muffin.u067bc.PO4Fe.Danian, following K-Pg main for assessing biogeochemistry

Sensitivity experiments
muffin.u067bc.PO4Fe.CO2, K-Pg experiment with abrupt CO2 emission only
muffin.u067bc.PO4Fe.solar, K-Pg experiment with solar radiation change only
muffin.u067bc.PO4Fe.forcePAR, K-Pg run forced with pre-impact light
muffin.u067bc.PO4Fe.forceSST, K-Pg run forced with pre-impact temperature

muffin.u067bc.PO4Fe.noextinction, K-Pg run without extinction
muffin.u067bc.PO4Fe.no_size_effect, K-Pg run, with constant POM:DOM ratio (i.e., not dependent on size)
muffin.u067bc.PO4Fe.uniform_threshold, K-Pg run, with uniform biomass threshold for PFTs' extinction 


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
RUNNING THE EXPERIMENTS [command lines, broken down in sub-sections for spinups, main experiments, SI, etc where appropriate]
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Step 0: install necessary compiler libraries

     Please go to https://github.com/derpycode/muffindoc for detailed instruction

Step 1: uncomment `call radfor_wrapper` in `genie.F`

Step 2: in cgenie.muffin/genie-main, run spinup experiment:

./runmuffin.sh cgenie.eb_go_gs_ac_bg_eg_sg_rg.u067bc.BASESFe PUBS/submitted/Ying_et_al.Nature.2025 muffin.u067bc.PO4Fe.SPIN 10000

Step 3: in cgenie.muffin/genie-main, run K-Pg experiment (replace file names if for sensitivity experiments):

./runmuffin.sh cgenie.eb_go_gs_ac_bg_eg_sg_rg.u067bc.BASESFe PUBS/submitted/Ying_et_al.Nature.2025 muffin.u067bc.PO4Fe.main 200 muffin.u067bc.PO4Fe.SPIN

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Note that all experiments are run from:
$HOME/cgenie.muffin/genie-main
(unless a different installation directory has been used)

================================================================
================================================================
================================================================
