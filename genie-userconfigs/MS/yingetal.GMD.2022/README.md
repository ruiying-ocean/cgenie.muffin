# Related Article
ForamEcoGEnIE 2.0: Incorporating symbiosis and spine traits into a trait-based global planktic foraminifera model, GMD, 2023, Rui Ying, Fanny M. Monteiro, Jamie D. Wilson, Daniela N. Schmidt

# Files Structure
- *muffin.CB.worlg4.BASESFeTDTL.FORAM.SPIN*, user configuration file
- *muffin.CB.worlg4.BASESFeTDTL.FORAM.monthly*, same as the above, but storing seasonal data
- *Yingetal.GMD2022.zoo*, the ecosystem grazing file defining foraminifer feeding/spine trait
- *sediment_trap_monthly/yearly.csv*, collected sediment trap data
- *plankton_tow_monthly/yearly.csv*, collected plankton net data

# Command to repeat the model result

```bash
# main experiment
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CBE.worlg4.BASESFeTDTL MS/yingetal.GMD.2022 muffin.CB.worlg4.BASESFeTDTL.FORAM.SPIN 10000

# monthly output
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CBE.worlg4.BASESFeTDTL MS/yingetal.GMD.2022 muffin.CB.worlg4.BASESFeTDTL.FORAM.monthly 20 muffin.CB.worlg4.BASESFeTDTL.FORAM.SPIN
```
