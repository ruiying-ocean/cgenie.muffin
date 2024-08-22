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
qsub -j y -o cgenie_output -V -S /bin/bash

./runmuffin.sh muffin.CBE.wortflma.p0000c.BASES PUBS/manuscript/Cenozoic.foram.2024 muffin.CBE.00Ma.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CBE.wortflmb.p0003c.BASES PUBS/manuscript/Cenozoic.foram.2024 muffin.CBE.03Ma.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CBE.wortflmc.p0011c.BASES PUBS/manuscript/Cenozoic.foram.2024 muffin.CBE.11Ma.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CBE.wortflmd.p0015c.BASES PUBS/manuscript/Cenozoic.foram.2024 muffin.CBE.15Ma.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CBE.wortflme.p0020c.BASES PUBS/manuscript/Cenozoic.foram.2024 muffin.CBE.20Ma.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CBE.wortflmf.p0026c.BASES PUBS/manuscript/Cenozoic.foram.2024 muffin.CBE.26Ma.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CBE.wortflmg.p0031c.BASES PUBS/manuscript/Cenozoic.foram.2024 muffin.CBE.31Ma.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CBE.wortflmh.p0036c.BASES PUBS/manuscript/Cenozoic.foram.2024 muffin.CBE.36Ma.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CBE.wortflmi.p0040c.BASES PUBS/manuscript/Cenozoic.foram.2024 muffin.CBE.40Ma.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CBE.wortflmj.p0045c.BASES PUBS/manuscript/Cenozoic.foram.2024 muffin.CBE.45Ma.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CBE.wortflmk.p0052c.BASES PUBS/manuscript/Cenozoic.foram.2024 muffin.CBE.52Ma.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CBE.wortflml.p0056c.BASES PUBS/manuscript/Cenozoic.foram.2024 muffin.CBE.56Ma.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CBE.wortflmm.p0061c.BASES PUBS/manuscript/Cenozoic.foram.2024 muffin.CBE.61Ma.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CBE.wortflmn.p0066c.BASES PUBS/manuscript/Cenozoic.foram.2024 muffin.CBE.66Ma.PO4.SiO4.SPIN 10000

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Note that all experiments are run from:
$HOME/cgenie.muffin/genie-main
(unless a different installation directory has been used)

================================================================
================================================================
================================================================
