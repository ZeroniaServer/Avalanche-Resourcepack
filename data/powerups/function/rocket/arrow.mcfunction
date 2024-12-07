scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] on vehicle run data merge entity @s {NoGravity:1b}
execute if entity @s[scores={lifetime=15}] on vehicle run data merge entity @s {NoGravity:0b}
execute at @s[scores={lifetime=1}] run playsound entity.firework_rocket.launch master @a ~ ~ ~ 1 0.8
execute at @s[scores={lifetime=1}] run particle cloud ~ ~ ~ 0 0 0 0.1 5 force
execute at @s[scores={lifetime=1..}] run particle firework ~ ~ ~ 0 0 0 0.02 1 force
execute at @s[tag=RocketGreen,scores={lifetime=1..}] run particle dust{color:[0.000,1.000,0.000],scale:0.6} ~ ~ ~ 0 0 0 0 1 force
execute at @s[tag=RocketRed,scores={lifetime=1..}] run particle dust{color:[1.000,0.000,0.000],scale:0.6} ~ ~ ~ 0 0 0 0 1 force

# calculate rotation based on snowball motion
execute on vehicle run data modify storage avalanche:rocket mot set from entity @s Motion
execute summon marker run function powerups:throwable_init/calc_rotation
execute on passengers run data modify entity @s Rotation set from storage avalanche:rocket rot

execute at @s if predicate game:green_base run tag @s add BasePrevention
execute at @s if predicate game:red_base run tag @s add BasePrevention
execute at @s[scores={lifetime=20..},tag=!BasePrevention] run function powerups:rocket/explosion
execute as @s[tag=BasePrevention] on vehicle run kill @s
execute as @s[tag=BasePrevention] on passengers run kill @s
execute as @s[tag=BasePrevention] run kill @s