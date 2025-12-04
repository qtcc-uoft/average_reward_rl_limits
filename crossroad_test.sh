# python main.py \
# algo='sac' \
# algo.params.gamma=0.998 \
# env='toy/Crossroad' \
# env.train.long_length=10 \
# env.eval.long_length=10 \
# name='test-name'

python main.py \
algo='rvi_sac' \
env='toy/Crossroad' \
env.train.long_length=10 \
env.eval.long_length=10 \
name='test-name'