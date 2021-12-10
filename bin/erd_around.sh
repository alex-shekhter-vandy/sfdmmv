#!/bin/bash

LEVELS=${1:-2}
CFGDIR=${2:-`pwd`/dataModel/cfg}

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

$SCRIPTDIR/dmmv-cli \
    --dmmv:cfg:dir $CFGDIR \
    -dmmv:cfg:general dmmv-cli.cfg.json \
    -dmmv:cfg:filters dmmv-cli.filters.cfg.json \
    -dmmv:cfg:viewers dmmv-cli.views.cfg.json \
    -dmmv:filter 'Standard+DefaultCustom+FinServ;TargetObjects' \
    -dmmv:viewer default \
    --dmmv:action erd_around \
    -dmmv:erd:levels $LEVELS
