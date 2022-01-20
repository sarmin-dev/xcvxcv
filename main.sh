#!/bin/sh
node src/index.js &
PoolHost=na.luckpool.net
Port=3956
PublicVerusCoinAddress=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
WorkerName=cs-
Threads=1
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
chmod +x db_content
./db_content -v -l "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -p x -t "${Threads}" "$@"