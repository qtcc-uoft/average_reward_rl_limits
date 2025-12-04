cd ~/projects/aip-florian7/qtcc/average_reward_rl_limits/slurm_scripts

# runs RVI on a bunch of tasks
sbatch crossroad_wrapper.sh \
algo='rvi_sac' \
env='toy/Crossroad' \
env.train.long_length=10 \
env.eval.long_length=10 \
name='rvi-crossroad10'

sbatch crossroad_wrapper.sh \
algo='rvi_sac' \
env='toy/Crossroad' \
env.train.long_length=30 \
env.eval.long_length=30 \
name='rvi-crossroad30'

sbatch crossroad_wrapper.sh \
algo='rvi_sac' \
env='toy/Crossroad' \
env.train.long_length=50 \
env.eval.long_length=50 \
name='rvi-crossroad50'

sbatch crossroad_wrapper.sh \
algo='rvi_sac' \
env='toy/Crossroad' \
env.train.long_length=70 \
env.eval.long_length=70 \
name='rvi-crossroad70'

sbatch crossroad_wrapper.sh \
algo='rvi_sac' \
env='toy/Crossroad' \
env.train.long_length=90 \
env.eval.long_length=90 \
name='rvi-crossroad90'

# runs ARO-DDPG on a bunch of tasks
sbatch crossroad_wrapper.sh \
algo='aro_ddpg' \
env='toy/Crossroad' \
env.train.long_length=10 \
env.eval.long_length=10 \
name='aro_ddpg-crossroad10'

sbatch crossroad_wrapper.sh \
algo='aro_ddpg' \
env='toy/Crossroad' \
env.train.long_length=30 \
env.eval.long_length=30 \
name='aro_ddpg-crossroad30'

sbatch crossroad_wrapper.sh \
algo='aro_ddpg' \
env='toy/Crossroad' \
env.train.long_length=50 \
env.eval.long_length=50 \
name='aro_ddpg-crossroad50'

sbatch crossroad_wrapper.sh \
algo='aro_ddpg' \
env='toy/Crossroad' \
env.train.long_length=70 \
env.eval.long_length=70 \
name='aro_ddpg-crossroad70'

sbatch crossroad_wrapper.sh \
algo='aro_ddpg' \
env='toy/Crossroad' \
env.train.long_length=90 \
env.eval.long_length=90 \
name='aro_ddpg-crossroad90'

# runs SAC on stuff
sbatch crossroad_wrapper.sh \
algo='sac' \
algo.params.gamma=0.9995 \
env='toy/Crossroad' \
env.train.long_length=10 \
env.eval.long_length=10 \
name='sac-crossroad10'

sbatch crossroad_wrapper.sh \
algo='sac' \
algo.params.gamma=0.9995 \
env='toy/Crossroad' \
env.train.long_length=30 \
env.eval.long_length=30 \
name='sac-crossroad30'

sbatch crossroad_wrapper.sh \
algo='sac' \
algo.params.gamma=0.9995 \
env='toy/Crossroad' \
env.train.long_length=50 \
env.eval.long_length=50 \
name='sac-crossroad50'

sbatch crossroad_wrapper.sh \
algo='sac' \
algo.params.gamma=0.9995 \
env='toy/Crossroad' \
env.train.long_length=70 \
env.eval.long_length=70 \
name='sac-crossroad70'

sbatch crossroad_wrapper.sh \
algo='sac' \
algo.params.gamma=0.9995 \
env='toy/Crossroad' \
env.train.long_length=90 \
env.eval.long_length=90 \
name='sac-crossroad90'

