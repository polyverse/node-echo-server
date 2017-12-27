#!/bin/bash
SHORT_DESCRIPTION="Docker run command for polyverse/node-hello-world"

USAGE="$(cat <<EOF

Usage: sh run.sh ${0##*/}

$SHORT_DESCRIPTION

EOF
)"

if [ $# -ne 0 ]; then
  printf "$USAGE\n\n"
  exit 1
fi

# Use this command to run
docker run -d --rm --privileged --name node-hello-world -p 8080:8080 -p 8008:8008 polyverse/node-hello-world

