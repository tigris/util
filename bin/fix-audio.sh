#!/bin/bash
set -e

FILE=$1
AMOUNT=$2

ORIG=${FILE%\.*}
ORIG="${ORIG}-original.mkv"

mv "${FILE}" "${ORIG}"

mkvmerge -q -o "${FILE}" --compression -1:none --sync 1:${AMOUNT} "${ORIG}"

exit 0
