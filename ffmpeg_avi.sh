#!/bin/bash
#SBATCH --job-name=ffmpeg
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

mkdir '/oak/stanford/groups/trc/data/Ashley2/bruker videos/20210709/analysis/fly1'
mkdir '/oak/stanford/groups/trc/data/Ashley2/bruker videos/20210709/analysis/fly2'

ffmpeg -i '/oak/stanford/groups/trc/data/Ashley2/bruker videos/20210709/fly1/13_37_46MJPG-0000.avi' '/oak/stanford/groups/trc/data/Ashley2/bruker videos/20210709/analysis/fly1/V01frame_%07d.jpg'
ffmpeg -i '/oak/stanford/groups/trc/data/Ashley2/bruker videos/20210709/fly2/15_56_54MJPG-0000.avi' '/oak/stanford/groups/trc/data/Ashley2/bruker videos/20210709/analysis/fly2/V02frame_%07d.jpg'
