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

[PAPER TITLE] Selective extinction in the end-Cretaceous oceans driven by darkness
[AUTHOR LIST] Rui Ying, Fanny Monteiro, James Witts, Daniela Schmidt

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
EDITING LOG [list of changes made to this file, when, and by who]
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

2025/02/06 -- README.txt file created by RY

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
SUMMARY OF EXPERIMENTS [summerize experiments detailed and in which e.g. figures they appear]
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

SPINUP, end-Cretaceous spinup from Schmidt et al. (2016) Nature Geoscience

EXP0, As EXP3 main experiment, but no extinction

EXP1, reduced solar radiation

EXP2, abrupt CO2 emission

EXP3, Main experiment (i.e., reduced solar radiation + abrupt CO2 emission)

EXP4, forced with pre-impact temperature

EXP5, forced with pre-impact PAR


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
RUNNING THE EXPERIMENTS [command lines, broken down in sub-sections for spinups, main experiments, SI, etc where appropriate]
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Step 0: install necessary compiler libraries

     Please go to https://github.com/derpycode/muffindoc for detailed instruction

Step 1: uncomment `call radfor_wrapper` in `genie.F`

Step 2: in cgenie.muffin/genie-main, run:

qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh cgenie.eb_go_gs_ac_bg_eg.u067bc.BASES PUBS/submitted/Ying_et_al.Nature.2025 muffin.u067bc.PO4Fe.SPIN 10000

qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh cgenie.eb_go_gs_ac_bg_eg.u067bc.BASES PUBS/submitted/Ying_et_al.Nature.2025 muffin.u067bc.PO4Fe.main 200 muffin.u067bc.PO4Fe.SPIN

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Note that all experiments are run from:
$HOME/cgenie.muffin/genie-main
(unless a different installation directory has been used)

================================================================
================================================================
================================================================
