

#!/bin/bash

GLOBAL=/users/aanavarroa/original_gitrepos/euclid_sims
SCRIPTDIR=$GLOBAL/example/
WORKDIR=/vol/euclidraid5/data/aanavarroa/catalogs/MomentsML2/fullimages_constimg_euclid-flagship0.05/tw-test-grid
SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex1.0
#ADAMOMDIR=$WORKDIR/adamom_sexcat_nw_ss1.0
ADAMOMDIR=$WORKDIR/adamom_trucat_nw_ss
KSBDIR=$WORKDIR/ksb_sexcat_nw_ss1.0
GROUPCATS=groupcat.fits
ADAMOMPSFCAT=/vol/euclidraid4/data/aanavarroa/catalogs/all_adamom_PSFToolkit_2022_shiftUm2.0_big.fits
CAT_ARGS=$SCRIPTDIR/configfiles/simconfigfiles/tw-test.yaml
SEX_ARGS=$SCRIPTDIR/configfiles/sexconfigfiles/oldsexconf.yaml
CONSTANTS=$SCRIPTDIR/configfiles/simconstants.yaml
#CONSTANTS=$SCRIPTDIR/configfiles/simconstants_coadd.yaml

SELECTED_FLAGSHIP=/vol/euclid6/euclid6_1/dchatterjee/thesis/selected_flagship/selected_flagship_25.5_s.fits
COSMOSCAT=real_galaxy_catalog_25.2.fits
COSMOSDIR=/vol/euclid6/euclid6_1/dchatterjee/thesis/catalog_files/COSMOS_25.2

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --loglevel=INFO --selected_flagshipcat=$SELECTED_FLAGSHIP --cosmoscatfile=$COSMOSCAT --cosmosdir=$COSMOSDIR --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --ksbdir=$KSBDIR --adamompsfcatalog=$ADAMOMPSFCAT --groupcats=$GROUPCATS --cat_args=$CAT_ARGS --sex_args=$SEX_ARGS --constants=$CONSTANTS --tru_type=4 --pixel_conv --substractsky --subsample_nbins=2 --dist_type=flagship --cattype=tru --ncpu=10 --ncat=10 --skipdone --typegroup=tw --runsims --usepsfimg --runadamom --rot_pair --usevarpsf --runadamom  #--runsex #--usevarsky #--matchinput #--runsex #--adamom_weight  #--runsex #--runksb 
