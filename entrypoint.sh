#! /usr/bin/env bash
mkdir -p $CHANLLENGE_ROOT
echo $CHANLLENGE_DATA > $CHANLLENGE_ROOT/$CHANLLENGE_FILE
exec "$@"
