#!/usr/bin/env bash

copy_backup=false
data=("This is a test"      # Name
      "Tittle Test"         # Tittle
       "Subject Test"       # Subject
       "semester Test"      # Semester
       "professor test"     # Professor
       "university test"    # University
       "career test"        # Career
       "department test"    # Department
       "where test at")     # Where


while getopts "r" opt; do
  case $opt in
    r)
      copy_backup=true
      ;;
    \?)
      echo "Uso: $0 [-r]"
      exit 1
      ;;
  esac
done

if $copy_backup; then
  cp ./main.tex.bak ../src/main.tex
else

  cp ../src/main.tex ./main.tex.bak
  for field in "${data[@]}"; do
      sed "0,/\..*\./{s/\..*\./$field/}" -i ../src/main.tex
  done

fi
