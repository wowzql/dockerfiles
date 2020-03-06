#! /bin/bash

START_CMD="bin/start-exec.sh"
exec $START_CMD &

tail -f /dev/null