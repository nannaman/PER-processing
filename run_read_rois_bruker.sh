#!/bin/bash
#SBATCH --job-name=NA_ffmpeg
#SBATCH --time=4-00:00:00
#SBATCH --ntasks=1
#SBATCH --partition=trc
##two should comemnt out SBATCH --mem 260G
#SBATCH --cpus-per-task=2
#SBATCH --output=./logs/mainlog.out
#SBATCH --open-mode=append
#SBATCH --mail-type=ALLml 

python/3.6.1
ml py-numpy/1.14.3_py36
date
python3 -u /home/users/nannaman/projects/PER-processing/read_rois_bruker.py
