================================================================
=== readme.txt =================================================
================================================================

Provided are as part of the code release the configuration files necessary to run the key model experiments presented in the paper.
The intention is to provide an opportunity to question the paper assumptions and interpretation through re-analysis,
as well as the creation of new and different experiments. (Plus, to provide a means to replicate published results.)
This readme file details how the experiments can be run.
Refer to the muffin manual:
https://github.com/derpycode/muffindoc
for details on model code installation and configuration, locating and visualizing model results, etc.

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
PUBLICATION DETAILS
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
EDITING LOG [list of changes made to this file, when, and by who]
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

2024/09/30 -- README.txt file created by RY

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
SUMMARY OF EXPERIMENTS
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


Full biology + Si/P/Fe
2D2Z + Si/P/Fe
BIOGEM + Si/P/Fe

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
RUNNING THE EXPERIMENTS
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

qsub -j y -o cgenie_log -V -S /bin/bash

./runmuffin.sh muffin.CBE.worjh2.BASESFeTDTLSi.colr023789 PUBS/submitted/Ying_2024.GRL.2024 ECOGEM.full 10000


./runmuffin.sh muffin.CBE.worjh2.BASESFeTDTLSi.colr023789 PUBS/submitted/Ying_2024.GRL.2024 ECOGEM.2D2Z 10000


./runmuffin.sh muffin.CB.worjh2.BASESFeTDTLSi.colr023789 PUBS/submitted/Ying_et_al.GBC.2025 BIOGEM 10000

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Note that all experiments are run from:
$HOME/cgenie.muffin/genie-main
(unless a different installation directory has been used)

================================================================
================================================================
================================================================
