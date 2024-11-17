data merge entity @s {Item:{id:"air"}}

# calculate rotation based on snowball motion
data modify storage avalanche:rocket mot set from entity @s Motion
execute positioned 0 0 0 summon marker run function powerups:throwable_init/calc_rotation
data modify storage avalanche:rocket rotX set from storage avalanche:rocket rot[0]
data modify storage avalanche:rocket rotY set from storage avalanche:rocket rot[1]
execute on passengers if entity @s[tag=RocketGreen] run data modify storage avalanche:rocket c set value 3
execute on passengers if entity @s[tag=RocketRed] run data modify storage avalanche:rocket c set value 4
execute on passengers at @s run function powerups:throwable_init/spawn_rocket_display with storage avalanche:rocket