#!/bin/bash
#SBATCH -J SpatialEmbeddings
#SBATCH -p dgx2
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:4
module load miniconda3
source activate numpy
CITYSCAPES_DIR=./ python3 ./src/train.py