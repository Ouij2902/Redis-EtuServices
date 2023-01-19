# -*- coding: utf-8 -*-
"""
Created on Wed Jan 18 14:22:07 2023

@author: ouijdane
"""

import redis
import sys

r = redis.Redis('localhost', 6379, charset="utf-8", decode_responses=True)
user = sys.argv[1]

def setUserSession(user):
    r.set(f"{user}-count", 1)
    r.set(f"{user}-time", "is not expired")
    r.expire(f"{user}-time", 600)
    r.set(user, 1)

def getUserSession(user):
    return {"timeout" : r.get(f"{user}-time"), "count" : r.get(f"{user}-count")}

def incrementUserSession(user):
    r.incr(f"{user}-count")

userSession = getUserSession(user)
sessionTimeout = userSession["timeout"]
sessionCount = int(userSession["count"])

if sessionTimeout == None:
       setUserSession(user)
       print(1)
else:
    if sessionCount < 10:
        incrementUserSession(user)
        print(sessionCount + 1)
    else:
        print(f"Vous ne pouvez pas vous connecter plus que ça , réessayez dans quelques minutes")
        
sys.exit(8)
        

