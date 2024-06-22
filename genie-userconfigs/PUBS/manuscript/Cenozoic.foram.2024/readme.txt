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

[PAPER TITLE]
[AUTHOR LIST]

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Main files
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
BASECONFIG.16lvl.ECOGEM.config: template merged from muffingen (BASECONFIG.16lvl.config + TRACERCONFIG.Ridgwelletal.2007.txt + Si related parameters)

USERCONFIG.PALEO.BIOGEM.PO4.SPIN: template directly from muffingen (used to test circulation)
USERCONFIG.PALEO.ECOGEM.PO4.SPIN: template directly from muffingen (might delete later)
USERCONFIG.PALEO.ECOGEM.PO4.SiO4.SPIN: template modified from muffingen (USERCONFIG.PALEO.ECOGEM.PO4.SPIN + Foram and Diatom setting)


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
EDITING LOG [list of changes made to this file, when, and by who]
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

2024/05/20 -- README.txt file created by [RY]

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
SUMMARY OF EXPERIMENTS [summerize experiments detailed and in which e.g. figures they appear]
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
RUNNING THE EXPERIMENTS [command lines, broken down in sub-sections for spinups, main experiments, SI, etc where appropriate]
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

./runmuffin.sh muffin.CBE.wortflmm.p0061c.BASES PUBS/manuscript/Cenozoic.foram.2024 YING.61ma.ECOGEM.PO4.SPIN

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Note that all experiments are run from:
$HOME/cgenie.muffin/genie-main
(unless a different installation directory has been used)

================================================================
================================================================
================================================================
