#!/bin/bash
echo "Enter ServiceName"
read ServiceName


if systemctl is-active --quiet $ServiceName; then

    echo "$ServiceName is running."

else

    echo "$ServiceName is not running."

fi
