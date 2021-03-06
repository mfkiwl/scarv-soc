#!/bin/bash

set -e

echo "---------------------------------------------------"
echo " Re-creating scarv-soc Vivado Project"
echo "---------------------------------------------------"


echo "Making sure that scarv-soc FSBL exists..."
make -B fsbl

set -x

VIVADO=$VIVADO_ROOT/bin/vivado
PRJ_DIR=$SOC_WORK/vivado
PRJ_NAME=scarv-soc-xc7k

rm -rf $PRJ_DIR/$PRJ_NAME
mkdir -p $PRJ_DIR/$PRJ_NAME

cd $PRJ_DIR
$VIVADO -source $SOC_HOME/flow/xilinx/scarv-soc-project.tcl \
    -mode tcl -nojournal -nolog \
    -tclargs --origin_dir $SOC_HOME --project_name $PRJ_NAME

cd -

set +e
set +x

echo "---------------------------------------------------"
echo " Project Re-created."
echo " See $PRJ_DIR/$PRJ_NAME/$PRJ_NAME.xpr"
echo "---------------------------------------------------"

