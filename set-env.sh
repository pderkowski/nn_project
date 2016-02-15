#!/usr/bin/env bash

# The directory where the script is
export NN="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ \( "`which ipython`" != /pio/os/anaconda/bin/ipython \) -a \( -e /pio/os/anaconda/set-env.sh \) ]
then
    echo "Adding Anaconda Python from /pio/os to your environment"
    source /pio/os/anaconda/set-env.sh
fi

# source /pio/os/cuda-7.5/set-env.sh
# echo "Sourcing cuda-7.5"

export FUEL_DATA_PATH=/pio/data/data/fuel/
#python modules
export PYTHONPATH=$NN:$NN/libs/fuel:$NN/libs/picklable-itertools:$PYTHONPATH
export PATH=$ASCOPE/libs/fuel/bin:$PATH
export THEANORC=$NN/config/theano.rc:$HOME/.theanorc
