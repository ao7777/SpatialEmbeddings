#!/bin/bash
#SBATCH -J SpatialEmbeddings
#SBATCH -p dgx2
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --gres=gpu:4
module load miniconda3
source activate /lustre/home/acct-seewcx/seewcx/.conda/envs/numpy
CITYSCAPES_DIR=.  python3 ./src/train.py
