#!/usr/bin/env sh

npm start &
sleep 1
echo $! > .pidfile

