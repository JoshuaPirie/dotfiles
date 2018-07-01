#!/bin/sh

nvidia-smi -q -i 0 -d UTILIZATION | grep -E "^ *Gpu *:" | grep -oE "[0-9]+"
