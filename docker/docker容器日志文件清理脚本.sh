#!/bin/bash
echo "======== start clean docker containers logs ========"
logs=$(find /var/lib/docker/containers/ -name *-json.log)
for log in $logs
        do
                fileSizeByte=$(wc -c $log |awk '{print $1}')
                ((fileSizeKB=$fileSizeByte/1024))
                echo "clean logs :$fileSizeByte Bytes $fileSizeKB KB - $log"
                cat /dev/null > $log
        done
echo "======== end clean docker containers logs ========"