#!/bin/bash
#SBATCH --job-name=cyclegan_train
#SBATCH --partition=all
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=180G
#SBATCH --gres=gpu:a100-20:1
#SBATCH --time=1-00:00:00
#SBATCH --error=logs_cyclegan/%j.out
#SBATCH --output=logs_cyclegan/%j.out


# Run training
python train.py \
  --dataroot ./datasets/waymo2bdd100k \
  --name waymo2bdd100k_2 \
  --model cycle_gan \
  --n_epochs 50 \
  --n_epochs_decay 50 \
  --batch_size 4 \
  --gpu_ids 0 \
  --save_epoch_freq 20 \
  --display_id -1 
