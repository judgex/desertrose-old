#!/bin/sh
if ps -ef | grep -v grep | grep DreamDaemon ; then
  echo "already running."
  exit 0
else
  DreamDaemon /ss13/fo13/desertrose/tgstation.dmb 5454 -trusted
  echo "launching"
  exit 0
fi
