#!/usr/bin/bash

echo cpu: $(ps -axC -o %cpu | awk '{s+=$1} END {print s}')