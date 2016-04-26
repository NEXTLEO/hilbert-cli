#!/bin/sh

SELFDIR=`dirname "$0"`
SELFDIR=`cd "$SELFDIR" && pwd`

set -e

if [ -z "$CFG_DIR" ]; then
    export CFG_DIR="$PWD" 
    # HOME/.config/dockapp"
fi

cd $CFG_DIR

CMD="docker"

### station id
TARGET_HOST_NAME="$1"
shift

ARGS=$@

exec "$CFG_DIR/remote.sh" "${TARGET_HOST_NAME}" "${CMD} ${ARGS}"
