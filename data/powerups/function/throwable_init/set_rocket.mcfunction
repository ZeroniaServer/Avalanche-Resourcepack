data merge entity @s {Item:{id:"air"}}

# calculate rotation based on snowball motion
data modify storage avalanche:rocket mot set from entity @s Motion
data modify storage avalanche:rocket motX set from storage avalanche:rocket mot[0]
data modify storage avalanche:rocket motY set from storage avalanche:rocket mot[1]
data modify storage avalanche:rocket motZ set from storage avalanche:rocket mot[2]
execute positioned 0 0 0 summon marker run function powerups:throwable_init/calc_rotation with storage avalanche:rocket
data modify storage avalanche:rocket rotX set from storage avalanche:rocket rot[0]
data modify storage avalanche:rocket rotY set from storage avalanche:rocket rot[1]
execute on passengers if entity @s[tag=RocketGreen] run data modify storage avalanche:rocket c set value 3
execute on passengers if entity @s[tag=RocketRed] run data modify storage avalanche:rocket c set value 4
execute on passengers at @s run function powerups:throwable_init/spawn_rocket with storage avalanche:rocket