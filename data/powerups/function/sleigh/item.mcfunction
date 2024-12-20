tag @s[tag=!init] add init
tag @p[team=!Lobby,team=!Spectator,team=!Developer,tag=!Knockout,distance=..2] add giveSleigh
data modify entity @s Owner set from entity @p[tag=giveSleigh] UUID
data modify entity @s Thrower set from entity @p[tag=giveSleigh] UUID
execute if entity @p[tag=giveSleigh] run data merge entity @s {PickupDelay:5}
execute if entity @p[tag=giveSleigh] run tag @s remove SleighItem