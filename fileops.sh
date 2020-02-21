#!/bin/bash

name=$1
path=$2

tar -czvf $name.tar.gz $path 

gpg -c $name.tar.gz

rm -rf $name.tar.gz

rsync -avz -e "ssh " /path/to/yourfile user@backupserver.com:/backup/
echo "backup for $(date) " | mail -s "backup complete" user@youremail.com