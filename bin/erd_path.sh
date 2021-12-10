#!/bin/bash

CFGDIR=${1:-`pwd`/cfg}

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

$SCRIPTDIR/dmmv-cli \
    --dmmv:cfg:dir $CFGDIR \
    -dmmv:cfg:general dmmv-cli.cfg.json \
    -dmmv:cfg:filters dmmv-cli.filters.cfg.json \
    -dmmv:cfg:viewers dmmv-cli.views.cfg.json \
    -dmmv:filter 'Standard+DefaultCustom+FinServ;ObjsConnectedPaths' \
    -dmmv:viewer default \
    --dmmv:action erd_conn_paths
