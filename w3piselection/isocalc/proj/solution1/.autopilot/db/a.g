#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /afs/cern.ch/user/m/millerca/vivado_hls/w3piselection/isocalc/proj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
