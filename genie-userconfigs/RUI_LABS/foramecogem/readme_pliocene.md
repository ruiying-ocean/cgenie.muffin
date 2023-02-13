# basic config
muffin.CB.umQ00p0a.BASES (modern)
muffin.CB.umQ04p5a.BASES (Pliocene open)
muffin.CB.umQ04p5b.BASES (Pliocene close)

# commands to run

``` shell
## Pliocene open, 400 ppm
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CB.umQ04p5a.BASES RUI_LABS/foramecogem 20220104.CB.umQ04p5a.BASES.CASopen.400_0p5.8P7Z4F.SPIN 10000

## Modern CAS closed, 280 ppm
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CB.umQ00p0a.BASES RUI_LABS/foramecogem 20220104.CB.umQ00p0a.BASES.CASclosed.280_0p2.8P7Z4F.SPIN 10000

## Pliocene closed, 400 ppm
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CB.umQ04p5b.BASES RUI_LABS/foramecogem 20220104.CB.umQ04p5b.BASES.CASclosed.400_0p2.8P7Z4F.SPIN 10000

## Pliocene closed, 280 ppm
qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh muffin.CB.umQ04p5b.BASES RUI_LABS/foramecogem 20220104.CB.umQ04p5b.BASES.CASclosed.280_0p2.8P7Z4F.SPIN 10000
```

# Experiments
## Full effect:4.5 Ma (open,   400 ppm) - 0 Ma (closed, 280 ppm)
20220104.CB.umQ04p5a.BASES.CASopen.400_0p5.8P7Z4F.SPIN
20220104.CB.umQ00p0a.BASES.CASclosed.280_0p2.8P7Z4F.SPIN

## CO2 effect: 4.5 Ma (closed, 400 ppm) - 4.5 Ma (closed, 280 ppm)
20220104.CB.umQ04p5b.BASES.CASclosed.400_0p2.8P7Z4F.SPIN
20220104.CB.umQ04p5b.BASES.CASclosed.280_0p2.8P7Z4F.SPIN

## CAS effect: 4.5 Ma (open,   400 ppm) - 4.5 Ma (closed, 400 ppm)
20220104.CB.umQ04p5a.BASES.CASopen.400_0p5.8P7Z4F.SPIN
20220104.CB.umQ04p5b.BASES.CASclosed.400_0p2.8P7Z4F.SPIN
