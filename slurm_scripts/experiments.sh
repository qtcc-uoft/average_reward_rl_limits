cd ~/projects/aip-florian7/qtcc/average_reward_rl_limits/slurm_scripts

sbatch hallway_wrapper.sh \
algo='rvi_sac' \
env='toy/Hallway' \
env.train.length=30 \
env.eval.length=30 \