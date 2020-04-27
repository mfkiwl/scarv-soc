#!/bin/bash

export SOC_HOME="${PWD}"
export SOC_WORK=$SOC_HOME/work
export TEXMFLOCAL="${TEXMFLOCAL}:${SOC_HOME}/extern/texmf"

export SCARV_CPU_RTL_DIR=$SOC_HOME/extern/scarv-cpu/rtl/core

if [[ -z "$VERILATOR_ROOT" ]]; then
    echo "Warning: No VERILATOR_ROOT environment variable set."
fi

if [[ -z "$YOSYS_ROOT" ]]; then
    echo "Warning: No YOSYS_ROOT environment variable set."
fi

echo "------------------------ SCARV SoC Project Setup ----------------------"
echo "SOC_HOME          = $SOC_HOME"
echo "SOC_WORK          = $SOC_WORK"
echo "VERILATOR_ROOT    = $VERILATOR_ROOT"
echo "YOSYS_ROOT        = $YOSYS_ROOT"
echo "SCARV_CPU_RTL_DIR = $SCARV_CPU_RTL_DIR"
echo "-----------------------------------------------------------------------"

