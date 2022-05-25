#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /afs/cern.ch/user/m/millerca/vivado_hls/w3piselection/particlecount/method1/proj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
