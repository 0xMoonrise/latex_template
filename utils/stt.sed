#Script to convert spaces to tabs
#sed -f stt.sed -i Makefile
s/^[ ]\+/\t/g
