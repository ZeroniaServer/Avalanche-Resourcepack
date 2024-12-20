# Down cast to the floor
tp @s ~ ~ ~
data modify storage iris:settings Blacklist set value "#game:air"
data modify storage iris:settings MaxRecursionDepth set value 16
execute at @s anchored feet rotated 0 90 positioned ^ ^ ^ store result score $raydist CmdData run function iris:get_target

# If we are within a block of the floor, tp down there
execute unless data storage iris:output {TargetType:"NONE"} run function iris:set_coordinates/main

execute if entity @s[distance=..0.05] unless data storage iris:output {TargetType:"NONE"} run scoreboard players set $aboveground CmdData 0