#!/bin/bash
#SBATCH --job-name=torch_install
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=32G
#SBATCH --gres=gpu:a100-10:1
#SBATCH --time=1-00:00:00
#SBATCH --error=logs_torch/%j.out
#SBATCH --output=logs_torch/%j.out


pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
