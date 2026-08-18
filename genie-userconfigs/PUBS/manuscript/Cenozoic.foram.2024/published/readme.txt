================================================================
Crichton et al. (2021) ECOGEM hybrids
================================================================

These standalone user-configs retain the published Crichton et al.
(2021) geography, climate boundary conditions, physical calibration,
pCO2, atmospheric d13CO2, and tuned salinity forcing. They replace the
published biology with this project's
USERCONFIG.PALEO.ECOGEM.PO4.SiO4.SPIN ecosystem.

The proxy-preferred best-fit series is used at its exact ages: closed
CAS at 0, 2.5, 4.5, 7.5, and 10 Ma, and open CAS at 12.5 and 15 Ma,
where Crichton et al. did not simulate closed-CAS alternatives.

These ECOGEM hybrids are new experiments and must be checked before use.
No BIOGEM-only variants or other published configurations are included.

Run from $HOME/cgenie.muffin/genie-main:

./runmuffin.sh muffin.CB.umQ00p0a.BASES PUBS/manuscript/Cenozoic.foram.2024/published muffin.CBE.umQ00p0a.Crichton2021.CASclosed.280_0p2.ECOGEM.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CB.umQ02p5b.BASES PUBS/manuscript/Cenozoic.foram.2024/published muffin.CBE.umQ02p5b.Crichton2021.CASclosed.400_0p1.ECOGEM.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CB.umQ04p5b.BASES PUBS/manuscript/Cenozoic.foram.2024/published muffin.CBE.umQ04p5b.Crichton2021.CASclosed.400_0p2.ECOGEM.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CB.umQ07p5b.BASES PUBS/manuscript/Cenozoic.foram.2024/published muffin.CBE.umQ07p5b.Crichton2021.CASclosed.800_0p3.ECOGEM.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CB.umQ10p0b.BASES PUBS/manuscript/Cenozoic.foram.2024/published muffin.CBE.umQ10p0b.Crichton2021.CASclosed.800_0p3.ECOGEM.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CB.umQ12p5a.BASES PUBS/manuscript/Cenozoic.foram.2024/published muffin.CBE.umQ12p5a.Crichton2021.CASopen.1120_0p2.ECOGEM.PO4.SiO4.SPIN 10000
./runmuffin.sh muffin.CB.umQ15p0a.BASES PUBS/manuscript/Cenozoic.foram.2024/published muffin.CBE.umQ15p0a.Crichton2021.CASopen.1120_0p1.ECOGEM.PO4.SiO4.SPIN 10000

================================================================
