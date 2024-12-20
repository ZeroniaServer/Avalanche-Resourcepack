scoreboard players set $aboveground CmdData 0

execute at @s positioned ~ ~ ~ if entity @e[type=shulker,tag=GiftboxShulker,distance=..0.9] run return run kill
execute at @s positioned ~ ~-0.5 ~ if entity @e[type=shulker,tag=cfcollision,distance=..1] run return run kill
execute at @s positioned ~ ~-0.5 ~ if entity @e[type=oak_boat,tag=!thisboat,distance=..0.5] run return run kill

# Down cast to the floor
data modify storage iris:settings Blacklist set value "#game:air"
data modify storage iris:settings MaxRecursionDepth set value 30
execute at @s anchored feet rotated 0 90 positioned ^ ^ ^ store result score $raydist CmdData run function iris:get_target

# If we are within a block of the floor, tp down there
execute unless data storage iris:output {TargetType:"NONE"} run function iris:set_coordinates/main

execute if entity @s[distance=0.1..] run scoreboard players set $aboveground CmdData 1
kill @s