#!/bin/bash
set -e

# run_galaxy.sh
./server.sh --galaxy-name $1 --admin $2 --datapath ~/data/avorion

exit 0
