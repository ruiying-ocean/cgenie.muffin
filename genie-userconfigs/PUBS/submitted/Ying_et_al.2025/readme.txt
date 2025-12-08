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
EDITING LOG [list of changes made to this file, when, and by who]
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

2024/11/21 -- README.txt file created by RY

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
SUMMARY OF EXPERIMENTS [summerize experiments detailed and in which e.g. figures they appear]
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

--- Fixed vs Variable Stoichiometry Experiments ---

The .fixquota configs use fixed (Redfield-like) stoichiometry by setting qmin~=qmax,
compared to the .ctrl configs which use variable quotas (flexible stoichiometry).

Parameter comparison:
| Parameter | Variable (.ctrl)  | Fixed (.fixquota)           | Source                  |
|-----------|-------------------|-----------------------------|-------------------------|
| P quota   | 0.0027 - 0.0217   | 0.00942-0.00944 (P:C=1/106) | Redfield (1958)         |
| Si quota  | 0.043 - 0.408     | 0.1299-0.1301 (Si:C=0.13)   | Brzezinski (1985)       |
| Fe quota  | 6.9e-7 - 4.1e-6   | 4.99e-6-5.01e-6 (Fe:C=5uM)  | Sunda & Huntsman (1995) |

NOTE: qmin and qmax are set ~0.2% apart (not exactly equal) to avoid division by zero
in the quota limitation calculation, while maintaining effectively fixed stoichiometry.
Setting the _b exponents to 0.0 removes size-dependence (all plankton have same ratio).


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
RUNNING THE EXPERIMENTS [command lines, broken down in sub-sections for spinups, main experiments, SI, etc where appropriate]
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

qsub -j y -o cgenie_log -V -S /bin/bash

./runmuffin.sh muffin.CBE.worjh2.BASESFeTDTLSi.Albani.colr023789 PUBS/submitted/Ying_et_al.2025 muffin.CBE.worjh2.PO4FeSi.ctrl 10000

./runmuffin.sh muffin.CBE.worjh2.BASESFeTDTLSi.Albani.colr023789 PUBS/submitted/Ying_et_al.2025 muffin.CBE.worjh2.PO4FeSi.Q10.Tdep 10000

./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTLSi.col023789 PUBS/submitted/Ying_et_al.2025 muffin.CBE.GIteiiva.PO4FeSi.ctrl 10000

# Fixed stoichiometry experiments (Redfield-like)
./runmuffin.sh muffin.CBE.worjh2.BASESFeTDTLSi.Albani.colr023789 PUBS/submitted/Ying_et_al.2025 muffin.CBE.worjh2.PO4FeSi.fixquota 10000

./runmuffin.sh muffin.CBE.GIteiiva.BASESFeTDTLSi.col023789 PUBS/submitted/Ying_et_al.2025 muffin.CBE.GIteiiva.PO4FeSi.fixquota 10000

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Note that all experiments are run from:
$HOME/cgenie.muffin/genie-main
(unless a different installation directory has been used)

================================================================
================================================================
================================================================
