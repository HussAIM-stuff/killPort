#!/bin/zsh
if [ $# -ne 1 ]; then
  echo "Usage: killPort PORT" >&2
  exit 1
fi
x=`lsof -i | grep -c $1`
if [ $x -gt 0 ]; then
  echo "$x processes using port $1"
  echo "Attemting to kill them..."
  lsof -ti:$1 | xargs kill -9
else
  echo "Couldn't find any process using port $1"
fi
