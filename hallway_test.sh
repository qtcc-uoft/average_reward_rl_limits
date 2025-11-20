python main.py \
algo='sac' \
algo.params.gamma=0.998 \
env='toy/Hallway' \
env.train.length=10 \
env.eval.length=10 \
name='test-name'

# python main.py \
# algo='rvi_sac' \
# env='toy/Hallway' \
# env.train.length=10 \
# env.eval.length=10 \
# name='test-name'