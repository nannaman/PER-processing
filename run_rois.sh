#!/bin/bash
#SBATCH --job-name=read_rois
#SBATCH --time=4-00:00:00
#SBATCH --ntasks=1
#SBATCH --partition=trc

ml python/3.6.1

date
python3 -u /home/users/nannaman/projects/PER-processing/read_rois.py
