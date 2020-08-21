#!/bin/bash

# Source predefined functions and variables
. /etc/profile

/emuelec/scripts/emuelecRunEmu.sh "/storage/roms/ports/cannonball/" -Pports "${2}" -Ccannonball "-SC${0}"
ret_error=$?

[[ "$ret_error" != 0 ]] && ee_check_bios "Cannonball"
exit $ret_error