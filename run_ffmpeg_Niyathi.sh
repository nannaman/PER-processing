#!/bin/bash
#SBATCH --job-name=NA_ffmpeg
#SBATCH --time=4-00:00:00
#SBATCH --ntasks=1
#SBATCH --partition=trc
##two should comemnt out SBATCH --mem 260G
#SBATCH --cpus-per-task=2
#SBATCH --output=./logs/mainlog.out
#SBATCH --open-mode=append
#SBATCH --mail-type=ALL

ml system
ml ffmpeg

ml python/3.6.1

date
python3 -u /home/users/nannaman/projects/PER-processing/ffmpeg_Niyathi.py
