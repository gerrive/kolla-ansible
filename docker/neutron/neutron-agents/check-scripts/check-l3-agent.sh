#!/bin/bash

RES=0

check=$(/usr/bin/neutron agent-list | awk '/ L3 / {print $9}')
error="ERROR: Neutron L3 Agent is not alive."

if [[ $check != ":-)" ]]; then
    echo $error >&2
    RES=1
fi

exit $RES
