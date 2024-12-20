scoreboard players set $aboveground CmdData 0

# Down cast to the floor
data modify storage iris:settings Blacklist set value "#game:air"
data modify storage iris:settings MaxRecursionDepth set value 30
execute at @s anchored feet rotated 0 90 positioned ^ ^ ^ store result score $raydist CmdData run function iris:get_target

# If we are within a block of the floor, tp down there
execute unless data storage iris:output {TargetType:"NONE"} run function iris:set_coordinates/main

execute if entity @s[distance=0.1..] run scoreboard players set $aboveground CmdData 1
execute at @s if score $raydist CmdData matches ..1000000 if entity @e[type=shulker,tag=GiftboxShulker,distance=..1] run scoreboard players set $aboveground CmdData 0
execute at @s if score $raydist CmdData matches ..1000000 positioned ~ ~-0.5 ~ if entity @e[type=shulker,tag=cfcollision,distance=..1] run scoreboard players set $aboveground CmdData 0
execute at @s if score $raydist CmdData matches ..1000000 if entity @e[type=oak_boat,tag=!thisboat,distance=..1] run scoreboard players set $aboveground CmdData 0
tellraw @a [{"score":{"name":"$aboveground","objective":"CmdData"}}]
kill @s