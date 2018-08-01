#!/bin/bash

help()
{
    #TODO: Add help text here
    echo "This script installs Hail in a Spark cluster onto Ubuntu on Azure"
}

echo "Begin execution of Hail script extension on ${HOSTNAME}"

if [ "${UID}" -ne 0 ];
then
    echo "Script executed without root permissions"
    echo "You must be root to run this program." >&2
    exit 3
fi

