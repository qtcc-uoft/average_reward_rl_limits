import numpy as np
import gymnasium as gym
from tqdm import trange
import os
import contextlib

class Hallway(gym.Env): 
    """hallway
    """
    def __init__(
        self,
        length = 10,
        use_one_hot_state_encodings = False,
        non_terminating = False,
        time_limit = 1e5):

        # storage
        #print(time_limit)
        if not type(time_limit) == int:
        
            self.timeout_length = eval(time_limit)
        else:
            self.timeout_length = time_limit
        self.length = length
        self.use_one_hot_state_encodings = use_one_hot_state_encodings
        self.non_terminating = non_terminating

        # sets up state space
        self.state = 1
        self.current_steps = 0
            
        # gymnasium stuff 
        if self.use_one_hot_state_encodings:
            self.observation_space = gym.spaces.Box(-np.inf,np.inf,shape=(length,),dtype=float)
        else:
            self.observation_space = gym.spaces.Box(-np.inf,np.inf,shape=(1,),dtype=float)
        self.action_space = gym.spaces.Box(-1.0,1.0,shape=(1,),dtype=float)

        
        
    def step(self,
             action):
        # reminder of the Gym-style API
        # state, reward = env.step(action)
        # why no dones? not a terminating MDP
        reward = 0
        if self.state == self.length:
            # If at goal state, gives reward and returns to beginning
            reward = self.length 
            self.state = 1
        else:
            # if not, moves left or right
            if action >= 0:
                # moves right, receives penalty
                reward = -1
                self.state = self.state + 1
            else:
                # moves left, careful not to go too far left. receives no movement penalty
                reward = 0
                self.state = np.max((self.state-1,1))
        
        if self.use_one_hot_state_encodings:
            obs = self.get_one_hot_representation(self.state)
        else:
            obs = np.array((self.state + 0.0,))

        # handles timeout. no reset b/c its a continuous environment
        self.current_steps += 1

        terminated = False
        if not self.non_terminating:
            terminated = self.current_steps >= self.timeout_length 
        #print(reward)
        return obs,reward,terminated,False,{}
    def reset(self, seed = None, options =  None):
        
        super().reset(seed=seed)
       
        self.state = 1
        self.current_steps = 0
        obs = self.state
        if self.use_one_hot_state_encodings:
            obs = self.get_one_hot_representation(self.state)
        else:
            obs = np.array((self.state + 0.0,))

        return obs, {}
    
    def get_one_hot_representation(self,state):
        thing = np.zeros(self.length)
        thing[state-1] = 1.0
        return thing

gym.register(
    id="Hallway",
    entry_point=Hallway,
)