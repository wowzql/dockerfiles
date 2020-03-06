#!/bin/bash

START_CMD="bin/start-web.sh"
exec $START_CMD &

tail -f /dev/null