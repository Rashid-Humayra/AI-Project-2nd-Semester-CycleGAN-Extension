#!/bin/bash
#SBATCH --job-name=cyclegan_test
#SBATCH --partition=all
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=180G
#SBATCH --gres=gpu:a100-10:1
#SBATCH --time=1-00:00:00
#SBATCH --error=logs_cyclegan/%j.out
#SBATCH --output=logs_cyclegan/%j.out


python test.py \
  --dataroot ./datasets/waymo2bdd100k \
  --name waymo2bdd100k \
  --model cycle_gan \
  --no_dropout \
  --preprocess none \
  --use_wandb