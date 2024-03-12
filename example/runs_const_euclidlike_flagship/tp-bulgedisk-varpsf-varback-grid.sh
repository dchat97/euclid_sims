#!/bin/bash

GLOBAL=/users/aanavarroa/original_gitrepos/euclid_sims
SCRIPTDIR=$GLOBAL/example/
WORKDIR=/vol/euclidraid5/data/aanavarroa/catalogs/MomentsML2/fullimages_constimg_euclid-flagship0.05/tp-bulgedisk-varpsf-varback-grid
SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex1.0
#ADAMOMDIR=$WORKDIR/adamom_sexcat_nw_ss1.0
ADAMOMDIR=$WORKDIR/adamom_trucat_nw_ss2
KSBDIR=$WORKDIR/ksb_sexcat_nw_ss1.0
GROUPCATS=groupcat.fits
ADAMOMPSFCAT=/vol/euclidraid4/data/aanavarroa/catalogs/all_adamom_PSFToolkit_2022_shiftUm2.0_big.fits
CAT_ARGS=$SCRIPTDIR/configfiles/simconfigfiles/tp.yaml
SEX_ARGS=$SCRIPTDIR/configfiles/sexconfigfiles/oldsexconf.yaml
CONSTANTS=$SCRIPTDIR/configfiles/simconstants.yaml
#CONSTANTS=$SCRIPTDIR/configfiles/simconstants_coadd.yaml

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --loglevel=INFO --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --ksbdir=$KSBDIR --adamompsfcatalog=$ADAMOMPSFCAT --groupcats=$GROUPCATS --cat_args=$CAT_ARGS --sex_args=$SEX_ARGS --constants=$CONSTANTS --tru_type=2 --pixel_conv --substractsky --dist_type=uniflagship --cattype=tru --ncpu=200 --ncat=3000 --skipdone --typegroup=tp --match_pairs --runadamom #--runsims --usepsfimg --usevarpsf  #--runsex #--usevarsky #--matchinput #--runsex #--adamom_weight  #--runsex #--runksb 
