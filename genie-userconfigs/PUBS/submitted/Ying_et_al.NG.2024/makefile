## example usage: make run exp=EXP1
GENIE_MAIN_DIR := $(HOME)/cgenie.muffin/genie-main
PARAMETERS := x2k1 x2k2 x2k5 x3k1 x3k2 x3k5 x4k1 x4k2 x4k5 x5k1 x5k2 x5k5

run_spinup:
	cd $(GENIE_MAIN_DIR) &&
		qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh cgenie.eb_go_gs_ac_bg_eg.u067bc.BASES RUI_LABS/kpg muffin.u067bc.PO4.8P8Z.SPIN 10000

run_exp1:
	cd $(GENIE_MAIN_DIR) && \
		for par in $(PARAMETERS); do \
			qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh cgenie.eb_go_gs_ac_bg_eg.u067bc.BASES RUI_LABS/kpg muffin.u067bc.PO4.8P8Z.EXP1.$$par 200 muffin.u067bc.PO4.8P8Z.SPIN; \
		done

run_exp2:
	cd $(GENIE_MAIN_DIR) && \
		qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh cgenie.eb_go_gs_ac_bg_eg.u067bc.BASES RUI_LABS/kpg muffin.u067bc.PO4.8P8Z.EXP2 200 muffin.u067bc.PO4.8P8Z.SPIN;

run_exp3:
	cd $(GENIE_MAIN_DIR) && \
		for par in $(PARAMETERS); do \
			qsub -j y -o cgenie_log -V -S /bin/bash runmuffin.sh cgenie.eb_go_gs_ac_bg_eg.u067bc.BASES RUI_LABS/kpg muffin.u067bc.PO4.8P8Z.EXP3.$$par 200 muffin.u067bc.PO4.8P8Z.SPIN; \
		done

