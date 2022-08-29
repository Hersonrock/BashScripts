#!/usr/bin/env bash
#This script is made to give me a random day of the year which I will use to find the "quote" of the day on my daily quotes book.

printf "Today's reading is\nDay: $((1+$RANDOM % 31))\nMonth:$((1+$RANDOM % 12))\n"
printf "Be your best friend\n"

