#!/bin/bash
# Monitor CPU usuage

top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4"% CPU usuage"}'