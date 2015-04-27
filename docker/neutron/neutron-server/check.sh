#!/bin/bash

RES=0

. /openrc
if ! keystone token-get > /dev/null; then
    echo "ERROR: keystone token-get failed" >&2
    RES=1
else
    if ! neutron ext-list > /dev/null; then
        echo "ERROR: neutron ext-list failed" >&2
        RES=1
    fi
fi

exit $RES

