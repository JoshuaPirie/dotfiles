#!/bin/sh

nvidia-smi -q -i 0 -d TEMPERATURE | grep -m 1 "GPU Current Temp" | sed -E "s/^.*: ([0-9]+) C$/\1/"
