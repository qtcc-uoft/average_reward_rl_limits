#!/bin/bash
#SBATCH --account=aip-florian7
#SBATCH --job-name=crossroads
#SBATCH --time=3:00:00
#SBATCH --mem=30GB
#SBATCH --gpus-per-node=1
#SBATCH --output=slurm_logs/finetune-%j.out
#SBATCH --error=slurm_logs/finetune-%j.err


cd ~/projects/aip-florian7/qtcc/average_reward_rl_limits

module load StdEnv/2023
module load intel/2023.2.1 
module load cuda/11.8
module load python/3.10

source pyenv/bin/activate


#python -m wandb.cli login 1225cab8d96c3720b5fbe61ca26431f08d95f5e9

python main.py $@