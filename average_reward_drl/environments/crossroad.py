import numpy as np
import gymnasium as gym
from tqdm import trange
import os
import contextlib

class Crossroad(gym.Env): 
    """croaddowarsd
    """
    def __init__(
        self,
        short_length = 10,
        long_length = 30,
        non_terminating = False,
        time_limit = 1e5):

        # storage
        #print(time_limit)
        if not type(time_limit) == int:
        
            self.timeout_length = eval(time_limit)
        else:
            self.timeout_length = time_limit
        self.short_length = short_length
        self.long_length = long_length
        self.non_terminating = non_terminating

        # sets up state space
        self.state = 0
        self.current_steps = 0
            
        # gymnasium stuff 
        
        self.observation_space = gym.spaces.Box(-np.inf,np.inf,shape=(1,),dtype=float)
        self.action_space = gym.spaces.Box(-1.0,1.0,shape=(1,),dtype=float)

        
        
    def step(self,
             action):
        # reminder of the Gym-style API
        # state, reward = env.step(action)
        # why no dones? not a terminating MDP
        reward = 0
        if self.state == self.long_length:
            # If at long hallway end, gives reward and returns to beginning
            reward = self.long_length*2 
            self.state = 0
        elif -self.state == self.short_length:
            # If at short hallway end, give reward return to beginning
            reward = self.short_length
            self.state = 0
        elif self.state == 0:
            # if at sarting state, moves agent left or right
            if action >= 0:
                # moves right
                self.state = 1
            else:
                # moves left
                self.state = -1
        else:
            # handles all the cases where action is irrelevant
            if self.state > 0:
                self.state += 1
            else:
                self.state -= 1
            

        
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
        
        obs = np.array((self.state + 0.0,))

        return obs, {}
    

gym.register(
    id="Crossroad",
    entry_point=Crossroad,
)