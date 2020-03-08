#!/bin/bash

GALAXY_NAME=${AVORION_GALAXY_NAME:=default}

if [[ -z AVORION_ADMIN_STEAM_ID ]]; then
  ADMIN_STEAM_ID=""
else
  ADMIN_STEAM_ID="--admin ${AVORION_GALAXY_NAME}"
fi

# run_galaxy.sh
~/server.sh --galaxy-name "${GALAXY_NAME}" --datapath "~/data/avorion/${GALAXY_NAME}" $ADMIN_STEAM_ID

exit 0
