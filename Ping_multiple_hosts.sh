#!/bin/bash

#Ping multiple hosts

for host in google.com github.com stackoverflow.com; do
  ping -c 1 $host && echo "$host is up" || echo "$host is down"
done