cd ~/projects/aip-florian7/qtcc/average_reward_rl_limits/slurm_scripts

# runs RVI on a bunch of tasks
sbatch hallway_wrapper.sh \
algo='rvi_sac' \
env='toy/Hallway' \
env.train.length=10 \
env.eval.length=10 \
name='rvi-hallway10'

sbatch hallway_wrapper.sh \
algo='rvi_sac' \
env='toy/Hallway' \
env.train.length=30 \
env.eval.length=30 \
name='rvi-hallway30'

sbatch hallway_wrapper.sh \
algo='rvi_sac' \
env='toy/Hallway' \
env.train.length=50 \
env.eval.length=50 \
name='rvi-hallway50'

sbatch hallway_wrapper.sh \
algo='rvi_sac' \
env='toy/Hallway' \
env.train.length=70 \
env.eval.length=70 \
name='rvi-hallway70'

sbatch hallway_wrapper.sh \
algo='rvi_sac' \
env='toy/Hallway' \
env.train.length=90 \
env.eval.length=90 \
name='rvi-hallway90'

# runs ARO-DDPG on a bunch of tasks
sbatch hallway_wrapper.sh \
algo='aro_ddpg' \
env='toy/Hallway' \
env.train.length=10 \
env.eval.length=10 \
name='aro_ddpg-hallway10'

sbatch hallway_wrapper.sh \
algo='aro_ddpg' \
env='toy/Hallway' \
env.train.length=30 \
env.eval.length=30 \
name='aro_ddpg-hallway30'

sbatch hallway_wrapper.sh \
algo='aro_ddpg' \
env='toy/Hallway' \
env.train.length=50 \
env.eval.length=50 \
name='aro_ddpg-hallway50'

sbatch hallway_wrapper.sh \
algo='aro_ddpg' \
env='toy/Hallway' \
env.train.length=70 \
env.eval.length=70 \
name='aro_ddpg-hallway70'

sbatch hallway_wrapper.sh \
algo='aro_ddpg' \
env='toy/Hallway' \
env.train.length=90 \
env.eval.length=90 \
name='aro_ddpg-hallway90'

# runs SAC on stuff
sbatch hallway_wrapper.sh \
algo='sac' \
algo.params.gamma=0.99 \
env='toy/Hallway' \
env.train.length=10 \
env.eval.length=10 \
name='aro_ddpg-hallway10'

sbatch hallway_wrapper.sh \
algo='sac' \
algo.params.gamma=0.999 \
env='toy/Hallway' \
env.train.length=30 \
env.eval.length=30 \
name='aro_ddpg-hallway30'

sbatch hallway_wrapper.sh \
algo='sac' \
algo.params.gamma=0.9995 \
env='toy/Hallway' \
env.train.length=50 \
env.eval.length=50 \
name='aro_ddpg-hallway50'

sbatch hallway_wrapper.sh \
algo='sac' \
algo.params.gamma=0.9997 \
env='toy/Hallway' \
env.train.length=70 \
env.eval.length=70 \
name='aro_ddpg-hallway70'

sbatch hallway_wrapper.sh \
algo='sac' \
algo.params.gamma=0.9998 \
env='toy/Hallway' \
env.train.length=90 \
env.eval.length=90 \
name='aro_ddpg-hallway90'

