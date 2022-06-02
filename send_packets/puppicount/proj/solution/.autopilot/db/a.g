#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /afs/cern.ch/user/m/millerca/vivado_hls/send_packets/puppicount/proj/solution/.autopilot/db/a.g.bc ${1+"$@"}
