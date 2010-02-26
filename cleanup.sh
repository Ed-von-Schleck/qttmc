#!/bin/sh
# cleans up unneeded backup files created by emacs
#
# author: Christian Schramm <christian.h.m.schramm@gmail.com>
# free for public use
let COUNT=0
for dir in $(find ./ -type d);
do
    if [ -d $dir ]; then
        FILES=$dir/*~
        if [ $FILES != "$dir/*~" ]; then
            for backupfile in $(ls $dir/*~);
            do
                rm $backupfile
                echo "deleted $backupfile"
                let COUNT=$COUNT+1
            done
        fi
    fi
done

echo "$COUNT files deleted"

