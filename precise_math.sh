#!/usr/bin/env bash

declare -i c=1
declare -i d=3
e=$(echo "scale=3; $c/$d"|bc)
echo $e
