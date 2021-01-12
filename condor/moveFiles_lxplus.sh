#!/bin/bash

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 year mchi dmchi" >&2
    exit 1
fi

year=$1
mchi=$2
dmchi=$3
#basedir="2018/GenFilter_1or2jets_icckw1_drjj0_xptj80_xqcut20_qcut20"
basedir="$year/signal"

# location of the produced AOD  files in lxplus  cernbox.

mkdir /eos/user/j/jmonroym/iDM/Samples/$basedir/Mchi-${mchi}_dMchi-${dmchi}_ctau-1
mkdir /eos/user/j/jmonroym/iDM/Samples/$basedir/Mchi-${mchi}_dMchi-${dmchi}_ctau-10
mkdir /eos/user/j/jmonroym/iDM/Samples/$basedir/Mchi-${mchi}_dMchi-${dmchi}_ctau-100
mkdir /eos/user/j/jmonroym/iDM/Samples/$basedir/Mchi-${mchi}_dMchi-${dmchi}_ctau-1000


for file in `ls /eos/user/j/jmonroym/iDM/Samples`; do

    if [[ $file == *"Mchi-${mchi}_dMchi-${dmchi}"*"ctau-1_"*"year-$year"* ]]; then
        echo "Moving file $file ..."
        mv /eos/user/j/jmonroym/iDM/Samples/$file /eos/user/j/jmonroym/iDM/Samples/$basedir/Mchi-${mchi}_dMchi-${dmchi}_ctau-1/$file
    elif [[ $file == *"Mchi-${mchi}_dMchi-${dmchi}"*"ctau-10_"*"year-$year"* ]]; then
        echo "Moving file $file ..."
        mv /eos/user/j/jmonroym/iDM/Samples/$file /eos/user/j/jmonroym/iDM/Samples/$basedir/Mchi-${mchi}_dMchi-${dmchi}_ctau-10/$file
    elif [[ $file == *"Mchi-${mchi}_dMchi-${dmchi}"*"ctau-100_"*"year-$year"* ]]; then
        echo "Moving file $file ..."
        mv /eos/user/j/jmonroym/iDM/Samples/$file /eos/user/j/jmonroym/iDM/Samples/$basedir/Mchi-${mchi}_dMchi-${dmchi}_ctau-100/$file
    elif [[ $file == *"Mchi-${mchi}_dMchi-${dmchi}"*"ctau-1000_"*"year-$year"* ]]; then
        echo "Moving file $file ..."
        mv /eos/user/j/jmonroym/iDM/Samples/$file /eos/user/j/jmonroym/iDM/Samples/$basedir/Mchi-${mchi}_dMchi-${dmchi}_ctau-1000/$file
    fi

done
