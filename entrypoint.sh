#!/bin/sh
if [ "$#" -eq 0 ];
then
  PORT=4001 _build/prod/rel/strto/bin/strto foreground
fi
exec "$@"
