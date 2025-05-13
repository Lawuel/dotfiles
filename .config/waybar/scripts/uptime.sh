#!/bin/bash

# Get pretty uptime
uptime -p | sed -E 's/up //' \
    | sed -E 's/ day[s]?/d/g; s/ hour[s]?/h/g; s/ minute[s]?/m/g; s/ second[s]?/s/g; s/,//g'