#!/usr/bin/env bash

declare -A accents
accents=(
  ["blue"]="122, 162, 247"
  ["blue0"]="61, 89, 161"
  ["blue1"]="42, 195, 222"
  ["blue2"]="13, 185, 215"
  ["blue5"]="137, 221, 255"
  ["blue6"]="180, 249, 248"
  ["blue7"]="57, 75, 112"
  ["cyan"]="125, 207, 255"
  ["green"]="158, 206, 106"
  ["green1"]="115, 218, 202"
  ["green2"]="65, 166, 181"
  ["magenta"]="187, 154, 247"
  ["magenta2"]="255, 0, 124"
  ["orange"]="255, 158, 100"
  ["purple"]="157, 124, 216"
  ["red"]="247, 118, 142"
  ["red1"]="219, 75, 75"
  ["teal"]="26, 188, 156"
  ["yellow"]="224, 175, 104"
  ["default"]="192, 202, 245"
)
for color in "${!accents[@]}"; do
  rm -rf $color
  cp -r Template $color
  sd 'ACCENT' $color $color/manifest.json
  sd -s 'COLOR' "${accents[$color]}" $color/manifest.json
done
